package com.kh.tour.member.model.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.kh.tour.member.model.mapper.MemberMapper;
import com.kh.tour.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberMapper mapper;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder; // SHA-256 Hash code 알고리즘 활용 객체 (일방향 암호화)


	@Override
	public Member login(String id, String pwd) {
		Member member = this.findById(id);
		if(member == null) {
			return null;
		}
		
		// passwordEncoder 활용법
		System.out.println(member.getUserPassword()); // Hash 코드로 암호화된 비밀번호가 저장되어있음
		System.out.println(passwordEncoder.encode(pwd)); // encode를 통해 평문에서 암호문으로 변경
		System.out.println(passwordEncoder.matches(pwd, member.getUserPassword())); 
			// 파라메터로 받아온 pwd를 암호화하고 기존 암호화된 비밀번호와 비교하는 코드
		
		if(id.equals("admin")) { // admin일 경우 테스트를 위해 비밀번호 확인하지 않음
			return member;
		}
		
		if(member != null && passwordEncoder.matches(pwd, member.getUserPassword()) == true) {
			// 성공일때!
			return member;
		}else {
			// 인증 실패하였을때
			return null;
		}
	}

	// @Transactional : DB 트랜잭션 관리를 위한 어노테이션. 만일 오류 발생할시 자동으로 롤백을 지원하고, 아니면 커밋
	// (rollbackFor = Exception.class) : 사용하지 않은 경우! 트랜잭션 관리기능이 작동하지 않음!!
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public int save(Member member) {
		int result = 0;
		
		if(member.getUserNo() == 0) {
			String encodePwd = passwordEncoder.encode(member.getUserPassword());
			member.setUserPassword(encodePwd);
			result = mapper.insertMember(member);
		}else {
			result = mapper.updateMember(member);
		}
		
		return result;
	}


	@Override
	public boolean validate(String userId) {
		return this.findById(userId) != null;
	}


	@Override
	public Member findById(String id) {
		return mapper.selectMember(id);
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int delete(int no) {
		return mapper.deleteMember(no);
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int updatePwd(Member loginMember, String userPwd) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("no", "" + loginMember.getUserNo());
		map.put("newPwd", passwordEncoder.encode(userPwd));
		return mapper.updatePwd(map);
	}

	@Override
	public String getAccessToken(String authorize_code) {
		String access_Token = "";
		String refresh_Token = "";
		String reqURL = "https://kauth.kakao.com/oauth/token";

		try {
			URL url = new URL(reqURL);
            
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			// POST 요청을 위해 기본값이 false인 setDoOutput을 true로
            
			conn.setRequestMethod("POST");
			conn.setDoOutput(true);
			// POST 요청에 필요로 요구하는 파라미터 스트림을 통해 전송
            
			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
			StringBuilder sb = new StringBuilder();
			sb.append("grant_type=authorization_code");
            
			sb.append("&client_id=cd8b1886f132139b606ba3a3939880a9"); //본인이 발급받은 key
			sb.append("&redirect_uri=http://localhost:82/kakao/callback"); // 본인이 설정한 주소
            
			sb.append("&code=" + authorize_code);
			bw.write(sb.toString());
			bw.flush();
            
            
			// 요청을 통해 얻은 JSON타입의 Response 메세지 읽어오기
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line = "";
			String result = "";
            
			while ((line = br.readLine()) != null) {
				result += line;
			}
			System.out.println("response body : " + result);
            
			// Gson 라이브러리에 포함된 클래스로 JSON파싱 객체 생성
			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);
            
			access_Token = element.getAsJsonObject().get("access_token").getAsString();
			refresh_Token = element.getAsJsonObject().get("refresh_token").getAsString();
            
			System.out.println("access_token : " + access_Token);
			System.out.println("refresh_token : " + refresh_Token);
            
			br.close();
			bw.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return access_Token;
	}

	@Override
	public Member getUserInfo(String access_Token) {
		Member userInfo = new Member();
		String reqURL = "https://kapi.kakao.com/v2/user/me";
		try {
			URL url = new URL(reqURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Authorization", "Bearer " + access_Token);
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line = "";
			String result = "";
			while ((line = br.readLine()) != null) {
				result += line;
			}
			System.out.println("response body : " + result);
			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);
			JsonObject properties = element.getAsJsonObject().get("properties").getAsJsonObject();
			JsonObject kakao_account = element.getAsJsonObject().get("kakao_account").getAsJsonObject();
			String nickname = properties.getAsJsonObject().get("nickname").getAsString();
			String email = kakao_account.getAsJsonObject().get("email").getAsString();
			userInfo.setUserName(nickname);
			// 카카오로그인 기능은 무조건 일반로그인으로 하지못하게끔 하기 위해서 비밀번호 설정
			userInfo.setUserPassword("SKDFKSDM256SDFJMDSF4321DSF195@@@");
			userInfo.setUserEmail(email);
		} catch (IOException e) {
			e.printStackTrace();
		}
			Member kakaoMember = mapper.selectMember(userInfo.getUserEmail());
			if(kakaoMember == null) {
			int result = mapper.insertKakaoMemeber(userInfo);
			System.out.println(result);
			}
			
			return mapper.selectMember(userInfo.getUserEmail());
	}
}


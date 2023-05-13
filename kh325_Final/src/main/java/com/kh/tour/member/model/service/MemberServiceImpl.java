package com.kh.tour.member.model.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.kh.tour.common.util.PageInfo;
import com.kh.tour.member.model.mapper.MemberMapper;
import com.kh.tour.member.model.vo.Bookmark;
import com.kh.tour.member.model.vo.Member;
import com.kh.tour.member.model.vo.MyCommunity;
import com.kh.tour.member.model.vo.MemMyCourse;
import com.kh.tour.member.model.vo.Review;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberMapper mapper;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder; // SHA-256 Hash code 알고리즘 활용 객체 (일방향 암호화)


	@Override
	public Member login(String userEmail, String userPassword) {
		Member member = this.findByEmail(userEmail);
		if(member == null) {
			return null;
		}
		
		// passwordEncoder 활용법
//		System.out.println(member.getUserPassword()); // Hash 코드로 암호화된 비밀번호가 저장되어있음
//		System.out.println(passwordEncoder.encode(userPassword)); // encode를 통해 평문에서 암호문으로 변경
//		System.out.println(passwordEncoder.matches(userPassword, member.getUserPassword())); 
			// 파라메터로 받아온 pwd를 암호화하고 기존 암호화된 비밀번호와 비교하는 코드
		
		if(userEmail.equals("admin")) { // admin일 경우 테스트를 위해 비밀번호 확인하지 않음
			return member;
		}
		
		if(member != null && passwordEncoder.matches(userPassword, member.getUserPassword()) == true) {
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
	public boolean validate(String userEmail) {
		return this.findByEmail(userEmail) != null;
	}


	@Override
	public Member findByEmail(String userEmail) {
		return mapper.selectMember(userEmail);
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int delete(int userNo) {
		return mapper.deleteMember(userNo);
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int updatePwd(Member loginMember, String userPassword) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("no", "" + loginMember.getUserNo());
		map.put("newPwd", passwordEncoder.encode(userPassword));
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
//			System.out.println("response body : " + result);
            
			// Gson 라이브러리에 포함된 클래스로 JSON파싱 객체 생성
			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);
            
			access_Token = element.getAsJsonObject().get("access_token").getAsString();
			refresh_Token = element.getAsJsonObject().get("refresh_token").getAsString();
            
//			System.out.println("access_token : " + access_Token);
//			System.out.println("refresh_token : " + refresh_Token);
            
			br.close();
			bw.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return access_Token;
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
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
//			System.out.println("response body : " + result);
			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);
			JsonObject properties = element.getAsJsonObject().get("properties").getAsJsonObject();
			JsonObject kakao_account = element.getAsJsonObject().get("kakao_account").getAsJsonObject();
			String nickname = properties.getAsJsonObject().get("nickname").getAsString();
			String email = kakao_account.getAsJsonObject().get("email").getAsString();
			userInfo.setUserName(nickname);
			// 카카오로그인 기능은 무조건 일반로그인으로 하지못하게끔 하기 위해서 비밀번호 설정
			userInfo.setUserPassword("SKDFKSDM256SDFJM#$%#$DSF4321DSF195@@@");
			userInfo.setUserEmail(email);
			
			Member kakaoMember = mapper.selectMember(userInfo.getUserEmail());
//			System.out.println("kakaoMember : " + kakaoMember);
			if(kakaoMember == null) {
			int result1 = mapper.insertKakaoMember(userInfo);
//			System.out.println("인서트할게요 !");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		
			
				
			
			
			return mapper.selectMember(userInfo.getUserEmail());
	}
	
	

	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public int deleteBookmark(int likeNo) {
		return mapper.deleteBookmark(likeNo);
	}

	@Override
	public List<Review> review(int userNo) {
		return mapper.review(userNo);
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int deleteReview(int reviewNo) {
		return mapper.deleteReview(reviewNo);
	}

	@Override
	public List<MyCommunity> community(PageInfo pageInfo, Map<String,String> map) {
		
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());
		String sortBy = map.get("sortBy");
		
		if(sortBy != null) {
			if(sortBy.equals("COMM_FREEBOARD")) {
				return mapper.communityFreeboard(rowBounds, map);
			}
			if(sortBy.equals("COMM_COMPANION")) {
				return mapper.communityCompanion(rowBounds, map);
			}
			if(sortBy.equals("COMM_JOURNEY")) {
				return mapper.communityJourney(rowBounds, map);
			}
		}
		
		return null;
		
		//return mapper.community(rowBounds,userNo);
	}
	
	@Override
	public int selectBoardCount(Map<String,String>map) {
		
		String sortBy = map.get("sortBy");
		
		if(sortBy != null) {
			if(sortBy.equals("COMM_FREEBOARD")) {
				return mapper.selectFreeBoardCount(map);
			}
			if(sortBy.equals("COMM_COMPANION")) {
				return mapper.selectCompBoardCount(map);
			}
			if(sortBy.equals("COMM_JOURNEY")) {
				return mapper.selectJourneyBoardCount(map);
			}
		}
		
		return 0;
		
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int deleteCommunity(int freeboardNo) {
		return mapper.deleteCommunity(freeboardNo);
	}

	@Override
	public List<MemMyCourse> mycourse(int userNo) {
		return mapper.mycourse(userNo);
	}
	
	@Override
	public String saveFile(MultipartFile upfile, String savePath) {
		File folder = new File(savePath);
		if(folder.exists() == false) {
			folder.mkdir();
		}
		
		System.out.println("savePath : " + savePath);
		
		String originalFileName = upfile.getOriginalFilename();
		String reNameFileName = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd_HHmmssSSS"))
				+ originalFileName.substring(originalFileName.lastIndexOf("."));
		
		String reNamePath = savePath + "/" + reNameFileName;
		
		try {
			upfile.transferTo(new File(reNamePath));
		} catch (Exception e) {
			return null;
		}
		
		return reNameFileName;
	}
	@Override
	public List<Bookmark> bookmark(PageInfo pageInfo, Map<String, String> param, int userNo) {
	
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());
		
		return mapper.bookmark(rowBounds, userNo);
	}

	@Override
	public int countBookmark(int userNo) {
		return mapper.countBookmark(userNo);
	}


}


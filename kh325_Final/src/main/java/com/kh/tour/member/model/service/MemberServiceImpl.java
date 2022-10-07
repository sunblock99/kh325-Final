package com.kh.tour.member.model.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
		System.out.println(member.getPassword()); // Hash 코드로 암호화된 비밀번호가 저장되어있음
		System.out.println(passwordEncoder.encode(pwd)); // encode를 통해 평문에서 암호문으로 변경
		System.out.println(passwordEncoder.matches(pwd, member.getPassword())); 
			// 파라메터로 받아온 pwd를 암호화하고 기존 암호화된 비밀번호와 비교하는 코드
		
		if(id.equals("admin")) { // admin일 경우 테스트를 위해 비밀번호 확인하지 않음
			return member;
		}
		
		if(member != null && passwordEncoder.matches(pwd, member.getPassword()) == true) {
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
		
		if(member.getNo() == 0) {
			String encodePwd = passwordEncoder.encode(member.getPassword());
			member.setPassword(encodePwd);
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
		map.put("no", "" + loginMember.getNo());
		map.put("newPwd", passwordEncoder.encode(userPwd));
		return mapper.updatePwd(map);
	}
}

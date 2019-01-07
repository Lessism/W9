package com.lessism.w9.dao;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lessism.w9.vo.MemberVO;

@Service
public class MemberDAO {
	
	@Autowired
	@Resource(name="sqlSession")
	private SqlSession db = null;
	
	
//  회원가입
	public int Join(MemberVO mvo) {
		return db.insert("Member.join", mvo);
	}
	
//  회원탈퇴
	public int Withdrawal(MemberVO mvo) {
		return db.delete("Member.withdrawal", mvo);
	}
	
//  회원정보수정
	public int InfoUpd(MemberVO mvo) {
		return db.update("Member.update", mvo);
	}
	
//  로그인
	public MemberVO Login(MemberVO mvo) {
		return db.selectOne("Member.login", mvo);
	}
	
}

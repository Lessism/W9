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
	
	public int Join(MemberVO mvo) {
		return db.insert("Member.join", mvo);
	}
	public MemberVO Login(MemberVO mvo) {
		return db.selectOne("Member.login", mvo);
	}
}

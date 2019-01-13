package com.lessism.w9.dao;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.lessism.w9.vo.MemberVO;

public class SecurityDAO implements UserDetailsService {
	
	@Autowired
	private SqlSession db;
	private HttpSession session;
	private MemberVO mvo;
	
	public SecurityDAO(SqlSession db) {
		super();
		this.db = db;
	}
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		mvo.setId(username);
		session.setAttribute("info", db.selectOne("Member.login", mvo));
		return null;
	}
}

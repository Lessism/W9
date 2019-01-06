package com.lessism.w9.dao;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardDAO {
	
	@Autowired
	@Resource(name="sqlSession")
	private SqlSession db = null;
	
	

}

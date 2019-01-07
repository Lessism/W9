package com.lessism.w9.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lessism.w9.vo.BoardVO;

@Service
public class BoardDAO {
	
	@Autowired
	@Resource(name="sqlSession")
	private SqlSession db = null;
	
	
//  게시글 작성
	public int write(BoardVO bvo) {
		return db.insert("Board.write", bvo);
	}
	
//  게시글 목록
	public List<BoardVO> list() {
		return db.selectList("Board.list");
	}

}

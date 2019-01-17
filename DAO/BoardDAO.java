package com.lessism.w9.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lessism.w9.vo.BoardVO;
@Service
public class BoardDAO {
	
	@Autowired
	private SqlSession db;
	
	
//	게시글 작성
	public int write(BoardVO bvo) {
		return db.insert("Board.write", bvo);
	}
	
//	게시글 수정
	public int update(BoardVO bvo) {
		return db.update("Board.update", bvo);
	}
	
//	게시글 삭제
	public int delete(int no) {
		return db.delete("Board.delete", no);
	}
	
//	게시글 목록
	public List<BoardVO> list(Map<String, Object> map) {
		return db.selectList("Board.list", map);
	}
	
//	게시글 내용
	public BoardVO content(int no) {
		return db.selectOne("Board.content", no);
	}
	
//	이전글, 다음글
	public String prevnext(Map<String, Object> map) {
		return db.selectOne("Board.prevnext", map);
	}
	
//	총 게시물
	public int totalPost(Map<String, Object> map) {
		return db.selectOne("Board.totalpost", map);
	}
}

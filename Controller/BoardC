package com.lessism.w9;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lessism.w9.dao.BoardDAO;

@Controller
@RequestMapping("/board")
public class BoardC {
	
	@Autowired
	private BoardDAO bdao = null;
	
	
	@RequestMapping(value="/board.w9")
	public String Board() {
		return "/board/board";
	}
	@RequestMapping(value="/write.w9")
	public String Write() {
		return "/board/write";
	}

}

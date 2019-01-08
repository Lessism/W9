package com.lessism.w9;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.lessism.w9.dao.BoardDAO;
import com.lessism.w9.vo.BoardVO;
import com.lessism.w9.vo.MemberVO;

@Controller
@RequestMapping("/board")
public class BoardC {
	
	@Autowired
	private BoardDAO bdao = null;
	
//  게시글 목록
	@RequestMapping(value="/list.w9")
	public ModelAndView list() {
		return new ModelAndView("/board/list", "list", bdao.list());
	}
	
	
// 게시글 작성
	@RequestMapping(value="/write.w9", method=RequestMethod.GET)
	public ModelAndView write(@SessionAttribute("info") MemberVO mvo, BoardVO bvo) {
		bvo.setWriter(mvo.getNick());
		return new ModelAndView("/board/write", "bvo", bvo);
	}
	
	@RequestMapping(value="/write.w9", method=RequestMethod.POST)
	public String write(@ModelAttribute("bvo") BoardVO bvo) {
		bdao.write(bvo);
		return "redirect:/board/list.w9";
	}
	
	
//  게시글 내용
	@RequestMapping(value="/content.w9", method=RequestMethod.GET)
	public ModelAndView content(@RequestParam("no") int no, BoardVO bvo) {
		bvo = bdao.content(no);
		return new ModelAndView("/board/content", "bvo", bvo);
	}
	
	
//  게시글 수정
	@RequestMapping(value="/update.w9", method=RequestMethod.POST)
	public String update(@ModelAttribute("bvo") BoardVO bvo) {
		bdao.update(bvo);
		return "redirect:/board/list.w9";
	}
	
	
//  게시글 삭제
	@RequestMapping(value="/delete.w9", method=RequestMethod.GET)
	public String delete(@RequestParam("no") int no) {
		bdao.delete(no);
		return "redirect:/board/list.w9";
	}
}

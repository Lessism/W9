package com.lessism.w9;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.lessism.w9.dao.MemberDAO;
import com.lessism.w9.vo.MemberVO;

@Controller
@RequestMapping("/member")
public class MemberC {
	
	@Autowired
	private MemberDAO mdao = null;
	
	
//  회원가입, 회원탈퇴
	@RequestMapping(value="/join.w9", method=RequestMethod.GET)
	public ModelAndView join() {
		return new ModelAndView("member/join", "mvo", new MemberVO());
	}
	
	@RequestMapping(value="/join.w9", method=RequestMethod.POST)
	public String Join(@ModelAttribute("mvo") MemberVO mvo, HttpSession session) {
		mdao.join(mvo);
		mvo = mdao.login(mvo);
		session.setAttribute("login", 1);
		session.setAttribute("info", mvo);
		return "redirect:/";
	}
	
	@RequestMapping(value="withdrawal.w9")
	public String Withdrawal(@SessionAttribute("info") MemberVO mvo, HttpSession session) {
		mdao.delete(mvo);
		session.invalidate();
		return "redirect:/";
	}
	
	
//  회원정보, 회원정보수정
	@RequestMapping(value="/info.w9", method=RequestMethod.GET)
	public ModelAndView info(@SessionAttribute("info") MemberVO mvo) {
		return new ModelAndView("member/info", "mvo", mvo);
	}
	
	@RequestMapping(value="/info.w9", method=RequestMethod.POST)
	public String info(@ModelAttribute MemberVO mvo, HttpSession session) {
		mdao.update(mvo);
		session.setAttribute("info", mvo);
		return "redirect:/";
	}
	
	
//  로그인
	@RequestMapping(value="/login.w9", method=RequestMethod.GET)
	public ModelAndView Login() {
		return new ModelAndView("member/login", "mvo", new MemberVO());
	}
}

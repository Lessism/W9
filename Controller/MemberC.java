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
	public ModelAndView Join() {
		return new ModelAndView("member/join", "mvo", new MemberVO());
	}
	
	@RequestMapping(value="/join.w9", method=RequestMethod.POST)
	public String Join(@ModelAttribute("mvo") MemberVO mvo, HttpSession session) {
		mdao.Join(mvo);
		mvo = mdao.Login(mvo);
		session.setAttribute("login", true);
		session.setAttribute("minfo", mvo);
		return "redirect:/";
	}
	
	@RequestMapping(value="withdrawal.w9")
	public String Withdrawal(@SessionAttribute("minfo") MemberVO mvo, HttpSession session) {
		mdao.Withdrawal(mvo);
		session.invalidate();
		return "redirect:/";
	}
	
	
//  회원정보, 회원정보수정
	
	@RequestMapping(value="/info.w9", method=RequestMethod.GET)
	public ModelAndView info(@SessionAttribute("minfo") MemberVO mvo) {
		return new ModelAndView("member/info", "mvo", mvo);
	}
	
	@RequestMapping(value="/info.w9", method=RequestMethod.POST)
	public String info(@ModelAttribute MemberVO mvo, HttpSession session) {
		mdao.InfoUpd(mvo);
		session.setAttribute("minfo", mvo);
		return "redirect:/";
	}
	
	
//  로그인, 로그아웃
	
	@RequestMapping(value="/login.w9", method=RequestMethod.GET)
	public ModelAndView Login() {
		return new ModelAndView("member/login", "mvo", new MemberVO());
	}
	
	@RequestMapping(value="/login.w9", method=RequestMethod.POST)
	public String Login(@ModelAttribute("mvo") MemberVO mvo, HttpSession session) {
		MemberVO rmvo = mdao.Login(mvo);
		if (rmvo != null) {
			session.setAttribute("login", true);
			session.setAttribute("minfo", rmvo);
			return "redirect:/";
		} else {
			return "redirect:/member/login.w9";
		}
	}
	
	@RequestMapping(value="/logout.w9")
	public String Logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
}

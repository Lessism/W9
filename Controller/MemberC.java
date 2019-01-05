package com.lessism.w9;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lessism.w9.dao.MemberDAO;
import com.lessism.w9.vo.MemberVO;

@Controller
@RequestMapping("/member")
public class MemberC {
	
	@Autowired
	private MemberDAO mdao = null;
	
	@RequestMapping(value="/join.w9", method=RequestMethod.GET)
	public ModelAndView Join() {
		return new ModelAndView("member/join", "mvo", new MemberVO());
	}
	@RequestMapping(value="/join.w9", method=RequestMethod.POST)
	public String Join(@ModelAttribute("mvo") MemberVO mvo) {
		mdao.Join(mvo);
		return "redirect:/";
	}
}

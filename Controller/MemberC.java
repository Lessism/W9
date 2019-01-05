package com.lessism.w9;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/member")
public class MemberC {
	
	@RequestMapping(value="/join.w9", method=RequestMethod.GET)
	public String Join() {
		return "member/join";
	}
}
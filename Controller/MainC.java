package com.lessism.w9;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainC {
	
	private static final Logger logger = LoggerFactory.getLogger(MainC.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
		public String home(Locale locale, Model model) {
			logger.info("Welcome home! The client locale is {}.", locale);
			Date date = new Date();
			DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
			String formattedDate = dateFormat.format(date);
			model.addAttribute("serverTime", formattedDate );
			return "main";
		}
	@ExceptionHandler(PageNotFoundException.class)
	public String pagenot() {
		return "shop/pagenotfound";
	}
	@RequestMapping(value="/{path}", method=RequestMethod.GET)
	public String home(@PathVariable("path") String path) {
			throw new PageNotFoundException();
	}
}

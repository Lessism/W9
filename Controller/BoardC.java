package com.lessism.w9;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	private BoardDAO bDAO = null;
	
	
//	게시글 목록
		@RequestMapping(value="/list.w9")
		public ModelAndView list(@RequestParam("page") int page, Model model) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("set", (page-1)*10);
			map.put("end", 10);
			model.addAttribute("totalpage", (bDAO.totalPost()-1)/10+1);
			return new ModelAndView("/board/list", "list", bDAO.list(map));
		}
		
		
//	게시글 작성
		@RequestMapping(value="/write.w9", method=RequestMethod.GET)
		public ModelAndView write(@SessionAttribute("info") MemberVO mvo, BoardVO bvo) {
			bvo.setWriter(mvo.getNick());
			return new ModelAndView("/board/write", "bvo", bvo);
		}
		
		@RequestMapping(value="/write.w9", method=RequestMethod.POST)
		public String write(@ModelAttribute("bvo") BoardVO bvo) {
			bDAO.write(bvo);
			return "redirect:/board/list.w9?page=1";
		}
		
		
// 	게시글 내용
		@RequestMapping(value="/content.w9", method=RequestMethod.GET)
		public ModelAndView content(@RequestParam("no") int no, BoardVO bvo) {
			bvo = bDAO.content(no);
			return new ModelAndView("/board/content", "bvo", bvo);
		}
		
		
//	게시글 수정
		@RequestMapping(value="/update.w9", method=RequestMethod.POST)
		public String update(@ModelAttribute("bvo") BoardVO bvo) {
			bDAO.update(bvo);
			return "redirect:/board/list.w9?page=1";
		}
		
		
//	게시글 삭제
		@RequestMapping(value="/delete.w9", method=RequestMethod.GET)
		public String delete(@RequestParam("no") int no) {
			bDAO.delete(no);
			return "redirect:/board/list.w9?page=1";
		}
		
//	이전글, 다음글
		@RequestMapping(value={"/prev.w9", "/next.w9"}, method=RequestMethod.GET)
		public String prevnext(@RequestParam Map<String, Object> map) {
			if (map.get("prevno") != null) {
				map.put("minmax", "MAX");
				map.put("sign", "<");
				map.put("no", map.get("prevno"));
			}
			if (map.get("nextno") != null) {
				map.put("minmax", "MIN");
				map.put("sign", ">");
				map.put("no", map.get("nextno"));
			}
			if (bDAO.prevnext(map) == null) {
				return "redirect:/board/list.w9?page=1";
			}
			return "redirect:/board/content.w9?no="+bDAO.prevnext(map);
		}
}

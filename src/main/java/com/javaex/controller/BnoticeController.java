package com.javaex.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaex.service.NoticeService;
import com.javaex.vo.NoticeVo;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping("/notice")
public class BnoticeController {

	@Autowired
	NoticeService noticeService;

	// 리스트
	@RequestMapping(value = "/list2", method = { RequestMethod.GET, RequestMethod.POST })
	public String list2(Model model) {
		System.out.println("[Controller]:list2");

		List<NoticeVo> nList = noticeService.list2();

		model.addAttribute("nList", nList);

		return "ban/notice/list2";
	}

	// 리스트 + 검색 기능
	@RequestMapping(value = "/list1", method = { RequestMethod.GET, RequestMethod.POST })
	public String list1(@RequestParam(value = "keyword", required = false, defaultValue = "") String keyword,
			Model model) {
		System.out.println("[Controller]:list1");
		// System.out.println("keyword=" + keyword);

		List<NoticeVo> nList = noticeService.list1(keyword);
		model.addAttribute("nList", nList);

		return "ban/notice/list1";
	}

	// 리스트 + 검색 기능 + 페이징
	@RequestMapping(value = "/list", method = { RequestMethod.GET, RequestMethod.POST })
	public String list(@RequestParam(value = "keyword", required = false, defaultValue = "") String keyword,
			@RequestParam(value = "crtPage", required = false, defaultValue = "1") int crtPage, Model model) {
		System.out.println("[Controller]:list");
		System.out.println("keyword=" + keyword);
		System.out.println("crtPage=" + crtPage);

		Map<String, Object> pMap = noticeService.list(keyword, crtPage);
		System.out.println(pMap);

		model.addAttribute("pMap", pMap);

		return "ban/notice/list";
	}

	@RequestMapping(value = "/write", method = { RequestMethod.GET, RequestMethod.POST })
	public String write(@ModelAttribute NoticeVo noticeVo, HttpSession session) { // HttpSession session
		System.out.println("[Controller]:write");

		//세션에서 사용자 정보 가져오기
		UserVo authVo = (UserVo)session.getAttribute("authUser");
		System.out.println(authVo.getNo());
		//Vo에 no담기
		int no = authVo.getNo(); 
		noticeVo.setNo(no);

		noticeService.write(noticeVo);

		return "redirect:/notice/list";
	}

	@RequestMapping(value = "/writeForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String writeForm(HttpSession session) {
		System.out.println("[Controller]:writeForm");
		
		System.out.println(session.getAttribute("authUser"));
		return "ban/notice/writeForm";
	}

	@RequestMapping(value = "/remove", method = { RequestMethod.GET, RequestMethod.POST })
	public String remove(int no) { // @RequestParam("no")
		System.out.println("[controller]:remove");

		noticeService.remove(no);

		return "redirect:/notice/list";
	}

	@RequestMapping(value = "/modify", method = { RequestMethod.GET, RequestMethod.POST })
	public String modify(@ModelAttribute NoticeVo noticeVo) {
		System.out.println("[Controller]:modify");
		noticeService.modify(noticeVo);

		return "redirect:/notice/list";
	}

	@RequestMapping(value = "/modifyForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String modifyForm(@RequestParam("no") int no, Model model) {
		System.out.println("[Controller]:modifyForm");

		NoticeVo noticeVo = noticeService.modifyForm(no);
		model.addAttribute("noticeVo", noticeVo);
		return "ban/notice/modifyForm";
	}

	@RequestMapping(value = "/read", method = { RequestMethod.GET, RequestMethod.POST })
	public String read(@RequestParam("no") int no, Model model) {
		System.out.println("[Controller]:read");

		NoticeVo noticeVo = noticeService.read(no);
		model.addAttribute("nVo", noticeVo);

		return "ban/notice/read";
	}

	@RequestMapping(value = "/join", method = { RequestMethod.GET, RequestMethod.POST })
	public String main() {
		System.out.println("[join]");
		return "home/main/join";
	}

	@RequestMapping(value = "/indexretry", method = { RequestMethod.GET, RequestMethod.POST })
	public String login() {
		System.out.println("[login]");
		return "home/main/indexretry";
		/* return "home/main/login"; */
	}

}

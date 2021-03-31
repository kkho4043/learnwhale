package com.javaex.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.CategoryService;
import com.javaex.vo.CategoryVo;
import com.javaex.vo.ProblemVo;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping(value = "myclass/category")
public class CategoryController {

	@Autowired
	private CategoryService caService;

	
	 
	@RequestMapping(value = "problemList", method = { RequestMethod.GET, RequestMethod.POST })
	public String problemList(Model model, 
			  				  @RequestParam(value="cateNo", required = false, defaultValue = "0") int cateNo, 
			  				  HttpSession session) {
	  
		int no = ((UserVo) session.getAttribute("authUser")).getNo();
	  	model.addAttribute("cateList", caService.getCategory(no));
	  
	 	return "home/problem/problemList"; 
	}
	 

	@RequestMapping(value="delete", method = { RequestMethod.GET, RequestMethod.POST })
	public String delete(@RequestParam int cateNo) {
		
		int result = caService.delete(cateNo);
		
		return "redirect:/myclass/problem/problemList?cateNo="+cateNo+"&result="+result;
	}

	
	
	@RequestMapping(value = "/creatingForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String multipleChoice(Model model, HttpSession session) {
		System.out.println("[ProblemController.creatingForm()]");
		
		int no = ((UserVo) session.getAttribute("authUser")).getNo();

		model.addAttribute("cateList", caService.getCategory(no));

		return "home/problem/creatingForm";
	}

	@RequestMapping(value = "/main", method = { RequestMethod.GET, RequestMethod.POST })
	public String index() {
		System.out.println("[ProblemController.main()]");
		return "home/main/mainForm";
	}

	// 메인폴더생성
	@RequestMapping(value = "/addMainFolder", method = { RequestMethod.GET, RequestMethod.POST })
	public String addMainFolder(@ModelAttribute CategoryVo cateVo) {
		System.out.println("[ProblemController.addMainFolder()]");
		caService.addMainFolder(cateVo);

		return "redirect:/myclass/problem/problem-Management";
	}

	// 하위폴더생성
	@RequestMapping(value = "/addSubFolder", method = { RequestMethod.GET, RequestMethod.POST })
	public String addSubFolder(@ModelAttribute CategoryVo cateVo) {
		System.out.println("[ProblemController.addSubFolder()]");
		caService.addSubFolder(cateVo);
		return "redirect:/myclass/problem/problem-Management";
	}

	@RequestMapping(value = "/updateFolder", method = { RequestMethod.GET, RequestMethod.POST })
	public String updateFolder(@ModelAttribute CategoryVo cateVo) {
		System.out.println("[ProblemController.updateFolder()]");
		caService.updateFolder(cateVo);

		return "redirect:/myclass/problem/problem-Management";
	}

	/*
	 * // 문제관리 리스트
	 * 
	 * @RequestMapping(value = "problemList", method = { RequestMethod.GET,
	 * RequestMethod.POST }) public String problemList(Model model, HttpSession
	 * session) { System.out.println("[ProblemController.problemList()]");
	 * 
	 * int no = ((UserVo) session.getAttribute("authUser")).getNo();
	 * 
	 * model.addAttribute("cateList", caService.getCategory(no));
	 * 
	 * return "home/problem/problemList"; }
	 */
	
	
}

package com.javaex.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.dao.CategoryService;
import com.javaex.vo.ProblemVo;

@Controller
@RequestMapping(value = "api/myclass/problem")
public class CategoryController {

	@Autowired
	CategoryService caService;

	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value = "problemList", method = { RequestMethod.GET,
	 * RequestMethod.POST }) public List<ProblemVo> problemList(Model
	 * model, @RequestParam int cateNo, HttpSession session) {
	 * 
	 * int no = ((UserVo) session.getAttribute("authUser")).getNo();
	 * //caService.getCategory(1); //model.addAttribute("cateList", );
	 * 
	 * return caService.getProblem(cateNo); }
	 */

	@RequestMapping(value="delete", method = { RequestMethod.GET, RequestMethod.POST })
	public String delete(@RequestParam int cateNo) {
		
		caService.delete(cateNo);
		return "redirect:/myclass/problem/problemList";
	}

}

package com.javaex.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.javaex.service.ProblemService;
import com.javaex.vo.CategoryVo;
import com.javaex.vo.ProblemVo;

@Controller
@RequestMapping("/myclass/problem")
public class HproblemController {

	@Autowired
	private ProblemService proService;

	@RequestMapping(value = "/problem-Management", method = { RequestMethod.GET, RequestMethod.POST })
	public String problemManagement(Model model) {

		model.addAttribute("cateList", proService.getCategory(1));

		return "home/problem/problem-Management";
	}

	@RequestMapping(value = "/creatingForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String multipleChoice() {
		System.out.println("[ProblemController.creatingForm()]");
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
		proService.addMainFolder(cateVo);

		return "redirect:/myclass/problem/problem-Management";
	}

	// 하위폴더생성
	@RequestMapping(value = "/addSubFolder", method = { RequestMethod.GET, RequestMethod.POST })
	public String addSubFolder(@ModelAttribute CategoryVo cateVo) {
		System.out.println("[ProblemController.addSubFolder()]");
		proService.addSubFolder(cateVo);
		return "redirect:/myclass/problem/problem-Management";
	}

	@RequestMapping(value = "/updateFolder", method = { RequestMethod.GET, RequestMethod.POST })
	public String updateFolder(@ModelAttribute CategoryVo cateVo) {
		System.out.println("[ProblemController.updateFolder()]");
		proService.updateFolder(cateVo);

		return "redirect:/myclass/problem/problem-Management";
	}

	// 문제관리 리스트
	@RequestMapping(value = "problemList", method = { RequestMethod.GET, RequestMethod.POST })
	public String problemList(Model model, int cateNo) {
		System.out.println("[ProblemController.problemList()]");
		model.addAttribute("cateList", proService.getCategory(1));

		model.addAttribute("proList", proService.getProblem(cateNo));

		return "home/problem/problemList";
	}

	

	// 문제 작성
	@RequestMapping(value = "/creating", method = { RequestMethod.GET, RequestMethod.POST })
	public String creating(@ModelAttribute ProblemVo proVo, MultipartHttpServletRequest request,
			@RequestParam(value = "Image", required = false, defaultValue = "") MultipartFile file,
			@RequestParam(value = "Image1", required = false, defaultValue = "") MultipartFile file1,
			@RequestParam(value = "Image2", required = false, defaultValue = "") MultipartFile file2,
			@RequestParam(value = "Image3", required = false, defaultValue = "") MultipartFile file3,
			@RequestParam(value = "Image4", required = false, defaultValue = "") MultipartFile file4) {
		System.out.println("[ProblemController.creating()]");
		System.out.println("controller" + proVo.toString());
		System.out.println(file);
		System.out.println(file1 + "," + file2 + "," + file3 + "," + file4);

		Map<String, Object> map = new HashMap<String, Object>();

		map.put("file1", file1);
		map.put("file2", file2);
		map.put("file3", file3);
		map.put("file4", file4);

		proService.ProblemInsert(file, proVo, map);

		return "redirect:/myclass/problem/problemList?cateNo=" + proVo.getCateNo();
	}
	
	//문제 보기
	@RequestMapping(value = "/creating-ViewForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String creatingViewForm(Model model, int proNo) {
		System.out.println("[ProblemController.view()]");
		
		model.addAttribute("cateList", proService.getCategory(1));
		
		model.addAttribute("proVo", proService.view(proNo));
		return "home/problem/creating-ViewForm";
	}
	

	// 문제 수정
	@RequestMapping(value = "/modify", method = { RequestMethod.GET, RequestMethod.POST })
	public String modify(@ModelAttribute ProblemVo proVo, MultipartHttpServletRequest request,
			@RequestParam(value = "Image", required = false, defaultValue = "") MultipartFile file,
			@RequestParam(value = "Image1", required = false, defaultValue = "") MultipartFile file1,
			@RequestParam(value = "Image2", required = false, defaultValue = "") MultipartFile file2,
			@RequestParam(value = "Image3", required = false, defaultValue = "") MultipartFile file3,
			@RequestParam(value = "Image4", required = false, defaultValue = "") MultipartFile file4) {
		System.out.println("[ProblemController.modify()]");
		System.out.println("controller" + proVo.toString());
		System.out.println(file);
		System.out.println(file1 + "," + file2 + "," + file3 + "," + file4);

		Map<String, Object> map = new HashMap<String, Object>();

		map.put("file1", file1);
		map.put("file2", file2);
		map.put("file3", file3);
		map.put("file4", file4);

		proService.ProblemInsert(file, proVo, map);

		return "redirect:/myclass/problem/problemList?cateNo=" + proVo.getCateNo();
	}
}
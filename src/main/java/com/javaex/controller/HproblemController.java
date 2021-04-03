package com.javaex.controller;

import java.util.HashMap;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.javaex.service.ProblemService;
import com.javaex.vo.CategoryVo;
import com.javaex.vo.ChoiceVo;
import com.javaex.vo.ProblemVo;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping("/myclass/problem")
public class HproblemController {

	@Autowired
	private ProblemService proService;

	@RequestMapping(value = "/problem-Management", method = { RequestMethod.GET, RequestMethod.POST })
	public String problemManagement(Model model, HttpSession session) {

		int no = ((UserVo) session.getAttribute("authUser")).getNo();

		model.addAttribute("cateList", proService.getCategory(no));

		return "home/problem/problem-Management";
	}

	@RequestMapping(value = "/creatingForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String multipleChoice(Model model, HttpSession session) {
		System.out.println("[ProblemController.creatingForm()]");

		int no = ((UserVo) session.getAttribute("authUser")).getNo();

		model.addAttribute("cateList", proService.getCategory(no));

		return "home/problem/creatingForm";
	}

	@RequestMapping(value = "/main", method = { RequestMethod.GET, RequestMethod.POST })
	public String index() {
		System.out.println("[ProblemController.main()]");
		return "home/main/mainForm";
	}

	@RequestMapping(value = "/updateFolder", method = { RequestMethod.GET, RequestMethod.POST })
	public String updateFolder(@ModelAttribute CategoryVo cateVo) {
		System.out.println("[ProblemController.updateFolder()]");
		proService.updateFolder(cateVo);

		return "redirect:/myclass/problem/problem-Management";
	}

	// 문제관리 리스트
	@RequestMapping(value = "problemList", method = { RequestMethod.GET, RequestMethod.POST })
	public String problemList(Model model, HttpSession session, ProblemVo proVo) {
		System.out.println("[ProblemController.problemList()]");

		int no = ((UserVo) session.getAttribute("authUser")).getNo();

		model.addAttribute("proVo", proVo);

		model.addAttribute("cateList", proService.getCategory(no));

		return "home/problem/problemList";
	}

	@ResponseBody
	@RequestMapping(value = "cateproblem", method = { RequestMethod.GET, RequestMethod.POST })
	public List<ProblemVo> cateproblem(@RequestParam(value = "cateNo") int cateNo) {
		System.out.println("[ProblemController.problemList()]");
		return proService.getProblem(cateNo);
	}

	// 문제 작성
	@RequestMapping(value = "/creating", method = { RequestMethod.GET, RequestMethod.POST })
	public String creating(@ModelAttribute ProblemVo proVo, MultipartHttpServletRequest request,
			@RequestParam(value = "choiceContent", required = false, defaultValue = "") String choiceContent,
			@RequestParam(value = "Image", required = false, defaultValue = "") MultipartFile file,
			@RequestParam(value = "Image1", required = false, defaultValue = "") MultipartFile file1,
			@RequestParam(value = "Image2", required = false, defaultValue = "") MultipartFile file2,
			@RequestParam(value = "Image3", required = false, defaultValue = "") MultipartFile file3,
			@RequestParam(value = "Image4", required = false, defaultValue = "") MultipartFile file4) {
		System.out.println("[ProblemController.creating()]");
		System.out.println("controller: " + proVo.toString());

		System.out.println("초이스 스트링" + choiceContent);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("choiceContent", choiceContent);
		map.put("file1", file1);
		map.put("file2", file2);
		map.put("file3", file3);
		map.put("file4", file4);

		proService.ProblemInsert(file, proVo, choiceContent, map);

		return "redirect:/myclass/problem/problemList?cateNo=" + proVo.getCateNo();
	}

	// 문제 보기
	@RequestMapping(value = "/creating-ViewForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String creatingViewForm(Model model, HttpSession session, int proNo, ChoiceVo choVo) {
		System.out.println("[ProblemController.view()]");

		int no = ((UserVo) session.getAttribute("authUser")).getNo();

		model.addAttribute("cateList", proService.getCategory(no));

		System.out.println("22222222222222222222222:   " + proNo);
		model.addAttribute("choVo", proService.ChoiceView(proNo));
		model.addAttribute("proVo", proService.Problemview(proNo));
		return "home/problem/creating-ViewForm";
	}

	// 문제 수정
	@RequestMapping(value = "/modify", method = { RequestMethod.POST })
	public String modify(@ModelAttribute ProblemVo proVo, MultipartHttpServletRequest request,
			@RequestParam(value = "choiceContent", required = false, defaultValue = "") String choiceContent,
			@RequestParam(value = "choiceNo", required = false, defaultValue = "") String choiceNo,
			@RequestParam(value = "Imag", required = false) MultipartFile file,

			@RequestParam(value = "Image", required = false, defaultValue = "") MultipartFile[] arrfile) {
		System.out.println("[ProblemController.modify()]");
		System.out.println("controller: " + proVo.toString());

		System.out.println("초이스 스트링" + choiceContent);
		Map<String, Object> map = new HashMap<String, Object>();

		System.out.println("controller2222 : " + choiceContent);

		System.out.println("문제 제목이미지" + file.getOriginalFilename());
		System.out.println(arrfile.length);
		map.put("choiceContent", choiceContent);
		map.put("choiceNo", choiceNo);

		if (arrfile.length != 0) {
			map.put("file1", arrfile[0]);
			map.put("file2", arrfile[1]);
			map.put("file3", arrfile[2]);
			map.put("file4", arrfile[3]);
			System.out.println("객관식 보기 이미지 들어옴");
		}

		proService.ProblemModify2(file, proVo, choiceContent, choiceNo, map);

		return "redirect:/myclass/problem/problemList?cateNo=" + proVo.getCateNo();
	}

	// 문제 삭제
	@RequestMapping(value = "/move", method = { RequestMethod.GET, RequestMethod.POST })
	public String delete(@ModelAttribute ProblemVo proVo, Model model) {
		System.out.println("[ProblemController.move()]");

		model.addAttribute("proVo", proVo);

		System.out.println("move문Vo:   " + proVo);

		proService.move(proVo);

		return "redirect:/myclass/problem/problemList?cateNo=" + proVo.getCateNo();
	}

	@ResponseBody
	@RequestMapping(value = "/getSubCate", method = { RequestMethod.GET, RequestMethod.POST })
	public List<CategoryVo> getSubCate(Model model, HttpSession session, @RequestParam("groupNo") int groupNo) {
		System.out.println("[ProblemController.getSubCate()]");

		int no = ((UserVo) session.getAttribute("authUser")).getNo();
		CategoryVo cateVo = new CategoryVo();
		cateVo.setUserNo(no);
		cateVo.setGroupNo(groupNo);

		List<CategoryVo> categoryVo = proService.SubCategoryByGroupNo(cateVo);

		System.out.println(categoryVo);

		model.addAttribute("subCateList", categoryVo);

		return categoryVo;
	}
}
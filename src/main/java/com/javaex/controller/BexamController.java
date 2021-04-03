package com.javaex.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.service.BanmainService;
import com.javaex.service.ExamService;
import com.javaex.service.ProblemService;
import com.javaex.vo.ExamVo;
import com.javaex.vo.ProblemVo;
import com.javaex.vo.QuestionVo;
import com.javaex.vo.SolveVo;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping("/{url}/exam")
public class BexamController {

	@Autowired
	private ExamService examService;

	@Autowired
	private BanmainService banmainService;

	@Autowired
	private ProblemService proService;

	@RequestMapping(value = "/title", method = { RequestMethod.GET, RequestMethod.POST })
	public String title(@PathVariable("url") String url, @RequestParam(value = "examNo") int examNo,
			@RequestParam(value = "joinNo") int joinNo, HttpSession session, Model model) {

		model.addAttribute("classInfo", banmainService.classInfo(url, session));
		String where = examService.clicktitle(url, examNo, session, joinNo);
		return "redirect:/" + url + where;
	}

	@RequestMapping(value = "/problemlist", method = { RequestMethod.GET, RequestMethod.POST })
	public String problemlist(@PathVariable("url") String url, HttpSession session, Model model,
			@RequestParam(value = "examNo") int examNo,
			@RequestParam(value = "joinNo", required = false, defaultValue = "1") int joinNo,
			@RequestParam(value = "crtPage", required = false, defaultValue = "1") int crtPage) {

		System.out.println("[BanExamController.problemlist()]");

		model.addAttribute("classInfo", banmainService.classInfo(url, session));
		model.addAttribute("upMap", examService.examproList(examNo, joinNo, crtPage));

		return "ban/exam/problemlist";
	}

	@RequestMapping(value = "/problemscoring", method = { RequestMethod.GET, RequestMethod.POST })
	public String problemsolve(Model model, HttpSession session, @PathVariable("url") String url,
			@RequestParam(value = "examNo") int examNo, @RequestParam(value = "joinNo") int joinNo,
			@RequestParam(value = "orderNum") int orderNum) {
		System.out.println("[BanExamController.problemscoring()]");
		model.addAttribute("classInfo", banmainService.classInfo(url, session));
		model.addAttribute("examInfo", examService.examsolve(examNo, orderNum, joinNo));
		return "ban/exam/problemscoring";
	}

	@RequestMapping(value = "/examstart", method = { RequestMethod.GET, RequestMethod.POST })
	public String examstart(HttpSession session, Model model, @PathVariable("url") String url,
			@RequestParam(value = "examNo") int examNo, @RequestParam(value = "joinNo") int joinNo) {
		System.out.println("[BanExamController.start()]");

		model.addAttribute("classInfo", banmainService.classInfo(url, session));
		model.addAttribute("examVo", examService.examstart(examNo, joinNo));

		return "ban/exam/examsolvestart";
	}

	@RequestMapping(value = "/examsolve", method = { RequestMethod.GET, RequestMethod.POST })
	public String examsolve(HttpSession session, Model model, @PathVariable("url") String url,
			@RequestParam(value = "orderNum") int orderNum, @RequestParam(value = "examNo") int examNo,
			@RequestParam(value = "joinNo") int joinNo

	) {
		System.out.println("[BanExamController.end()]");

		model.addAttribute("classInfo", banmainService.classInfo(url, session));

		Map<String, Object> Map = new HashMap<String, Object>();

		Map.put("classInfo", banmainService.classInfo(url, session));
		model.addAttribute("examInfo", examService.examsolve(examNo, orderNum, joinNo));

		return "ban/exam/examsolve";
	}

	@RequestMapping(value = "/examend", method = { RequestMethod.GET, RequestMethod.POST })
	public String examend(@PathVariable("url") String url, HttpSession session, Model model,
			@RequestParam(value = "examNo") int examNo, @RequestParam(value = "orderNum") int orderNum,
			@RequestParam(value = "joinNo") int joinNo) {
		model.addAttribute("classInfo", banmainService.classInfo(url, session));
		model.addAttribute("examInfo", examService.examsolve(examNo, orderNum, joinNo));
		model.addAttribute("examVo", examService.examstart(examNo, joinNo));
		System.out.println("[BanExamController.end()]");
		return "ban/exam/examend";
	}

	@RequestMapping(value = "/grantform", method = { RequestMethod.GET, RequestMethod.POST })
	public String grantform(Model model, @PathVariable("url") String url, @RequestParam(value = "userNo") int userNo,
			HttpSession session) {
		System.out.println("[BanExamController.grantform()]");
		model.addAttribute("classInfo", banmainService.classInfo(url, session));
		model.addAttribute("cateList", proService.getCategory(userNo));

		return "ban/exam/examgrantform";
	}

	@ResponseBody
	@RequestMapping(value = "/grant", method = { RequestMethod.GET, RequestMethod.POST })
	public String grant(@ModelAttribute("examVo") ExamVo examVo, @PathVariable("url") String url,
			@RequestParam("qarr[]") String[] qarr) {
		System.out.println("[BanExamController.grant().url  = ]" + url);

		examService.examgrant(url, examVo, qarr);
		return "/" + url + "/exam/list";
	}

	@RequestMapping(value = "/exammodifyfrom", method = { RequestMethod.GET, RequestMethod.POST })
	public String exammodifyform(Model model, HttpSession session, @RequestParam(value = "examNo") int examNo,
			@PathVariable("url") String url) {
		System.out.println("[BanExamController.exammodifyform()]");

		model.addAttribute("classInfo", banmainService.classInfo(url, session));
		model.addAttribute("cateList", proService.getCategory(1));// 유저번호를 주면 그에해당하는 카테고리를 준다~
		model.addAttribute("pMap", examService.exammodifyform(examNo));

		return "ban/exam/" + examService.exammodifywhere(examNo);
	}

	@ResponseBody
	@RequestMapping(value = "/modify", method = { RequestMethod.GET, RequestMethod.POST })
	public String exammodify(@ModelAttribute("examVo") ExamVo examVo, @PathVariable("url") String url,
			@RequestParam("qarr[]") String[] qarr) {
		System.out.println("[BanExamController.exammodify()]");

		examService.exammodify(examVo, qarr, url);
		return "/" + url;
	}

	@ResponseBody
	@RequestMapping(value = "/selectquestion", method = { RequestMethod.GET, RequestMethod.POST })
	public List<QuestionVo> selectquestion(@RequestParam("examNo") int examNo) {
		System.out.println("[BanExamController.exammodify()]");
		return examService.selectquestion(examNo);
	}

	@ResponseBody
	@RequestMapping(value = "/modify2", method = { RequestMethod.GET, RequestMethod.POST })
	public String exammodify2(@ModelAttribute("examVo") ExamVo examVo, @PathVariable("url") String url) {
		System.out.println("[BanExamController.exammodify2()]");
		System.out.println(examVo);

		examService.exammodify2(examVo);
		return "/" + url;
	}

	@ResponseBody
	@RequestMapping(value = "/cateproList", method = { RequestMethod.GET, RequestMethod.POST })
	public List<ProblemVo> cateList(Model model,
			@RequestParam(value = "cateNo", required = false, defaultValue = "1") int cateNo,
			@PathVariable("url") String url) {
		System.out.println("[BanExamController.cateproList()]");
		return proService.getProblem(cateNo);
	}

	// 파일입력시
	@ResponseBody
	@RequestMapping(value = "/solvefile", method = { RequestMethod.POST })
	public void testuploadFiles(@ModelAttribute(value = "questionVo") QuestionVo questionVo,
			@ModelAttribute(value = "sovleVo") SolveVo solveVo, @RequestParam(value = "file") MultipartFile uploadFiles)
			throws IOException {
		System.out.println(solveVo.toString());
		System.out.println(uploadFiles.toString());

		// examService.insertFile(questionVo, solveVo,uploadFiles);
	}

	// 정답 입력시
	@ResponseBody
	@RequestMapping(value = "/insertanswer", method = { RequestMethod.GET, RequestMethod.POST })
	public void insertanswer(@ModelAttribute(value = "questionVo") QuestionVo questionVo,
			@ModelAttribute(value = "sovleVo") SolveVo solveVo) {

		examService.insertanswer(questionVo, solveVo);
	}

	// 정답 입력시
	@ResponseBody
	@RequestMapping(value = "/selectanswer", method = { RequestMethod.GET, RequestMethod.POST })
	public String selectanswer(@RequestParam(value = "examNo") int examNo,
			@RequestParam(value = "orderNum") int orderNum, @RequestParam(value = "joinNo") int joinNo) {
		return examService.selectanswer(examNo, orderNum, joinNo);
	}

	// 문제 제출 클릭시
	@RequestMapping(value = "/examfinish", method = { RequestMethod.GET, RequestMethod.POST })
	public String examfinish(@RequestParam(value = "examNo") int examNo, @RequestParam(value = "joinNo") int joinNo,
			@PathVariable("url") String url) {

		examService.examfinish(joinNo, examNo);
		return "redirect:/" + url;
	}

	@ResponseBody
	@RequestMapping(value = "/getpoint", method = { RequestMethod.GET, RequestMethod.POST })
	public int getpoint(@RequestParam(value = "examNo") int examNo, @RequestParam(value = "orderNum") int orderNum,
			@RequestParam(value = "joinNo") int joinNo) {
		return examService.getpoint(examNo, orderNum, joinNo);
	}

	@ResponseBody
	@RequestMapping(value = "/grantpoint", method = { RequestMethod.GET, RequestMethod.POST })
	public int grantpoint(@RequestParam(value = "examNo") int examNo, @RequestParam(value = "orderNum") int orderNum,
			@RequestParam(value = "joinNo") int joinNo, @RequestParam(value = "point") int point) {
		examService.grantpoint(examNo, orderNum, joinNo, point);
		return 1;
	}

	@ResponseBody
	@RequestMapping(value = "/examsolveList", method = { RequestMethod.GET, RequestMethod.POST })
	public Map<String, Object> examsolveList(@RequestParam(value = "examNo") int examNo,
			@RequestParam(value = "orderNum") int orderNum, @RequestParam(value = "joinNo") int joinNo) {
		System.out.println("체점시 리스트 출력 컨트롤러");
		return examService.examsolvepaging(examNo, orderNum, joinNo);
	}

	// 전체 채점
	@ResponseBody
	@RequestMapping(value = "/allscoring", method = { RequestMethod.GET, RequestMethod.POST })
	public int allscoring(@RequestParam(value = "examNo") int examNo,
						  @RequestParam(value = "joinNo" , required = false, defaultValue = "0") int joinNo){
		
		return examService.allscoring(examNo, joinNo);
	}
}

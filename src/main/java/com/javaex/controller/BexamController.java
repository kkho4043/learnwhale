package com.javaex.controller;



import java.util.List;

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

import com.javaex.service.ExamService;
import com.javaex.service.ProblemService;
import com.javaex.vo.ExamVo;
import com.javaex.vo.ProblemVo;
import com.javaex.vo.QuestionVo;

@Controller
@RequestMapping("/{url}/exam")
public class BexamController {
	
	@Autowired
	private ExamService examService;
	
	@Autowired
	private ProblemService proService;
	
	@RequestMapping(value = "/list", method = { RequestMethod.GET, RequestMethod.POST })
	public String list( @PathVariable("url") String url,
						@RequestParam(value = "crtPage", required = false ,defaultValue = "1") int crtPage,
						@RequestParam(value = "keyward",required = false,defaultValue = "") String keyward,
						Model model,HttpSession session
						) {
		System.out.println("[BanExamController.list()ddddddddddd]");
		System.out.println("keyward = "+keyward);
		
		
		
		model.addAttribute("eMap", examService.examList(url,crtPage,keyward));
		return "ban/exam/list";
	}

	@RequestMapping(value = "/problemlist", method = { RequestMethod.GET, RequestMethod.POST })
	public String problemlist(Model model,@PathVariable("url") String url,
							@RequestParam(value = "examNo") int examNo,
							@RequestParam(value = "joinNo", required = false ,defaultValue = "1") int joinNo,
							@RequestParam(value = "crtPage", required = false ,defaultValue = "1") int crtPage) {
		System.out.println("[BanExamController.problemlist()]");
		
		model.addAttribute("upMap", examService.examproList(examNo ,joinNo ,crtPage));
		return "ban/exam/problemlist";
	}

	@RequestMapping(value = "/problemscoring", method = { RequestMethod.GET, RequestMethod.POST })
	public String problemsolve(@PathVariable("url") String url) {
		System.out.println("[BanExamController.problemscoring()]");
		return "ban/exam/problemscoring";
	}

	@RequestMapping(value = "/examstart", method = { RequestMethod.GET, RequestMethod.POST })
	public String examstart(Model model ,@PathVariable("url") String url,@RequestParam(value = "examNo") int examNo) {
		System.out.println("[BanExamController.start()]");
		model.addAttribute("ExamVo",examService.examstart(examNo));
		return "ban/exam/examsolvestart";
	}

	@RequestMapping(value = "/examsolve", method = { RequestMethod.GET, RequestMethod.POST })
	public String examsolve(@PathVariable("url") String url) {
		System.out.println("[BanExamController.end()]");
		return "ban/exam/examsolve";
	}

	@RequestMapping(value = "/examend", method = { RequestMethod.GET, RequestMethod.POST })
	public String examend(@PathVariable("url") String url) {
		System.out.println("[BanExamController.end()]");
		return "ban/exam/examend";
	}

	@RequestMapping(value = "/grantform", method = { RequestMethod.GET, RequestMethod.POST })
	public String grantform(Model model ,@PathVariable("url") String url,@RequestParam(value = "cateNo", required = false ,defaultValue = "1") int cateNo) {
		System.out.println("[BanExamController.grantform()]");
		
		model.addAttribute("cateList", proService.getCategory(2));
		
		
		return "ban/exam/examgrantform";
	}
	
	@ResponseBody
	@RequestMapping(value = "/grant", method = { RequestMethod.GET, RequestMethod.POST })
	public String grant(@ModelAttribute ("examVo") ExamVo examVo,@PathVariable("url") String url,
			@RequestParam ("qarr[]") String[] qarr) {
		System.out.println("[BanExamController.grant()]");
		
		examService.examgrant(examVo, qarr);
		return ""+url+"exam/list";
	}
	
	@RequestMapping(value = "/exammodifyfrom", method = { RequestMethod.GET, RequestMethod.POST })
	public String exammodifyform(Model model ,@RequestParam(value = "examNo") int examNo,@PathVariable("url") String url) {
		System.out.println("[BanExamController.exammodifyform()]");
		
		model.addAttribute("cateList", proService.getCategory(2));//유저번호를 주면 그에해당하는 카테고리를 준다~
		model.addAttribute("pMap",examService.exammodify(examNo));
		
		return ""+url+"/exam/exammodifyform2";
	}
	
	@ResponseBody
	@RequestMapping(value = "/modify", method = { RequestMethod.GET, RequestMethod.POST })
	public String exammodify(@ModelAttribute ("examVo") ExamVo examVo,@PathVariable("url") String url,
			@RequestParam ("qarr[]") String[] qarr) {
		System.out.println("[BanExamController.exammodify()]");
		
	
		examService.exammodify(examVo, qarr);
		return "/"+url+"/exam/list";
	}
	@ResponseBody
	@RequestMapping(value = "/modify2", method = { RequestMethod.GET, RequestMethod.POST })
	public String exammodify2(@ModelAttribute ("examVo") ExamVo examVo,@PathVariable("url") String url){
		System.out.println("[BanExamController.exammodify2()]");
		System.out.println(examVo);
	
		examService.exammodify2(examVo);
		return "/"+url+"/exam/list";
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/cateproList", method = { RequestMethod.GET, RequestMethod.POST })
	public List<ProblemVo> cateList(Model model ,@RequestParam(value = "cateNo", required = false ,defaultValue = "1") int cateNo,
									@PathVariable("url") String url) {
		System.out.println("[BanExamController.cateproList()]");
			
		return proService.getProblem(cateNo);
	}

}
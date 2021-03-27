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

@Controller
@RequestMapping("/{url}/exam")
public class BexamController {
	
	@Autowired
	private ExamService examService;
	
	@Autowired
	private BanmainService banmainService;
	
	
	@Autowired
	private ProblemService proService;
	
	@ResponseBody
	@RequestMapping(value = "/test", method = { RequestMethod.GET, RequestMethod.POST })
	public String testuploadFiles(@RequestParam(value = "formData")MultipartFile[] uploadFiles) throws IOException{
    
        
        System.out.println("파일"+uploadFiles);
        
     
        
        return "성공";
        
    }


	
	
	@RequestMapping(value = "/title", method = { RequestMethod.GET, RequestMethod.POST })
	public String title(Model model,@PathVariable("url") String url,
							@RequestParam(value = "examNo") int examNo,
							HttpSession session) {
		
		String where = examService.clicktitle(url,examNo,session);
		model.addAttribute("classInfo", banmainService.classInfo(url, session));
		
		return "redirect:/"+url+"/exam/"+where;
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
	public String examstart(HttpSession session, Model model ,
							@PathVariable("url") String url,
							@RequestParam(value = "examNo") int examNo) {
		System.out.println("[BanExamController.start()]");
		
		model.addAttribute("classInfo", banmainService.classInfo(url, session));
		model.addAttribute("examVo",examService.examstart(examNo));
		
		
		return "ban/exam/examsolvestart";
	}

	@RequestMapping(value = "/examsolve", method = { RequestMethod.GET, RequestMethod.POST })
	public String examsolve(HttpSession session, Model model,
							@PathVariable("url") String url, 
							@RequestParam(value = "orderNum") int orderNum,
							@RequestParam(value = "examNo") int examNo){
		System.out.println("[BanExamController.end()]");
		
		
		 model.addAttribute("classInfo", banmainService.classInfo(url, session));
		 model.addAttribute("examInfo", examService.examsolve(examNo,orderNum));
		 
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
		System.out.println("[BanExamController.grant().url  = ]"+ url);
		
		examService.examgrant(url,examVo, qarr);
		return "/"+url+"/exam/list";
	}
	
	@RequestMapping(value = "/exammodifyfrom", method = { RequestMethod.GET, RequestMethod.POST })
	public String exammodifyform(Model model ,@RequestParam(value = "examNo") int examNo,@PathVariable("url") String url) {
		System.out.println("[BanExamController.exammodifyform()]");
		
		model.addAttribute("cateList", proService.getCategory(1));//유저번호를 주면 그에해당하는 카테고리를 준다~
		model.addAttribute("pMap",examService.exammodify(examNo));
		
		return "ban/exam/exammodifyform2";
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
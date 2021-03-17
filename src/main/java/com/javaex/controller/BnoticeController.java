<<<<<<< HEAD
package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/notice")
public class BnoticeController {

	@RequestMapping(value ="/list", method = {RequestMethod.GET, RequestMethod.POST})
	public String list() {
		System.out.println("[BnoticeController.list()]");
		return "ban/notice/list";
	}
	
	@RequestMapping(value ="/read", method = {RequestMethod.GET, RequestMethod.POST})
	public String read() {
		System.out.println("[BnoticeController.read()]");
		return "ban/notice/read";
	}
	
	@RequestMapping(value ="/modifyForm", method = {RequestMethod.GET, RequestMethod.POST})
	public String modifyForm() {
		System.out.println("[BnoticeController.modifyForm()]");
		return "ban/notice/modifyForm";
	}
	
	@RequestMapping(value ="/modify", method = {RequestMethod.GET, RequestMethod.POST})
	public String modify() {
		System.out.println("[BnoticeController.modify()]");
		return "ban/notice/list";
	}
	
	
	@RequestMapping(value ="/writeForm", method = {RequestMethod.GET, RequestMethod.POST})
	public String writeForm() {
		System.out.println("[BnoticeController.writeForm()]");
		return "ban/notice/writeForm";
	}
}
=======
package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/notice")
public class BnoticeController {

	@RequestMapping(value ="/list", method = {RequestMethod.GET, RequestMethod.POST})
	public String list() {
		System.out.println("[BnoticeController.list()]");
		return "ban/notice/list";
	}
	
	@RequestMapping(value ="/read", method = {RequestMethod.GET, RequestMethod.POST})
	public String read() {
		System.out.println("[BnoticeController.read()]");
		return "ban/notice/read";
	}
	
	@RequestMapping(value ="/modifyForm", method = {RequestMethod.GET, RequestMethod.POST})
	public String modifyForm() {
		System.out.println("[BnoticeController.modifyForm()]");
		return "ban/notice/modifyForm";
	}
	
	@RequestMapping(value ="/writeForm", method = {RequestMethod.GET, RequestMethod.POST})
	public String writeForm() {
		System.out.println("[BnoticeController.writeForm()]");
		return "ban/notice/writeForm";
	}
}
>>>>>>> branch 'master' of https://github.com/kkho4043/learnwhale.git

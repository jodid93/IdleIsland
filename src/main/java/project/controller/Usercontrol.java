package project.controller;

import project.service.*;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/login")
public class Usercontrol {
	
	//private UserInfo userinfo;
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String displayLogInPage(Model model ){
		return "login/login";
	}
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String Authorize(@RequestParam("UserName") String name, @RequestParam("PW") String pw,
			Model model){
		
		UserInfo notandi = new UserInfo();
		notandi.setUserName(name);
		notandi.setPW(pw);
		
		model.addAttribute("userinfo", notandi);
		
		return "login/dispInfo";
	}
}

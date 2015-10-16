package project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import project.service.UserInfo;

@Controller
public class HomeController {

	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String displayLogInPage(Model model ){
		return "login";
	}
	
	@RequestMapping(value="/", method = RequestMethod.POST)
	public String Authorize(@ModelAttribute("notandi") UserInfo notandi, BindingResult result, Model model){
		
		if(result.hasErrors()){
			return "login";
		}
		
		String Message = notandi.getPW()+" thetta test";
		model.addAttribute("skilabod", Message);
		
		return "menu";
	}
}

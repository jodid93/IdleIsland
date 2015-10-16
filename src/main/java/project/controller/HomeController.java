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
	
	@RequestMapping(value="/newRegestry", method = RequestMethod.POST)
	public String registerNewUser(Model model){
		
		return "register";
	}
	
	@RequestMapping(value="/registered", method = RequestMethod.POST)
	public String RegisterSuccess(@ModelAttribute("notandi") UserInfo notandi, BindingResult result, Model model){
		
		
		String Message = "ny skraning tokst fyrir notenda";
		model.addAttribute("skilabod", Message);
		return "menu";
	}
	
	
	@RequestMapping(value="/settings", method = RequestMethod.POST)
	public String settings( Model model){
		
		
		String Message = "inn i settings";
		model.addAttribute("skilabod", Message);
		return "settings";
	}
	
	@RequestMapping(value="/highScores", method = RequestMethod.POST)
	public String highScores( Model model){
		
		
		String Message = "inn i highScores";
		model.addAttribute("skilabod", Message);
		return "highScores";
	}
	
	@RequestMapping(value="/play", method = RequestMethod.POST)
	public String play( Model model){
		
		
		String Message = "inn i play";
		model.addAttribute("skilabod", Message);
		return "play";
	}
	
	
}

package project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import project.service.UserInfo;

@Controller
public class UserInfoController {
	@RequestMapping(value="/info", method=RequestMethod.GET)
	public String userInfoForm(Model model) {
		model.addAttribute("userinfo", new UserInfo());
		return "InfoForm";
	}
	@RequestMapping(value="/info", method=RequestMethod.POST)
	public String userInfoSubmit(@ModelAttribute UserInfo userInfo, Model model) {
		model.addAttribute("userinfo", userInfo);
		return "InfoResult";
	}
}

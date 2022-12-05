package com.ben.omikujiform.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class OmikujiController {
	@RequestMapping("/omikuji")
	public String index(Model model) {
		return "index.jsp";
	}
	
	@RequestMapping("/show")
	public String showOmikuji(Model model, HttpSession session) {
		return "show.jsp";
	}
	
	@PostMapping("/omikuji/show")
	public String submitForm(
		@RequestParam("number") int number,
		@RequestParam("city") String city,
		@RequestParam("name") String name,
		@RequestParam("hobby") String hobby,
		@RequestParam("thing") String thing,
		@RequestParam("compliment") String compliment,
		HttpSession session
	) {
		session.setAttribute("sessionNumber", number);
		session.setAttribute("sessionCity", city);
		session.setAttribute("sessionName", name);
		session.setAttribute("sessionHobby", hobby);
		session.setAttribute("sessionThing", thing);
		session.setAttribute("sessionCompliment", compliment);
		return "redirect:/show";
	}
}

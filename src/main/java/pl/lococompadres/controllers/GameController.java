package pl.lococompadres.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GameController {
	
	@RequestMapping("/login")
	public String logIn() {
		return "index";
	}
	
}

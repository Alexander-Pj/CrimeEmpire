package pl.lococompadres.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pl.lococompadres.entities.Gamestate;
import pl.lococompadres.entities.User;
import pl.lococompadres.repositories.GamestateRepository;
import pl.lococompadres.repositories.UserRepository;

@Controller
public class GameController {
	@Autowired
	UserRepository userRepository;
	@Autowired
	GamestateRepository gamestateRepository;
	
	@GetMapping("/login")
	public String logIn(Model model) {
		model.addAttribute("user", new User());
		return "login";
	}
	
	@PostMapping("/login")
	public String login(@RequestParam String login, @RequestParam String password, HttpSession session, Model model) {
				
		User user = userRepository.findFirstByUserName(login);
		if(user!=null && BCrypt.checkpw(password,  user.getPassword())) {
			model.addAttribute("info", "Logged in");
				session.setAttribute("loggedUser", user);
				Gamestate gamestate = gamestateRepository.findById(user.getGamestate().getId());
				model.addAttribute("stats", gamestate);
				return "game";
		} else {
			session.setAttribute("loggedUser", null);
			model.addAttribute("info", "Wrong email or password");
		}
		
		return "login";
	}
	
	@GetMapping("/addUser")
	public String userAdd(Model model) {
		model.addAttribute("user", new User());
		return "addUser";
	}
	
	@PostMapping("/addUser")
	public String userAdd(@Valid User user, BindingResult result, Model model) {
		Gamestate gamestate = new Gamestate();
		if(result.hasErrors())
		{
			return "addUser";
		}
		user.setPassword(BCrypt.hashpw(user.getPassword(),  BCrypt.gensalt()));
		gamestate.setCash(1000);
		gamestate.setDrugs(0);
		gamestate.setThugs(0);
		gamestate.setWhores(0);
		user.setGamestate(gamestate);
		gamestateRepository.save(gamestate);
		userRepository.save(user);
		return "login";
	}
	
	@PostMapping("/save")
	public void Save(@RequestParam String cash, @RequestParam String thugs, @RequestParam String whores, @RequestParam String drugs, HttpSession session) {
		User user = (User) session.getAttribute("loggedUser");
		Gamestate gamestate = gamestateRepository.findById(user.getGamestate().getId());
		gamestate.setCash(Long.parseLong(cash));
		gamestate.setThugs(Long.parseLong(thugs));
		gamestate.setWhores(Long.parseLong(whores));
		gamestate.setDrugs(Long.parseLong(drugs));
		gamestateRepository.save(gamestate);
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.setAttribute("loggedUser",  null);
		return "logout";	
	}
}

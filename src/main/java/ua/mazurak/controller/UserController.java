package ua.mazurak.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ua.mazurak.entity.User;
import ua.mazurak.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired UserService userService;
	
	@GetMapping("/add")
	public String showAddUserForms() {
	return "user/add-user";
	}
	
	@PostMapping("/add")
	public String addUserToDB(
			@RequestParam("emails") String email,
			@RequestParam("firstNames") String firstName,
			@RequestParam("lastNames") String lastName
			) {
			User user = new User();
			user.setEmail(email);
			user.setFirstName(firstName);
			user.setLastName(lastName);
			userService.saveUser(user);
		return "redirect:/";
	}
	
	@GetMapping("/users")
	public String showUsers(Model model) {
//		UserService userSerImpl = new UserServiceImpl();
		model.addAttribute("showUsers", userService.findAllUsers());
		return "user/list";
	}
	
	
	@GetMapping("/info/{userId}")
	public String showUserInfo(@PathVariable("userId") int userId, Model model) {
		model.addAttribute("userInfo", userService.findUserById(userId));
		return"user/info";
	}

	@GetMapping("users/{userId}")
	public String deleteUserById(@PathVariable("userId") int userId) {
		userService.deleteUserById(userId);
		return "redirect:/user/users";
	}

	@GetMapping("/email/{userEmail}")
	public String findUserByEmail(@PathVariable("userEmail") String userEmail, Model model) {
		model.addAttribute("userInfo", userService.findUserByEmail(userEmail));
		return "user/info";
	}
}






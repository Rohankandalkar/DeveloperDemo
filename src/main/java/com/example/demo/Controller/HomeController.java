package com.example.demo.Controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.Model.Developer;
import com.example.demo.Model.User;
import com.example.demo.userservice.DeveloperService;
import com.example.demo.userservice.UserService;

@Controller
public class HomeController {
	
	
	@Autowired
	private UserService userservice;
	
	@Autowired
	private DeveloperService developerservice;
	
	
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String Home() {
		return "Home";
	}
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String Login(@RequestParam String email,@RequestParam String password,Model map) {
		
		if(this.userservice.checkUser(email,password))
		{
			if(this.userservice.IsAdmin(password))
			{
				List<Developer> All_developers_list=this.developerservice.getAllDevelopers();
				map.addAttribute("list_of_developer",All_developers_list);
				return "AdminProfile";
			}
			else
			{
				return "Userprofile";
			}
		}

		return "Home";
		
		
		
		
		
	}
	
	
	@RequestMapping(value="/registerpage",method=RequestMethod.GET)
	public String Login() {
		
		return "Registration";
		
		
	}
	
	@RequestMapping(value="/registeruser")
	public String Register(User user) {
		System.out.println(user.getName());
		this.userservice.saveUser(user);
		return "Home";
		
		
	}
	
	
	@RequestMapping(value="/getAll",method=RequestMethod.GET)
	public String getAllDevlopers() {
		
		System.out.println("GET ALL DEVELOPER");
		return "Registration";
		
		
	}
	
	

	@RequestMapping(value="/addDeveloper")
	public String addDeveloper(Developer developer) {
		
		this.developerservice.addDeveloperService(developer);
		
		return "redirect:/AdminProfileurl";
		
	}
	
	@RequestMapping(value="/addDeveloperPage")
	public String addDeveloperPage() {
		
			
		return "addDeveloper";
		
	}
	
	@RequestMapping("/edit")
	public String editDeveloperpage(@RequestParam int id,Model map) {
		
		Developer dev = this.developerservice.getDeveloper(id);
		map.addAttribute("list_of_developer",dev);
		
     	return "Edit";
		
	}
	
	@RequestMapping("/eidtDeveloper")
	public String editDeveloper(Developer developer) {
		
		this.developerservice.editDeveloperService(developer);
				
     	return "redirect:/AdminProfileurl";
		
	}
	
	@RequestMapping("/delete")
	public String deleteDeveloper(@RequestParam int id) {
		
		Developer dev = this.developerservice.getDeveloper(id);
		this.developerservice.deleteDeveloper(dev);
		return "redirect:/AdminProfileurl";
		
	}
		
	
	@RequestMapping("/AdminProfileurl")
	public String DevelopAdmin(Model map) {
		List<Developer> All_developers_list=this.developerservice.getAllDevelopers();
		map.addAttribute("list_of_developer",All_developers_list);
		return "AdminProfile";
		
	}
	
	
	
	

}
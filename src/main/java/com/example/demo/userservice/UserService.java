package com.example.demo.userservice;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Model.User;
import com.example.demo.Repository.UserRepository;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userrepository;
	
	public void saveUser(User user) {
		this.userrepository.save(user);
		
		
	}

	public boolean checkUser(String email, String password) {
		// TODO Auto-generated method stub
		List<User> list_of_all_user = new ArrayList<>();
		this.userrepository.findAll().forEach(list_of_all_user::add);
		boolean userchecking = list_of_all_user.stream().anyMatch(user->user.getEmail().equals(email));
		if(userchecking)
		{
			User demouserobj = list_of_all_user.stream().filter(user->user.getEmail().equals(email)).findFirst().get();
			if(demouserobj.getPassword().equals(password))
			{
						return true;
			}
			else
			{
						return false;
			}
		}
		return false;
	}

	public boolean IsAdmin(String password) {
		
		User adminobj = this.userrepository.findOne(1);
		
		return adminobj.getPassword().equals(password);
	}

	

}

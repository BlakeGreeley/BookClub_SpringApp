package com.codingdojo.bookclub.services;

import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.security.SecurityProperties.User;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.codingdojo.bookclub.models.LoginUser;
import com.codingdojo.bookclub.repositories.UserRepository;

@Service
public class UserService {
	@Autowired
	private UserRepository repo;
	
	@Autowired
	private UserRepository userRepo;
	
	public User register(User newUser, BindingResult result) {
		Optional<User> userLookUp= userRepo.findByEmail(newUser.getEmail());
		if (userLookUp.isPresent()) {
			result.rejectValue("email", "Unique", "Email already exists.");
		}
		
		if(!newUser.getPassword().equals(newUser.getConfirm())) {
			result.rejectValue("confirm", "Matches", "Passwords must match." );
		}
		if(result.hasErrors()) {
			return null;
		}
		
		String hashed = BCrypt.hashpw(newUser.getPassword(), BCrypt.gensalt());
		newUser.setPassword(hashed);
		
		newUser = repo.save(newUser);
		System.out.println("New user created by ID: " + newUser.getId());
		return newUser;
	}
	
	public User login(LoginUser newLogin, BindingResult result) {
    	Optional<User> userLookUp = userRepo.findByEmail(newLogin.getEmail());
    	if (!userLookUp.isPresent()) {
    		result.rejectValue("email", "MissingAccount", "No account found.");
    		return null;
    	}
    	User user = userLookUp.get();
        
    	if(!BCrypt.checkpw(newLogin.getPassword(), user.getPassword())) {
    	    result.rejectValue("password", "Matches", "Invalid Password!");
    	}

    	if(result.hasErrors()) {
    		return null;
    	}

        return user;
	}
	
	public User findByEmail(String email) {
		Optional<User> result = repo.findByEmail(email);
		if(result.isPresent()) {
			return result.get();
		}
		return null;
	}
	
	public User findById(Long Id) {
		Optional<User> result = repo.findById(Id);
		if(result.isPresent()) {
			return null;
		}
	}
	
	
	
}

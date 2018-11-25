package com.mgmtp.blog.service;

import com.mgmtp.blog.dao.UserRepository;
import com.mgmtp.blog.model.User;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository userRepository;

	
    @Autowired
    private PasswordServiceImpl passwordService;

    @Override
	public List<User> findByUsername(String username) {
		return userRepository.findByUsername(username);
	}

	@Override
	 public List<User> findByUsername(String username, String password) {
		return userRepository.findByUsername(username, password);
	}
  
    @Override
    public List<User> findAll() {
    		return userRepository.findAll();
    }
	
	@Override
	public boolean validateUser(String username, String password) {
		List<User> users = (List<User>) findByUsername(username);
		if(users == null || users.isEmpty()) {
			return false;
		}
		return true;	
	}
	
	@Override
	public boolean resetAllPassword() {
		try {
			int numberOfUsers = findAll().size();
			List<String> passwords = passwordService.getInitialPassword(numberOfUsers, 3);
			userRepository.resetAllPassword(passwords);
			
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean addUser(User user) {
		try {
			userRepository.addUser(user);
					
		} catch (Exception e) {
			e.printStackTrace();
		}
		return true;
	}
    
}
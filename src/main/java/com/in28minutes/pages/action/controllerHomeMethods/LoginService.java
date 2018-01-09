package com.in28minutes.pages.action.controllerHomeMethods;

import org.springframework.stereotype.Service;

@Service
public class LoginService {
	public boolean validateUser(String user, String password) {
		System.out.println("In Service");
		return user.equalsIgnoreCase("s") && password.equals("s");
	}

}
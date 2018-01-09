package com.in28minutes.SpringMVC;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.in28minutes.pages.action.controllerHomeMethods.LoginService;
import com.in28minutes.postgres.pojo.Model.AppUser;

@Controller
public class LoginController {
	@Autowired
	private LoginService service;
	@RequestMapping (value="/login",method =RequestMethod.GET)
	public String LoginHandle() {
		return "login";
	}

	@RequestMapping (value="/login",method =RequestMethod.POST)
	public String HandlingpostLogin(@RequestParam String name,@RequestParam String password,ModelMap model) {
		if(!service.validateUser(name, password)) {
			model.put("errorMessage", "Invalid Credentials");
			return "login";
		}
		model.put("name", name);
		model.put("password", password);
				/////////Postgres SQL connection to save user name
				SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
				Session session = sessionFactory.openSession();
				session.beginTransaction();
				AppUser user = new AppUser(name);
				session.save(user);
				session.getTransaction().commit();
				session.close();
		return "welcome";
}
}

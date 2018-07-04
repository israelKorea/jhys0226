package com.pops.jhyproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
public class JhyController {
	
	private static final Logger logger = LoggerFactory.getLogger(JhyController.class);
	
	@RequestMapping(value="/")
	public String board(Model model) {
		
		return "main/carousel";
	}
	
	@RequestMapping(value="/login_in.mvc")
	public String login_in(HttpServletRequest request, HttpServletResponse response, Model model) {
		
		return "sign-in/sign_in";
		
	}
	
	@RequestMapping(value="/sign_up.mvc")
	public String sign_up() {
		
		return "sign-in/sign_up";
	}
	
	@RequestMapping(value="/reset_password.mvc")
	public String reset_password() {
		
		return "sign-in/reset_password";
	}
	
	@RequestMapping(value="/sendEmail.mvc")
	public void sendEmail() {
		System.out.println("email ");
	}
	
}

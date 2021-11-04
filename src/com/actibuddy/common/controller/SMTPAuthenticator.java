package com.actibuddy.common.controller;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class SMTPAuthenticator extends Authenticator {

	public SMTPAuthenticator() {
		
		super();
	}
	
	public PasswordAuthentication getPasswordAuthentication() {
	
		String username="lgh2194@gmail.com";
		String password="lgzh3105";
		
		return new PasswordAuthentication(username, password);
		
	}
	
	
}

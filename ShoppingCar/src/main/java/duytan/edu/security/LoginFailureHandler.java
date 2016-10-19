package duytan.edu.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;

import duytan.edu.service.UserEntityManager;


public class LoginFailureHandler extends SimpleUrlAuthenticationFailureHandler {


	@Autowired
	UserEntityManager userManager;

	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException exception) throws IOException, ServletException {
		String name = request.getParameter("username");
		
		
		
		exception.printStackTrace();
		super.onAuthenticationFailure(request, response, exception);
	}
	
}

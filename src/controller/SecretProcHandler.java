package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SecretProcHandler implements URIHandler{

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		return "WEB-INF/view/secret.jsp";
	}
	
}

package com.jd.controller;

import java.awt.print.Printable;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;
import javax.xml.ws.Response;

import org.apache.jasper.tagplugins.jstl.core.Out;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jd.dao.UserDao;
import com.jd.entity.User;
import com.jd.service.Userservice;

@Controller
public class UserController {
	@Autowired
	Userservice userservice;
	@Autowired
	UserDao us;

	@RequestMapping("domain")
	public String geturl() {
		return "main";
	}

	@RequestMapping("dolog")
	public String geturl1() {
		return "login";
	}

	@RequestMapping("reg")
	public String geturl2() {
		return "registe";
	}

	@RequestMapping("dologin")
	public String login(User user, HttpSession session, Model model, HttpServletResponse response) {

		User user2 = userservice.login(user);

		if (user2 != null) {
			session.setAttribute("user", user2);
			model.addAttribute("user", user2);
			return "forward:/docook";
		} else {
			return "registe";
		}

	}

	@RequestMapping("docook")
	public String cookies(HttpSession session, HttpServletResponse response) throws UnsupportedEncodingException {
		User user = (User) session.getAttribute("user");
		Cookie cookie = new Cookie("name", URLEncoder.encode(user.getUSERNAME()));
		cookie.setMaxAge(10);
		response.addCookie(cookie);
		return "redirect:/domain";
	}

	@RequestMapping("doregister")
	public String register(User user, Model model) {
		int b = userservice.register(user);

		if (b > 0) {
			return "login";

		}
		return "registe";

	}

	@RequestMapping("first")
	@ResponseBody
	public void ajax1(String USERNAME,HttpSession session,HttpServletResponse response ) throws IOException {
		int code ;
		
		System.out.println(USERNAME);
		PrintWriter out =response.getWriter();
		User flag = us.selectByUsername(USERNAME);
		if (flag == null) {
			out.print("1");
		} else {
		out.print("0");
		}
		out.flush();
		out.close();
		
	}

}

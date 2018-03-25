package com.jd.controller;

import java.util.List;
import java.util.concurrent.ExecutionException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jd.entity.Commodity;
import com.jd.service.Commodityservice;

@Controller
public class CommodityController {

	@Autowired
	Commodityservice Commodityservice;

	@RequestMapping("search")
	public String goregister() {
		return "search";
	}

	@RequestMapping("dosearch")
	public String search(Commodity commodity, HttpSession session) {
		List<Commodity> commodities = Commodityservice.search(commodity);
		session.setAttribute("commodities", commodities);
		
		return "search";

	}

	@RequestMapping("goxiangqing")
	public String goregister1(Commodity commodity, Model model,HttpSession session, HttpServletRequest request)
			throws InterruptedException, ExecutionException {
		String id = request.getParameter("commodotyid");
		long l = Long.parseLong(id);
		Commodity com = Commodityservice.selectByPrimaryKey(l);
		model.addAttribute("commodity", com);
		System.out.println(com.getIMG());
		return "xiangqing";

	}
}

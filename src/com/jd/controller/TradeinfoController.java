package com.jd.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jd.entity.CarItem;
import com.jd.entity.Commodity;
import com.jd.entity.Details;
import com.jd.service.Commodityservice;

@Controller
public class TradeinfoController {
	@Autowired
	Commodityservice Commodityservice;

	@RequestMapping("addtrade")
	public String addtrade(Long[] one, HttpSession session, Model model) {
		HashMap<Long, CarItem> cartMap = (HashMap<Long, CarItem>) session.getAttribute("cartMap");
		List<Details> detailslist = new ArrayList<Details>();
		for (Long pString : one) {
			Details details = new Details();
			details.setCOMID(pString);
			long count = Long.valueOf(cartMap.get(pString).getAmount());
			details.setAMOUNT(count);
			details.setCommodity(cartMap.get(pString).getCommodity());
			detailslist.add(details);
		}
		model.addAttribute("detailslist", detailslist);
		return "order";
	}
}

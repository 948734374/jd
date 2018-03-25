package com.jd.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jd.entity.Commodity;
import com.jd.service.Commodityservice;

@Controller
public class ProductController {

	@Autowired
	Commodityservice commodityservice;

	@RequestMapping("gopro")
	public String geturl(){
		return "produt";
	}
	
	@RequestMapping("getProductList")
    @ResponseBody
	public List<Commodity> getProductList(HttpSession session) {
		List<Commodity> commodities = null;
		commodities=commodityservice.searchall();
		System.out.println(commodities);
		session.setAttribute("list", commodities);
		for (Commodity commodity : commodities) {
			System.out.println(commodity.getCOMNAME());
			System.out.println(commodity.getIMG());
			System.out.println(commodity.getPRICE());
			System.out.println(commodity.getCOMID());
		}
		return commodities;

	}
}

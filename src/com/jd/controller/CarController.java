package com.jd.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jd.entity.CarItem;
import com.jd.entity.Commodity;
import com.jd.service.SearchService;

@Controller
public class CarController {
	@Autowired
	SearchService ss;
	@RequestMapping("doCart")
	public String doCart(Long comId, int count, HttpSession session) {
		Commodity product = ss.selectByPrimaryKey(comId);
		CarItem ci = new CarItem(product, count);

		@SuppressWarnings("unchecked")
		HashMap<Long, CarItem> cartMap = (HashMap<Long, CarItem>) session.getAttribute("cartMap");
		if (cartMap == null) {
			cartMap = new HashMap<Long, CarItem>();
		}
		if (cartMap.get(comId) == null) {
			cartMap.put(comId,ci);
		} else {
			CarItem temp = cartMap.get(comId);
			temp.setAmount(temp.getAmount() + count);
			cartMap.put(comId, temp);
			
		}
		session.setAttribute("cartMap", cartMap);

		return "redirect:toShoppingCart";
	}

	@RequestMapping("toShoppingCart")
	public String toShoppingCart() {

		return "ShoppingCart";
	}

}

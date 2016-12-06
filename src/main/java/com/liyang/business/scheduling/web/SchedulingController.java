package com.liyang.business.scheduling.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("scheduling")
public class SchedulingController {
	
	@RequestMapping({"index"})
	public String index() {
		return "scheduling/index";
	}
	

}

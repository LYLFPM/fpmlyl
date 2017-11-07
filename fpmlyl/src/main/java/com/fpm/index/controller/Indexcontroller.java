package com.fpm.index.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/index")
public class Indexcontroller {
	@RequestMapping(value={"/index",""}, method = RequestMethod.GET )
	public String index(){
		return "test";
	}
}

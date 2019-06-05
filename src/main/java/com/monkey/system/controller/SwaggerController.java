package com.monkey.system.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.monkey.common.annotation.Log;

@Controller
public class SwaggerController {

	@Log("访问接口列表页面")
	@PostMapping("swagger")
	@RequiresPermissions("swagger:skip")
	public String skipSwagger(){
		return "system/swagger/swagger";
	}
	
}

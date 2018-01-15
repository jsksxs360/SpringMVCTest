package me.xiaosheng.handlers;

import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloWorld {

	/**
     * 1. 使用RequestMapping注解来映射请求的URL
     * 2. 返回值会通过视图解析器解析为实际的物理视图, 对于InternalResourceViewResolver视图解析器，会做如下解析
     * 通过prefix+returnVal+suffix 这样的方式得到实际的物理视图，然后会转发操作
     * "/WEB-INF/views/success.jsp"
     * @return
     */
    @RequestMapping("/helloworld")
    public String hello() {
        return "success";
    }
    
    @RequestMapping("/aboutme")
    public String myIntroduction(String version, HttpServletRequest request) {
    	HttpSession session = request.getSession();
    	//通过session传递参数
    	if (version.equals("chinese")) { //中文版
    		session.setAttribute("version", "chinese");
    		session.setAttribute("main", "一个电脑爱好者");
    		List<String> hobbies = Arrays.asList("看书","玩游戏","睡觉");
    		session.setAttribute("hobbies", hobbies);
    	} else { //英文版
    		session.setAttribute("version", "english");
    		session.setAttribute("main", "a computer fan");
    		List<String> hobbies = Arrays.asList("reading","playing computer games","sleeping");
    		session.setAttribute("hobbies", hobbies);
    	}
    	return "me";
    }
}

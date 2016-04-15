package com.spring.webcoffee.controller;

import com.spring.webcoffee.model.User;
import com.spring.webcoffee.service.LoginService;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.validation.BindingResult;

import java.util.Map;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;

@Controller
@RequestMapping(value = "/")
public class LoginController {
    
//    @Autowired
//    public LoginService loginService;

    @RequestMapping(method = RequestMethod.GET)
    public String showForm(Map model) {
        User user = new User();
        model.put("user", user);
        return "login";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String processForm(@Valid User user, BindingResult result, Map model) {
        
        if (user.getLogin().equals("adm") && user.getPassword().equals("123456")) {
            return "success";
        }
        
        return "login";
        
//        if (result.hasErrors()) {
//            return "login";
//        }
//
//        boolean userExists = loginService.checkLogin(user.getLogin(),
//                user.getPassword());
//        if (userExists) {
//            model.put("user", user);
//            return "success";
//        } else {
//            //result.rejectValue("login", "invaliduser");
//            return "login";
//        }
    }
}

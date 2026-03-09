package com.microservice.app.controller;
import com.microservice.app.dto.RegisterDto;
import com.microservice.app.service.RegisterService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.imageio.spi.RegisterableService;
import javax.validation.Valid;

@Controller
public class RegisterController {
    @Autowired
    RegisterService registerService;

    @PostMapping("/Register")
    public String  register(@Valid @ModelAttribute RegisterDto dto, Model model){
        if(dto==null){
            model.addAttribute("error","data is not valid");
            return "register";
        }
        else
            registerService.registerUser(dto);
        return "login";
    }
}

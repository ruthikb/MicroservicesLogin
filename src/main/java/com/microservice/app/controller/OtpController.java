package com.microservice.app.controller;


import com.microservice.app.service.OtpService;
import com.sun.xml.bind.v2.runtime.SchemaTypeTransducer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;

@Controller
public class OtpController{
    @Autowired
    OtpService service;
    @PostMapping("sendOtp")
    public String sendOtp(@RequestParam("email") String email, Model model){
        String string=service.sendOtp(email);
        if (string.equals("noError")){
            model.addAttribute("noError","email does not exist");
        }
        if (string.equals("errors")) {
            model.addAttribute("errors", "db error");
        }
        model.addAttribute("email", email);

        return "otp";
    }
}

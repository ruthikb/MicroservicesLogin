package com.microservice.app.controller.redicrectPage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RedirectController {

    @GetMapping("/registerUser")
    public  String registerUser(){
        return "registerUser";
    }
    @GetMapping("/loginUser")
    public  String loginUser() {
        return "login";
    }
    @GetMapping("/getOtp")
    public  String getOtp() {
        return "otp";
    }
}

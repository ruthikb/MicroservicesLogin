package com.microservice.app.service.impl;

import com.microservice.app.service.OtpService;
import com.microservice.app.utils.GenerateOtp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OtpServiceImpl implements OtpService {

    @Autowired
    private GenerateOtp generateOtp;

    @Override
    public String sendOtp(String email) {

        return "";
    }
}

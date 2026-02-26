package com.microservice.app.service.impl;

import com.microservice.app.dto.RegisterDto;
import com.microservice.app.entity.RegisterEntity;
import com.microservice.app.repo.RegisterRepo;
import com.microservice.app.service.RegisterService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class RegisterServiceImpl implements RegisterService {
    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;

    @Autowired
    RegisterRepo registerRepo;
    @Override
    public String registerUser(RegisterDto dto) {
        if (dto==null){
            return "Please provide valid details";
        } else {
            RegisterEntity registerEntity=new RegisterEntity();
            BeanUtils.copyProperties(dto,registerEntity);
            registerEntity.setPassword(bCryptPasswordEncoder.encode(dto.getPassword()));
            registerRepo.save(registerEntity);
            return "User registered successfully";
        }

    }
}

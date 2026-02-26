package com.microservice.app.service;

import com.microservice.app.dto.RegisterDto;

public interface RegisterService {
    String registerUser(RegisterDto dto);
}

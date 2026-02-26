package com.microservice.app.repo;

import com.microservice.app.entity.RegisterEntity;

public interface RegisterRepo {
    boolean save(RegisterEntity registerEntity);
}

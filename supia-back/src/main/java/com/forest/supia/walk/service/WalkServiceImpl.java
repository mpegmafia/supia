package com.forest.supia.walk.service;

import com.forest.supia.walk.dto.WalkDto;
import com.forest.supia.walk.entity.Walk;
import com.forest.supia.walk.repository.WalkRepository;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.lang.reflect.Member;
import java.time.Duration;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;

@Service
@RequiredArgsConstructor
public class WalkServiceImpl implements WalkService{

    private WalkRepository walkRepository;

    @Override
    @Transactional
    public int walk(WalkDto walkDto) {



        return 0;
    }

}

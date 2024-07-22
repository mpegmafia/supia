package com.forest.supia.walk.service;

import com.forest.supia.walk.dto.WalkDto;
import com.forest.supia.walk.entity.Walk;
import com.forest.supia.walk.repository.WalkRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class WalkServiceImpl implements WalkService{

    private WalkRepository walkRepository;

    @Override
    public int save(WalkDto walkDto) {
        Walk wal
        return walkRepository.save();
    }

}

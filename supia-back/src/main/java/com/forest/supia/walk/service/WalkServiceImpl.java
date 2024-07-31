package com.forest.supia.walk.service;

import com.forest.supia.member.model.Member;
import com.forest.supia.member.repository.MemberRepository;
import com.forest.supia.walk.repository.WalkRepository;
import com.forest.supia.walk.dto.WalkDto;
import com.forest.supia.walk.entity.Walk;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.time.Duration;
import java.time.LocalDate;
import java.time.LocalDateTime;

@Service
@RequiredArgsConstructor
public class WalkServiceImpl implements WalkService{

    private final WalkRepository walkRepository;
    private final MemberRepository memberRepository;

    @Override
    @Transactional
    public Long walk(WalkDto walkDto) {

        Member member = memberRepository.findByMemberId(walkDto.getMemberId());


        LocalDateTime startDateTime = walkDto.getWalkStart();
        LocalDateTime endDateTime = walkDto.getWalkEnd();

        Duration duration = Duration.between(startDateTime, endDateTime);

        long walkTime =  duration.toSeconds();
        LocalDate walkDate = LocalDate.from(endDateTime);

        Walk walk = Walk.createWalk(member, walkDate, walkTime, walkDto.getDistance());

        walkRepository.save(walk);
        return walk.getId();
    }

}

package com.forest.supia.walk.entity;

import com.forest.supia.walk.dto.WalkDto;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.lang.reflect.Member;
import java.time.Duration;
import java.time.LocalDate;
import java.time.LocalDateTime;

@Entity
@Getter @Setter
@Table(name = "Walk")
public class Walk {

    @Id @GeneratedValue
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "member_id")
    private Member member;

    private LocalDate walkDate;
    private long walkTime;
    private long distance;

    public Walk createWalk(int memberId, WalkDto walkDto) {
        Walk walk = new Walk();

        LocalDateTime startDateTime = walkDto.getWalkStart();
        LocalDateTime endDateTime = walkDto.getWalkEnd();

        Duration duration = Duration.between(startDateTime, endDateTime);

        long walkTime =  duration.toSeconds();
        LocalDate walkDate = LocalDate.from(endDateTime);
        walk.setWalkDate(walkDate);
        walk.setWalkTime(walkTime);

        Member member = memberRepository.findOne(memberId);
        walk.setMember(member);


        return walk;

    }
}

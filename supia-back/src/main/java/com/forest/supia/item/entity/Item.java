package com.forest.supia.item.entity;

import com.forest.supia.member.model.Member;
import com.forest.supia.walk.entity.Walk;
import jakarta.persistence.*;

public class Item {
    @Id @GeneratedValue
    private Long id;

    private String si;
    private String dong;

//    @ManyToOne(fetch = FetchType.LAZY)
//    @JoinColumn(name = "species_id")
//    private Species species;
    private String imgUrl;
    private String originUrl;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "member_id")
    private Member member;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "walk_id")
    private Walk walk;
}

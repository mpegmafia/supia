package com.forest.supia.member.service;

import com.forest.supia.member.model.Member;
import com.forest.supia.member.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberService {
    @Autowired
    private MemberRepository memberRepository;

   public List<Member> listMember() {
       return memberRepository.findAll();
   }

}

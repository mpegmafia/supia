package com.forest.supia.member.controller;

import com.forest.supia.config.auth.JwtUtil;
import com.forest.supia.member.model.Member;
import com.forest.supia.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping(value = "/members", produces = "application/json; charset=utf8")
public class MemberController {
    @Autowired
    private MemberService memberService;

    @GetMapping("/list")
    public ResponseEntity<List<Member>> listMember(){
        List<Member> memberList = memberService.listMember();
        if(!memberList.isEmpty()) {
            System.out.println(memberList);
            return ResponseEntity.ok(memberList);
        } else{
            return ResponseEntity.badRequest().body(null);
        }
    }

    @PostMapping("/register")
    public ResponseEntity<Map<String, String>> registerMember(@RequestBody Map<String, String> member) {
        String email = member.get("email");
        String name = member.get("name");
        String password = member.get("password");
        String nickname = member.get("nickname");

        Member newMember = new Member();
        newMember.setEmail(email);
        newMember.setName(name);
        newMember.setPassword(password);
        newMember.setNickname(nickname);

        memberService.saveMember(newMember);

        Map<String, String> response = new HashMap<>();
        response.put("message", "회원 등록이 완료되었습니다.");
        return ResponseEntity.ok(response);
    }

    @PostMapping("/login")
    public ResponseEntity<Map<String, String>> loginMember(@RequestBody Map<String, String> user) {
        String email = user.get("email");
        String password = user.get("password");

        Member member = memberService.findByEmail(email);

        Map<String, String> response = new HashMap<>();

        if (member != null && member.getPassword().equals(password)) {
            String token = JwtUtil.generateToken(member);
            response.put("token", token);
            response.put("message", "로그인이 완료되었습니다.");
            return ResponseEntity.ok().body(response);
        } else {
            response.put("message", "유효하지 않은 로그인입니다.");
            return ResponseEntity.badRequest().body(response);
        }

    }

    @GetMapping("/social-login")
    public String loginPage() {
        return "login";
    }

}
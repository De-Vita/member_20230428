package com.icia.member.controller;

import com.icia.member.dto.MemberDTO;
import com.icia.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class MemberController {
    @Autowired
    MemberService memberService;
    @GetMapping("/save")
    public String saveForm() {
        return "memberSave";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute MemberDTO memberDTO, Model model) {
        int saveResult = memberService.save(memberDTO);
        model.addAttribute("result", saveResult);
        return "memberLogin";
    }

    @GetMapping("/login")
    public String loginForm() {
        return "memberLogin";
    }


    @PostMapping("/login")
    public String login(@ModelAttribute MemberDTO memberDTO, Model model, HttpSession session) {
        MemberDTO loginResult = memberService.login(memberDTO);
        System.out.println("loginResult = " + loginResult);
        if (loginResult != null) {
            session.setAttribute("loginResult", loginResult);
            model.addAttribute("loginResult", loginResult);
            return "memberMain";
        } else {
            return "redirect:/memberLogin";
        }
    }




    @GetMapping("/members")
    public String findAll(Model model) {
        List<MemberDTO> memberDTOList = memberService.findAll();
        model.addAttribute("memberList",memberDTOList);
        return "memberList";
    }

//    @GetMapping("/member")
//    public String findById()

}

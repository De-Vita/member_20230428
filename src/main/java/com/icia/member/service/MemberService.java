package com.icia.member.service;

import com.icia.member.dto.MemberDTO;
import com.icia.member.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberService {
    @Autowired
    MemberRepository memberRepository;

    public void delete(Long id) {
        memberRepository.delete(id);
    }

    public int save(MemberDTO memberDTO) {
        int result = memberRepository.save(memberDTO);
        return result;
    }

    public MemberDTO login(MemberDTO memberDTO) {
        MemberDTO result = memberRepository.login(memberDTO);
        if (result != null) {
            return result;
        } else {
            return null;
        }
    }

    public List<MemberDTO> findAll() {
        List<MemberDTO> memberDTOList = memberRepository.findAll();
        if (memberDTOList.size() == 0) {
            return null;
        } else {
            return memberDTOList;
        }
    }

    public MemberDTO findById(Long id) {
        MemberDTO memberDTO = memberRepository.findById(id);
        return memberDTO;
    }

    public void update(MemberDTO memberDTO) {
        memberRepository.update(memberDTO);
    }
}

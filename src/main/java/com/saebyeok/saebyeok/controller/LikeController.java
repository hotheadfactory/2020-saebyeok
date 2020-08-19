package com.saebyeok.saebyeok.controller;

import com.saebyeok.saebyeok.domain.ArticleLike;
import com.saebyeok.saebyeok.domain.Member;
import com.saebyeok.saebyeok.domain.MemberRepository;
import com.saebyeok.saebyeok.exception.MemberNotFoundException;
import com.saebyeok.saebyeok.security.User;
import com.saebyeok.saebyeok.service.LikeService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.net.URI;

@RequestMapping("/api")
@RequiredArgsConstructor
@RestController
public class LikeController {

    private final MemberRepository memberRepository;
    private final LikeService likeService;

    @PostMapping("/likes/article/{articleId}")
    public ResponseEntity<Void> likeArticle(Authentication authentication, @PathVariable Long articleId) {
        // TODO: 20. 8. 11. 커스텀 어노테이션으로 리팩토링
        User user = (User) authentication.getPrincipal();
        Member member = memberRepository.findById(user.getId())
                .orElseThrow(() -> new MemberNotFoundException(user.getId()));

        ArticleLike articleLike = likeService.likeArticle(member, articleId);

        return ResponseEntity
                .created(URI.create("/likes/" + articleId + "/" + articleLike.getId()))
                .build();
    }

}

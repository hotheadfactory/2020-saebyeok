package com.saebyeok.saebyeok.controller;

import com.saebyeok.saebyeok.domain.Comment;
import com.saebyeok.saebyeok.domain.Member;
import com.saebyeok.saebyeok.dto.CommentCreateRequest;
import com.saebyeok.saebyeok.service.CommentService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.net.URI;

@RequestMapping("/api")
@RequiredArgsConstructor
@RestController
public class CommentController {
    private final CommentService commentService;

    @PostMapping("/articles/{articleId}/comments")
    public ResponseEntity<Void> createComment(Member member, @PathVariable Long articleId,
                                              @RequestBody CommentCreateRequest commentCreateRequest) {
        Comment comment = commentService.createComment(member, commentCreateRequest);

        return ResponseEntity.
                created(URI.create("/articles/" + articleId + "/comments/" + comment.getId())).
                build();
    }

    @DeleteMapping("/articles/{articleId}/comments/{commentId}")
    public ResponseEntity<Void> deleteComment(Member member, @PathVariable Long articleId, @PathVariable Long commentId) {
        commentService.deleteComment(commentId);

        return ResponseEntity.
                noContent().build();
    }

}

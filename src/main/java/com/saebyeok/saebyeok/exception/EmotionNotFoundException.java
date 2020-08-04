package com.saebyeok.saebyeok.exception;

public class EmotionNotFoundException extends RuntimeException {
    public EmotionNotFoundException(Long emotionId) {
        super(emotionId + "에 해당하는 감정을 찾을 수 없습니다.");
    }
}

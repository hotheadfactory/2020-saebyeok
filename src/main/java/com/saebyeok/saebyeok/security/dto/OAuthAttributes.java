package com.saebyeok.saebyeok.security.dto;

import com.saebyeok.saebyeok.domain.Gender;
import com.saebyeok.saebyeok.domain.Member;
import com.saebyeok.saebyeok.domain.Role;
import lombok.Builder;
import lombok.Getter;

import java.util.Map;

@Getter
public class OAuthAttributes {
    private Map<String, Object> attributes;
    private String nameAttributeKey;
    private String id;
    private String loginMethod;

    @Builder
    public OAuthAttributes(Map<String, Object> attributes, String nameAttributeKey, String id, String loginMethod) {
        this.attributes = attributes;
        this.nameAttributeKey = nameAttributeKey;
        this.id = id;
        this.loginMethod = loginMethod;
    }

    public static OAuthAttributes of(String registrationId, String userNameAttributeName, Map<String, Object> attributes) {
        if ("naver".equals(registrationId)) {
            return ofNaver("id", attributes);
        }
        if ("google".equals(registrationId)) {
            return ofGoogle(userNameAttributeName, attributes);
        }
        throw new IllegalArgumentException();
    }

    private static OAuthAttributes ofGoogle(String userNameAttributeName, Map<String, Object> attributes) {
        return OAuthAttributes.builder()
                .id((String) attributes.get(userNameAttributeName))
                .loginMethod("google")
                .attributes(attributes)
                .nameAttributeKey(userNameAttributeName)
                .build();
    }

    private static OAuthAttributes ofNaver(String userNameAttributeName, Map<String, Object> attributes) {
        Map<String, Object> response = (Map<String, Object>) attributes.get("response");
        return OAuthAttributes.builder()
                .id((String) response.get(userNameAttributeName))
                .loginMethod("naver")
                .attributes(response)
                .nameAttributeKey(userNameAttributeName)
                .build();
    }

    public Member toEntity() {
        return Member.builder()
                .oauthId(id)
                .loginMethod(loginMethod)
                .role(Role.USER)
                .build();
    }
}
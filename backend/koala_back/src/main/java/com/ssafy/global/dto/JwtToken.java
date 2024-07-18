package com.ssafy.global.dto;

import lombok.Builder;

@Builder
public class JwtToken {
    private String grantType;
    private String accessToken;
    private String refreshToken;
}

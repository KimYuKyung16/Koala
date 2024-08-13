package com.ssafy.domain.lecture.handler;

import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.messaging.Message;
import org.springframework.messaging.MessageChannel;
import org.springframework.messaging.simp.stomp.StompCommand;
import org.springframework.messaging.simp.stomp.StompHeaderAccessor;
import org.springframework.messaging.support.ChannelInterceptor;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

import com.ssafy.global.auth.jwt.JwtTokenProvider;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component
@RequiredArgsConstructor
@Order(Ordered.HIGHEST_PRECEDENCE + 99)
public class LectureChatStompHandler implements ChannelInterceptor {
	private final JwtTokenProvider jwtTokenProvider;

	// STOMP 메시지가 채널로 전송되기 전에 호출되는 메서드: 메시지를 가로채어 처리
	@Override
	public Message<?> preSend(Message<?> message, MessageChannel channel) {
		// STOMP 메시지의 헤더 정보를 다루는 클래스로 헤더 정보 추출
		StompHeaderAccessor accessor = StompHeaderAccessor.wrap(message);
		// 클라이언트가 WebSocket 연결을 시도할 때만 검증을 수행
		if (accessor.getCommand() == StompCommand.CONNECT) {
			String bearerToken = accessor.getFirstNativeHeader("Authorization");
			log.info("Bearer token: {}", bearerToken);
			if (bearerToken != null && bearerToken.startsWith("Bearer ")) {
				String token = bearerToken.substring(7);
				log.info("CONNECT attempt with token: {}", bearerToken);

				if (!jwtTokenProvider.validateToken(token)) {
					log.error("Invalid JWT token: {}", token);
					throw new AccessDeniedException("유효하지 않은 토큰으로 접근이 차단되었습니다.");
				}
				log.info("Successfully authenticated with token: {}", token);
				// 만약 jwt에 authentication 객체가 들어있지 않다면!
				// Member member = userUtilityService.getUserById(id);
				// CustomUserDetails userDetails = new CustomUserDetails(member);
				// UsernamePasswordAuthenticationToken authentication =
				// 	new UsernamePasswordAuthenticationToken(
				// 		userDetails, null, userDetails.getAuthorities());
				// Authentication authentication = jwtTokenProvider.getAuthentication(token);
				// SecurityContextHolder.getContext().setAuthentication(authentication);

			} else {
				log.warn("Authorization header is missing or does not start with 'Bearer'");
				throw new AccessDeniedException("Authorization 헤더가 잘못되었습니다.");
			}
		}
		return message;
	}

}

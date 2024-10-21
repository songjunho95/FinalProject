package com.kh.FinalProject.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
public class SecurityConfig {
	
	@Autowired
	private JwtAuthenticationFilter jwtFilter;

	// 특정 http 요청에 대한 웹 기반 보안 구성. 인증/인가 및 로그아웃 설정
	@Bean
	public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
		return http
				.csrf(csrf -> csrf.disable())
				.logout(logout ->
				logout
				.logoutUrl("/logout") // 로그아웃 요청 URL
				.logoutSuccessUrl("/") // 로그아웃 성공했을때
				.permitAll()
				)
				.httpBasic(basic -> basic.disable())
				.sessionManagement(session -> session.sessionCreationPolicy(SessionCreationPolicy.STATELESS))
				.authorizeHttpRequests(authorize ->
					authorize
						//.requestMatchers("/member").authenticated() // /member 요청이 들어왔을 때 인증된 사람만
						//.requestMatchers("/admin").hasRole("ADMIN") // 권한이 ROLE_ADMIN인 경우만 들어올 수 있음
				.anyRequest().permitAll()
				)
				.addFilterBefore(jwtFilter, UsernamePasswordAuthenticationFilter.class)
				
				.build();
	}

	
	
	
}


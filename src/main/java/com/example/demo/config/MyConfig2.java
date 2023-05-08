package com.example.demo.config;

import java.util.*;

import org.springframework.context.annotation.*;
import org.springframework.security.config.annotation.web.builders.*;
import org.springframework.security.core.userdetails.*;
import org.springframework.security.core.userdetails.User.*;
import org.springframework.security.crypto.bcrypt.*;
import org.springframework.security.crypto.password.*;
import org.springframework.security.provisioning.*;
import org.springframework.security.web.*;

@Configuration
public class MyConfig2 {

	@Bean
	public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
		
		//기본설정 (로그인 필터가 securityFilterChain안에 설정) 
		http.formLogin()
			.loginPage("/sub33/mylogin")   //로그인 페이지 설정
			.defaultSuccessUrl("/list", true) //로그인 성공시 디폴트 페이지 :"/list"
			.usernameParameter("id")  //username
			.passwordParameter("pw");  //password
		
		http.csrf().disable();
		
		// /abc 경로 요청받았을 때 인증된 사용자만 접근 가능하다 : 로그인 페이지로 리다이렉트, 로그인 성공시 첫요청("/abc")으로 리다이렉트
		http.authorizeHttpRequests().requestMatchers("/abc").authenticated(); 
		http.authorizeHttpRequests().anyRequest().permitAll();  // 어떤 요청이든지 허용 O(/abc 제외)
		
		return http.build();
	}
	
	// 사용자 정보 만들기
	@Bean
	public UserDetailsService userDetailsService() {
		// 패스워드 암호화
		PasswordEncoder encoder = passwordEncoder();
		
		String pw1 = encoder.encode("pw1");
		String pw2 = encoder.encode("pw2");
		
		System.out.println(pw1);
		System.out.println(pw2);
		
		UserDetails user1 = User.builder()
				.username("user1")
				.password(pw1)
				.authorities(List.of())  //권한, null이면 안돼서 빈 리스트 넣음
				.build();
		UserDetails user2 = User.builder()
				.username("user2")
				.password(pw2)
				.authorities(List.of())  //권한
				.build();
		//매니저한테 건네줌
		return new InMemoryUserDetailsManager(user1, user2);
	}	
	
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
}

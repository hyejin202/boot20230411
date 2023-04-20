package com.example.demo.domain;

import java.time.*;

import lombok.*;

@Data
public class Dto06 {
	private String title;
	private LocalDate published;
	private Integer price;
	private LocalDateTime updated;
	private Double weight;
}

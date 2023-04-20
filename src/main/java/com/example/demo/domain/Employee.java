package com.example.demo.domain;

import lombok.*;

@Data
public class Employee {
	private int id;
	private String lastName;
	private String firstName;
	private String birth;
	private String photo;
	private String notes;
}

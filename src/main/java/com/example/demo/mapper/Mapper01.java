package com.example.demo.mapper;

import java.time.*;

import org.apache.ibatis.annotations.*;

import com.example.demo.domain.*;

@Mapper
public interface Mapper01 {
	
	@Select("""
			SELECT CustomerName
			FROM Customers
			WHERE CustomerID = 1
			""")
	String method1();  // 추상메소드
	
	@Select("""
			SELECT FirstName
			FROM Employees
			WHERE EmployeeID = 1
			""")
	String method2();
	
	@Select("""
			SELECT SupplierName
			FROM Suppliers
			WHERE SupplierID = 1
			""")
	String method3();
	
	@Select("""
			SELECT CustomerName
			FROM Customers
			WHERE CustomerID = #{id}
			""")
	String method4(Integer id);  //엄격하지 않아 String id도 됨
	
	@Select("""
			SELECT lastName
			FROM Employees
			WHERE EmployeeId = #{id}
			""")
	String method5(Integer id);
	
	@Select("""
			SELECT Price
			FROM MyTable33
			LIMIT 1
			""")
	Integer method6();
	
	@Select("""
			SELECT Weight
			FROM MyTable33
			LIMIT 1
			""")
	Double method7();
	
	@Select("""
			SELECT Published
			FROM MyTable33
			LIMIT 1
			""")
	LocalDate method8();
	
	@Select("""
			SELECT Updated
			FROM MyTable33
			LIMIT 1
			""")
	LocalDateTime method9();
	
	@Select("""
			SELECT Title, 
					Published,
					Price, 
					Updated,
					Weight 
			FROM MyTable33
			LIMIT 1
			""")
	//컬럼명과 (대소문자 구분없이) 매치되는 빈의 프로퍼티명, 해당 프로퍼티가 없으면 안넣음
	Dto06 method10();
	
	@Select("""
			SELECT Name, Age, Price, Birth, Inserted
			FROM MyTable32
			LIMIT 1			
			""")
	Dto05 method11();
	

	@Select("""   
			SELECT CustomerId AS Id, 
					CustomerName  Name,  
					ContactName,
					Address, City,
				 	PostalCode,
					Country
			FROM Customers
			WHERE CustomerId = 7
			""")
	//프로퍼티명이 다르면 매칭 안됨 (custoemrId, CustomerName)
	// 별칭으로 프로퍼티명 맞추기 (as 생략가능)
	Customer method12();
	
	@Select("""
			SELECT SupplierId id,
					SupplierName name,
					ContactName,
					Address,
					City,
					PostalCode,
					Country,
					Phone
			FROM Suppliers
			WHERE SupplierId = 2
			""")
	Supplier method13();
	
	@Select("""
			SELECT 
				EmployeeId id,
				LastName,
				FirstName,
				BirthDate birth,
				Photo,
				Notes
			FROM Employees
			WHERE EmployeeId = 5
			""")
	Employee method14();













}

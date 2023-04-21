package com.example.demo.mapper;

import java.util.*;

import org.apache.ibatis.annotations.*;

import com.example.demo.domain.*;

@Mapper
public interface Mapper02 {
	
	@Select("""
			SELECT CustomerName
			FROM Customers
			""")
	List<String> sql1();
	
	
	//모든 직원의 lastName 출력
	@Select("""
			SELECT LastName
			FROM Employees
			""")
	List<String> sql2();
	
	@Select("""
			SELECT LastName, FirstName
			FROM Employees
			""")
	List<Dto07> sql3();
	
	@Select("""
			SELECT ProductName, Price
			FROM Products
			""")
	List<Dto08> sql4();
	
	@Select("""
			SELECT ProductName 
			FROM Products
			WHERE CategoryId = #{cid}
			""")
	List<String> sql5(Integer cid);
	
	@Select("""
			SELECT CustomerName
			FROM Customers
			WHERE Country = #{c}
			""")
	List<String> sql6(String c);
	
	
	@Select("""
			SELECT ProductName, Price
			FROM Products
			WHERE CategoryId = #{cid}
			""")
	List<Dto08> spl7(Integer cid);
	//메소드 작성
	// 작성된 메소드 Controller21.method7에서 호출
	
	
	
	
	
	
	
	
	
	
}

package com.example.demo.mapper;

import java.util.*;

import org.apache.ibatis.annotations.*;

import com.example.demo.domain.*;

@Mapper
public interface Mapper07 {

	@Select("""
			<script>
				<bind name="pattern" value="'%' + keyword + '%'" />
			SELECT 
				CustomerId id,
				CustomerName name, 
				ContactName,
				Address
			FROM Customers
			ORDER BY id DESC
			WHERE customerName LIKE #{pattern}
			</script>
			""")
	List<Customer> sql1(String keyword);
	
	@Select("""
			<script>
				<bind name="p" value="'%' + keyword + '%'" />
			SELECT 
				EmployeeId id,
				FirstName, 
				LastName
			FROM Employees
			ORDER BY EmployeeId DESC
			WHERE FirstName LIKE #{p}
					OR LastName LIKE #{p}
			</script>
			""")
	List<Employee> sql2(String s);

	@Select("""
			<script>
			SELECT COUNT(*) 
			FROM Customers
			
			<if test="false">
			WHERE CustomerId = 10
			</if>
			</script>
			""")  //if절이 true이면 where절이 붙고 false이면 where절이 붙지 않음
	Integer sql3();
	
	@Select("""
			<script>
			SELECT COUNT(*) 
			FROM Customers
			
			<if test="keyword != null">			
				<bind name="pattern" value="'%' + keyword + '%'" />
				WHERE CustomerName LIKE #{pattern}
			</if>
			</script>
			""")
	Integer sql4(String keyword);

	@Select("""
			<script>
			SELECT AVG(Price)
			FROM Products
			
			<if test="${i neq 0}">
				WHERE CategoryId = #{cid}
			</if>
			<script>
			""")
	Double sql5(int cid); 
	
	
}

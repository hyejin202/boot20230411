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
				customerId id,
				customerName name,
				contactName,
				address
			FROM
				Customers
			WHERE
				CustomerName LIKE #{pattern}
			ORDER BY id DESC
			</script>
			""")
	List<Customer> sql1(String keyword);

	@Select("""
			<script>
			<bind name="p" value="'%' + s + '%'" />

			SELECT
				EmployeeId id,
				FirstName,
				LastName
			FROM
				Employees
			WHERE
				FirstName LIKE #{p}
				OR LastName LIKE #{p}
			ORDER BY id DESC
			</script>
			""")
	List<Employee> sql2(String s);

	@Select("""
			<script>
			SELECT COUNT(*)
			FROM Customers
			
			<if test="false">
			WHERE CustomerID = 10
			</if>
			</script>
			""")  //if절이 true이면 where절이 붙고 false이면 where절이 붙지 않음
	Integer sql3();

	
	@Select("""
			<script>
			
			SELECT COUNT(*)
			FROM Customers
			
			<if test="keyword neq null">
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
			
			<if test="cid neq 0">
				WHERE CategoryId = #{cid}
			</if>
			</script>
			""")
	Double sql5(int cid);
}









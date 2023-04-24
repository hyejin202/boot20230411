package com.example.demo.mapper;

import org.apache.ibatis.annotations.*;
import org.apache.ibatis.type.*;

import com.example.demo.domain.*;

@Mapper
public interface Mapper05 {
	
	@Update("""
			UPDATE MyTable39
			SET
				Col2 = '수정된 값',
				Col3 = 9999
			""")
	int sql1();
	
	@Update("""
			UPDATE MyTable39 
			SET 
				Col2 = #{val1},
				Col3 = #{val2}
			WHERE 
				Col1 = #{key}
			""")
	int sql2(Integer key, String val1, Integer val2);
	
	@Update("""
			UPDATE Customers
			SET
				CustomerName = #{name},
				Country = #{country}
			WHERE 
				CustomerId = #{id}
			""")
	int sql3(Integer id, String name, String country);
	
	//여러 파라미터 - 자바빈 사용
	@Update("""
			UPDATE Customers
			SET
				CustomerName = #{name},
				ContatcName = #{contactName},
				Address = #{address},
				City = #{city},
				PostalCode = #{postalCode},
				Country = #{country}
			WHERE 
				CustomerId = #{id}
			""")
	int sql4(Customer customer);
	
	@Select("""
			SELECT 
				CustomerId id,
			 	CustomerName name,
			 	ContactName,
			 	Address,
			 	City,
			 	Country,
			 	 PostalCode
			FROM Customers
			WhERE CustoemrId = #{id}
			""")
	Customer sql5(int id);
	
	@Select("""
			SELECT 
				EmployeeId id,
				LastName,
				FirstName,
				BirthDate birth,
				Photo,
				Notes
			FROM Employees
			WHERE EmployeeId = #{id}
			""")
	Employee sql6(int id);
	
	@Update("""
			UPDATE Employees
			SET 
				lastName = #{lastName},
				firstName = #{firstName},
				birthDate = #{birth},
				photo = #{photo},
				notes = #{notes}
			WHERE EmployeeId = #{id}
			""")
	int sql7(Employee employee);
}

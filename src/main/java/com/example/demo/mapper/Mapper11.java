package com.example.demo.mapper;

import org.apache.ibatis.annotations.*;

import com.example.demo.domain.*;
@Mapper
public interface Mapper11 {

	@Select("""
			SELECT 
			 	c.categoryId,
			 	c.categoryName,
			 	c.description,
			 	p.productName,
			FROM Categories c JOIN Products p
			ON c.CartegoryId = p.CategoryId
			WHERE c.CategoryId = #{id}
			
			""")
	@ResultMap("categoryResult")
	Category sql1(int id);
	
	@Select("""
			SELECT 
				c.categoryId,
				c.categoryName,
				c.description,
				p.productName,
				p.price
			FROM Categories c JOIN Products p
				ON c.CartegoryId = p.CategoryId
			WHERE c.CategoryId = #{id}
			""")
	@ResultMap("categoryResultMap")
	Category sql2(int id);

	
	@Select("""
			SELECT 
				s.supplierId,
				s.supplierName,
				s.contactName
				s.address,
				s.city,
				s.country,
				s.postalCode,
				s.phoneNumber,
				p.productName,
				p.price
			FROM Suppliers s JOIN Products p
				ON s.supplierId = p.supplierId
			WHERE s.supplierId = #{id}
			""")
	@ResultMap("supplierResultMap")
	Supplier sql3(int id);

}

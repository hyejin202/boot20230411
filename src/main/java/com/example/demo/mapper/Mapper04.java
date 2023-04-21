package com.example.demo.mapper;

import org.apache.ibatis.annotations.*;

@Mapper
public interface Mapper04 {
	
	@Delete("""
			DELETE FROM MyTable40 
			WHERE Id = 5;
			""")
	// 영향 미친 레코드(행)의 수 리턴
	int sql1();
	
	@Delete("""
			DELETE FROM MyTable39
			WHERE Col1 = #{id}
			""")
	int sql2(Integer id);
	
	@Delete("""
			DELETE FROM Customers
			WHERE CustomerId = #{id}
			""")
	int sql3(Integer id);
	
	
}

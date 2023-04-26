package com.example.demo;

import org.apache.catalina.core.*;
import org.springframework.beans.factory.*;
import org.springframework.boot.*;
import org.springframework.boot.autoconfigure.*;

import com.example.demo.component.*;
import com.example.demo.domain.*;

@SpringBootApplication
public class Boot20230411Application {

	public static void main(String[] args) {
		//Spring Beans : 스프링이 관리하는 객체들
	 	ApplicationContext context =  (ApplicationContext) SpringApplication.run(Boot20230411Application.class, args);
	 	Object o = ((BeanFactory) context).getBean("bean1");
	 	System.out.println(o);
	 	
	 	Object o2 = ((BeanFactory) context).getBean("employee");
	 	Object o3 = ((BeanFactory) context).getBean("employee");
	 	System.out.println(o2);
	 	System.out.println(o3);
	 	
	 	Object o4 = context.getBean("bean2");
	 	Object o5 = context.getBean("bean3");
	 	
	 	System.out.println(o4);
	 	System.out.println(o5);
	 	
	 	ComponentA c1 = (ComponentA) o4;
	 	System.out.println(c1.getComp());
	 	ComponentC c3 = (ComponentC) context.getBean("bean4");
	 	System.out.println(c3.getBean("bean4"));
	 	
	 	Object c4 = context.getBean("componentD");
	 	System.out.println(c4);
	 	ComponentE c5 = (ComponentE) context.getBean("componentE");
	 	System.out.println(c5.getComp());
	 	
	 	
	}

	//우리가 객체를 직접 만들때
	public void legacy() {
		Object o = new Object();// 직접 만든 객체
		Employee e = new Employee();  // 직접 만든 객체
		
		e.setId(100); //프로퍼티 직접 할당
		
	}
}

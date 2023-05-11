$("#button1").click(function() {
	$.ajax("/sub35/link1", {method:"post"});
});
$("#button2").click(function() {
	$.ajax("/sub35/link2", {method:"post"});
});


$("#button3").click(function() {
	$.ajax("/sub35/link3", {
		method: "post", 
		data: "name=son"
	});
});
$("#button4").click(function() {
	$.ajax("/sub35/link4", {
		method: "post", 
		data: "address=seoul&price=77"
	});
});
$("#button5").click(function() {
	$.ajax("/sub35/link5", {
		method:"post", 
		data: "name=발&score=7.5&eamil=val@eamil.com"
	});
});
$("#button6").click(function() {
	$.ajax("/sub35/link6", {
		method: "post",
		data: "address=청주&product=커피&price=5.5"
	});
});


$("#button7").click(function() {
	const obj = {name: "son"};
	
	$.ajax("/sub35/link7", {
		method: "post", 
		// data: '{"name" : "son"}',
		data : JSON.stringify(obj),
		contentType: "application/json"
	});
});
$("#button8").click(function() {
	const data = {
		address : "서울",
		name : "박지성"
	};
	
	$.ajax("/sub35/link8", {
		method: "post",
		contentType: "application/json",
		//data: '{"address" : "서울", "name" : "박지성"}'
		data: JSON.stringify(data)
	});
});
$("#button9").click(function() {
	const data = {
		age : 33.5,
		name : "kang",
		married : true
	};
	
	$.ajax("/sub35/link9", {
		method: "post",
		contentType: "application/json",
		//data: `{"age" : 33.5, "name" : "kang", "married" : true}`
		data: JSON.stringify(data)
	});
});
$("#button10").click(function() {
	const data = {
		address : null,
		age : 30,
		name : "손흥민"
	};
	
	$.ajax("/sub35/link10", {
		method: "post",
		contentType: "application/json",
		//data: '{"address" : null, "age" : 30, "name" : "손흥민"}'
		data: JSON.stringify(data)
	});
});
$("#button11").click(function() {
	const data = {
		book : {
			title : "java",
			price : 300
		},
		address : "seoul"
	};
	
	$.ajax("/sub35/link11", {
		method: "post",
		contentType: "application/json",
		//data: '{"book" : {"title" : "java", "price" : 300}, "address" : "seoul"}'
		data: JSON.stringify(data)
	});
});
$("#button12").click(function() {
	const data = {
		food : [
			"pizza", 
			"coke", 
			"coffee"
		],
		store : "피자스쿨"
	};
	
	$.ajax("/sub35/link12", {
		method: "post",
		contentType: "application/json",
		//data: '{"food" : ["pizza", "coke", "coffee"], "store" : "피자스쿨"}'
		data: JSON.stringify(data)
	});
});
$("#button13").click(function() {
	const data = ["pizza", "coke", "coffee"];
	
	$.ajax("/sub35/link13", {
		method: "post",
		contentType: "application/json",
		//data: '["pizza", "coke", "coffee"]'
		data: JSON.stringify(data)
	});
});
$("#button14").click(function() {
	const data = [
		{
			name : "강백호",
			pos : "파워포워드"
		},
		{
			name :"서태웅",
			pos : "스몰포워드" 
		},
		{
			name :"송태섭",
			pos : "포인트가드" 
		}
	]
	
	$.ajax("/sub35/link14", {
		method: "post",
		contentType: "application/json",
		//data: ' [{"name" : "강백호", "pos" : "파포"}, {"name" : "서태웅", "pos" : "스포"}]'
		data: JSON.stringify(data)
	});
});







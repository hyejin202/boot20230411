$("#btn1").click(function() {
	const obj = {
		name : "정대만",
		age : 22
	}
	$.ajax("/sub36/link1", {
		method : "post",
		contentType : "application/json",
		data: JSON.stringify(obj)
	});
});
$("#btn2").click(function() {
	const obj = {
		name : "송태섭",
		eamil : "song@gmail.com",
		score : 99.99,
		married: true
	}
	
	$.ajax("/sub36/link2", {
		method: "post",
		contentType: "application/json",
		data: JSON.stringify(obj)
	})
});
$("#btn3").click(function() {
	const data = {
		name : "태웅",
		hobby : [
			"독서",
			"농구",
			"음악감상"
		]
	}
	$.ajax("/sub36/link3", {
		method : "post",
		contentType : "application/json",
		data: JSON.stringify(data)
	});
});
$("#btn4").click(function() {
	const data = {
		phone : [
			"010-1234-5678",
			"010-0978-4321",
			"010-5673-5467"
		]
	}
	$.ajax("/sub36/link4", {
		method : "post",
		contentType: "application/json",
		data: JSON.stringify(data)
	})
})
$("#btn5").click(function() {
	const data = {
		title : "java",
		publisher : "한빛",
		writer : {
			name : "정대만",
			age : 44
		}
	}
	$.ajax("/sub36/link5", {
		method : "post",
		contentType : "application/json",
		data : JSON.stringify(data)
	})
})
$("#btn6").click(function() {
	const data = {
		city : "서울",
		price : 2000,
		etc : {
			name : "이찬혁",
			email : "lee@gmail.com",
			score : 99.99,
			married : false
		}
	}
	$.ajax("/sub36/link6", {
		method : "post",
		contentType : "applicatin/json",
		data : JSON.stringify(data)
	})
})
$("#btn7").click(function() {
	const data = [
		{
			name : "이강인",
			age :  22
		},
		{
			name : "손흥민",
			age :  33
		},
		{
			name : "이용",
			age :  44
		}
	]
	$.ajax("/sub36/link7", {
		method : "post",
		contentType : "application/json",
		data : JSON.stringify(data)
	})
})

///////////////////////////////////////////////

$("#btn8").click(function() {
	const name = $("#inputName").val();
	const age = $("#inputAge").val();
	
	const data = {
		name : name,
		age : age
	};
	$.ajax("/sub36/link1", {
		method : "post",
		contentType : "application/json",
		data: JSON.stringify(data)
	})
});

$("#btn9").click(function() {
	const name = $("#inputName2").val();
	const email = $("#inputEamil2").val();
	const score = $("#inputScore2").val();
	const married = $("#inputMarried2").val();
	
	const data = {
		name : name,
		email : email,
		score : score,
		married : married
		
	};
	$.ajax("/sub36/link2", {
		method : "post",
		contentType : "application/json",
		data: JSON.stringify(data)
	})
})





$("#btn1").click(function() {
	$.ajax("/sub39/link1", {
		success: function() {
			console.log("성공");
		},
		error: function() {
			console.log("실패");
		},
		complete: function() {
			console.log("성공이든 실패든");
		}
	});
})
$("#btn2").click(function() {
	$.ajax("/sub39/link2", {
		success: function() {
			console.log("성공");
		},
		error: function() {
			console.log("실패");
		},
		complete: function() {
			console.log("성공이든 실패든");
		}
	});
})
$("#btn3").click(function(){
	//성공(200) 응답을 받아서 
	//콘솔에 성공!!!! 출력
	$.ajax("/sub39/link3", {
		success: function() {
			console.log("성공!!!!");
		}
		
	})
})
$("#btn4").click(function(){
	//실패(500) 응답을 받아서 
	//콘솔에 실패!!!! 출력
	$.ajax("sub39/link4", {
		error: function() {
			console.log("실패!!!");
		}
		
	})
})
$("#btn5").click(function() {
	$.ajax("/sub39/link1")
		.done(function() {
			console.log("done메소드 사용, 성공!!!!")
		})
		.fail(function() {
			console.log("fail메소드 사용, 실패!!!!")
		})
		.always(function() {
			console.log("always메소드 사용, 성공이든 실패든")
		});
})
$("#btn6").click(function() {
	$.ajax("/sub39/link2")
		.done(function() {
			console.log("done메소드 사용, 성공!!!!")
		})
		.fail(function() {
			console.log("fail메소드 사용, 실패!!!!")
		})
		.always(function() {
			console.log("always메소드 사용, 성공이든 실패든")
		});
})

$("#btn7").click(function() {
	$.ajax("/sub39/link3")
		.done(function() {
			console.log("성공")
		})
})

$("#btn8").click(function() {
	$.ajax("/sub39/link4")
		.fail(function() {
			console.log("실패")

	})
})
$("#btn9").click(function() {
	$.ajax("/sub39/link9", {
		success: function(data) {
			console.log("링크 9 성공");
			console.log(data);  // 응답 본문 출력
		}
	})
})
$("#btn10").click(function() {
	//응답본문(현재시간)이 콘솔에 출력
	$.ajax("/sub39/link10", {
		success: function(data) {
			console.log("현재시간");
			//console.log(data);
			$("#res10").text(data);
		}
	});
})
$("#btn11").click(function() {
	//응답본문(현재시간)이 콘솔에 출력
	$.ajax("/sub39/link11", {
		success: function(data) { //json객체를 파싱해서 넣음
			$("#res11").text(data.name);
		}
	});
})
$("#btn12").click(function() {
	$.ajax("/sub39/link12", {
		//content-type : application.json
		//body: {"address": "cheongju", "city": "Busan", "phone": "samsung"}
		success: function(data) {
			console.log("address : ", data.address);
			console.log("city : ", data.city);
			console.log("phone : ", data.phone);
		}
	})
})
$("#btn13").click(function() {
	$.ajax("/sub39/link13", {
		success: function(data) {
			for(let i = 0; i< data.length; i++) {
				console.log(data[i]);
			}
		}
	})
})
$("#btn14").click(function() {
	const cid = $("#categoryInput").val();
	
	$.ajax("/sub39/link14?cid=" + cid, {
		success: function(data) {
			//console.log(data);
			$("#res14").empty();
			for(let i = 0; i<data.length; i++) {
				$("#res14").append(data[i].productName + "<br>");
			}
			}
		}
	)
})
$("#btn15").click(function() {
	const cid = $("#categoryInput").val();
	
	$.ajax("/sub39/link14?cid=" + cid, {
		success: function(data) {
			//console.log(data);
			$("#res15").empty();
			$("#res15").append(`
				<table class="table">
					<thead>
						<tr>
							<th>
								상품명
							</th>
							<th>
								가격
							</th>
						</tr>
					</thead>
				</table>
			`);
		$("#res15 > .table").append("<tbody />");
		for(let i = 0; i < data.length; i++) {
				$("#res15 tbody")
				.append(`
					<tr>
						<td>
							${data[i].productName}
						</td>
						<td>
							${data[i].price}
						</td>
					</tr>
				`);
			
			}
		}
	})
})



$("#button1").click(function() {
	$.ajax("/sub34/link1");
});

$("#button2").click(function() {
	$.ajax("/sub34/link2");
});

$("#button3").click(function() {
	$.ajax("/sub34/link3?name=son");
});

$("#button4").click(function() {
	$.ajax("/sub34/link4?address=서울");
});

$("#button5").click(function() {
	$.ajax("/sub34/link5?name=son&age=22");
});

$("#button6").click(function() {
	$.ajax("/sub34/link6?food=pasta&price=13000");
});

$("#button7").click(function() {
	$.ajax("/sub34/link7?address=cheongju&name=park&age=52");
});

$("#button8").click(function() {
	$.ajax("/sub34/link8?price=3.14&product=lotion&category=beauty");
});

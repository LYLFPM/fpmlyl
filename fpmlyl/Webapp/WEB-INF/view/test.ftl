<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>For You</title>


<link href="${request.getContextPath()}/css/default.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="${request.getContextPath()}/js/jquery.js"></script>
<script type="text/javascript" src="${request.getContextPath()}/js/garden.js"></script>
<script type="text/javascript" src="${request.getContextPath()}/js/functions.js"></script>

</head>

<body>

<div id="mainDiv">
	<div id="content" style="width: 1110px; height: 625px; margin-top: 10px; margin-left: 396.5px;">
		<div id="code" style="margin-top: 112.5px;">
			<span class="comments">/**</span><br>
			<span class="space"><span class="comments">*2015-05-10,</span><br>
			<span class="space"><span class="comments">*2016-11-04.</span><br>
			<span class="space"><span class="comments">*/</span><br>
			Boy name = <span class="keyword">Mr</span> LI<br>
			Girl name = <span class="keyword">Mrs</span> ZHANG<br>
			<span class="comments">// Fall in love river. </span><br>
			The boy love the girl;<br>
			<span class="comments">// They love each other.</span><br>
			The girl loved the boy;<br>
			<span class="comments">// AS time goes on.</span><br>
			The boy can not be separated the girl;<br>
			<span class="comments">// At the same time.</span><br>
			The girl can not be separated the boy;<br>
			<span class="comments">// Both wind and snow all over the sky.</span><br>
			<span class="comments">// Whether on foot or 5 kilometers.</span><br>
			<span class="keyword">The boy</span> very <span class="keyword">happy</span>;<br>
_</span></span></span></div>
		<div id="loveHeart">
			<canvas id="garden" width="670" height="625"></canvas>
			<div id="words" style="position: absolute; top: 205px; left: 906.5px;">
				<div id="messages" style="display: block;">
					这是我们在一起过的时光。
					<div id="elapseClock"><span class="digit">1680</span> days <span class="digit">20</span> hours <span class="digit">30</span> minutes <span class="digit">00</span> seconds</div>
				</div>
				<div id="loveu" style="display: block;">
					希望你永远快乐。<br>
					<div class="signature">- 爱过你的人</div>
				</div>
			</div>
		</div>
	</div>
	<div id="copyright">
		<a href="#">....</a><br>
		<a href="#">....</a><br>
		
	</div>
</div>

<script type="text/javascript">
var offsetX = $("#loveHeart").width() / 2;
var offsetY = $("#loveHeart").height() / 2 - 55;
var together = new Date();
together.setFullYear(2016,11 , 4);
together.setHours(20);
together.setMinutes(0);
together.setSeconds(0);
together.setMilliseconds(0);

if (!document.createElement('canvas').getContext) {
	var msg = document.createElement("div");
	msg.id = "errorMsg";
	msg.innerHTML = "Your browser doesn't support HTML5!<br/>Recommend use Chrome 14+/IE 9+/Firefox 7+/Safari 4+"; 
	document.body.appendChild(msg);
	$("#code").css("display", "none")
	$("#copyright").css("position", "absolute");
	$("#copyright").css("bottom", "10px");
	document.execCommand("stop");
} else {
	setTimeout(function () {
		startHeartAnimation();
	}, 5000);

	timeElapse(together);
	setInterval(function () {
		timeElapse(together);
	}, 500);

	adjustCodePosition();
	$("#code").typewriter();
}
</script>


</body></html>
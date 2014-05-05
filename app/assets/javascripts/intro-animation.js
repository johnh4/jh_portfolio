$(function(){
	console.log('cl statement from intro-animation.js');
	$('#i-am-a').animate({
		opacity: 1,
		left: "+=1000",
		top: "+=1000"
	}, 1000);
	$('#i-am .dev').animate({
		opacity: 1,
		left: "+=1000"
	}, 2000);
	$('#i-do').animate({
		opacity: 1,
		right: "+=2100"
	}, 3000);

	delayAnimation(1500, 
		function(){
			$('#projects-cont').animate({
				right: "+=1200",
				opacity: 1
			}, 2000);
	});

	$('#with').animate({
		opacity: 1,
		top: "-=5000"
	}, 4000);
	
	function delayAnimation(delay, animateFunction){
		window.setTimeout(function(){
			animateFunction();
		}, delay);
	}
});
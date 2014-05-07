$(document).ready(function(){
	console.log('page ready.');
	var skills = ["Ruby on Rails","Object-Oriented JavaScript", "Robust Testing", "HTML5/CSS3/SASS", "jQuery"]
	var index = 0;
	var skillInt;

	window.setTimeout(function(){
		skillInt = window.setInterval(function(){
			var skillEl = $('#skills span');

			if(index >= skills.length - 1){
				index = 0;
			} else {
				index++;
			}
			var replacement = skills[index];
			//console.log('index', index, 'replacement', replacement);
					
			fader(skillEl, replacement);

			//shuffler(skillEl, replacement);
			
		}, 1000);	
	}, 5000);
	
	function fader(el, replacement){
		//$('#down-arrow').fadeOut();
		el.fadeOut(function(){
			el.text(replacement);
			//$('#down-arrow').fadeIn();
		});
		el.fadeIn();
	}
	function shuffler(el, replacement){
		el.shuffleLetters({
			"text": replacement
		});
	}
	$('#navbar').on('click', 'a', function(e){
		e.preventDefault();
		clearInterval(skillInt);
		// var txt = $(this).text();
		// console.log('txt',txt);
		// $(this).shuffleLetters({
		// 	"text": txt
		// });
	});
	$('#my-name').hover(function(e){
		console.log('hovering over name');
		var txt = $(this).text();
		console.log('txt',txt);
		$(this).shuffleLetters({
			"text": txt
		});
	}, function(e){
	});
});
$(document).ready(function(){
	console.log('page ready.');
	var skills = ["Ruby on Rails","Object-Oriented JavaScript", "jQuery", "HTML5/CSS3/SASS", "Robust Testing"]
	var index = 0;
	var skillInt;

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
	}, 3000);
	
	function fader(el, replacement){
		el.fadeOut(function(){
			el.text(replacement);
		});
		el.fadeIn();
	}
	function shuffler(el, replacement){
		el.shuffleLetters({
			"text": replacement
		});
	}
	$('#navbar').on('click', 'a', function(){
		clearInterval(skillInt);
	});
});
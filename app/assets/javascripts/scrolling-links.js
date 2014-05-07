$(document).ready(function(){
	$('#nav').find('a').on('click', function(){
		scrollToAnchor($(this));
	});
	
	// scroll to the link's section
	function scrollToAnchor(el){
		var href = el.attr('href');
		// it's sometimes necessary to remove the path from the url
		var justSection = /(#.+)$/.exec(href)[1];
		var offset = $(justSection).offset();
		$('body,html').animate({ scrollTop: offset.top - '50' + 'px'});
	}
});
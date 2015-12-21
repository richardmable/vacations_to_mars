$(document).ready(function() {

$(".lightbox-outer").css({
	'opacity':'0',
	});


$("body").mouseover(function(){
	$(".lightbox-outer").css({
	'opacity':'1'
	})
});


$(".lightbox-outer").click(function(){
		$(".lightbox-outer").fadesOut(1000);
	});

});
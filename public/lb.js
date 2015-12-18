$(document).ready(function() {

	$(".lightbox-image").click(function(){
		var url = $(this).data("image-link");
		// declared variable url data image link of the lightbox image class
		console.log(url);
		// change inner html of the div to the html
		$(".lightbox-inner").html('<img src="' + url + '"/>');
		$(".lightbox-outer").show();
	});

	$(".lightbox-outer").dblclick(function(){
		$(".lightbox-outer").hide();
	});
});
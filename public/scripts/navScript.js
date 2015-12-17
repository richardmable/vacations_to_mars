$(document).ready(function(){

	$('.slideout-menu-toggle').on('click', function(event){
		event.preventDefault();

		//create vars for menus. slideOutMenuWidth is for moving the menu back
		var slideOutMenu = $('.slideout-menu');
		var slideOutMenuWidth = $('.slideout-menu').width;

		//toggle open class
		slideOutMenu.toggleClass("open")

		//slide menu
		if (slideOutMenu.hasClass("open")){
				slideOutMenu.animate({
					left: "0px"
				});
		} else {
			slideOutMenu.animate({
				left: "-250px"
			}, 250);
		}
	});
});
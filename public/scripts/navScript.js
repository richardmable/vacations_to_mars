$(document).ready(function(){


	//script for toggle menu to appear and dissapear
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

	//script for having pop out sub menu "hang" for a second
	//uses fade in, fade out, hover, and make sure to go back
	//to display: none

	$(".slideout-menu ul .slideout-booking").on('mouseenter', function(){
		$(".slideout-menu ul .slideout-booking ul").show(500)
	});

	$(".slideout-menu ul .slideout-booking ul").on('mouseleave', function(){
		$(".slideout-menu ul .slideout-booking ul").hide(500)
	});

	$(".slideout-menu ul .slideout-activities").on('mouseenter', function(){
		$(".slideout-menu ul .slideout-activities ul").show(500)
	});

	$(".slideout-menu ul .slideout-activities ul").on('mouseleave', function(){
		$(".slideout-menu ul .slideout-activities ul").hide(500)
	});
});
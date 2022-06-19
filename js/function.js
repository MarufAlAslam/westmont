// JavaScript Document
$(document).ready(function(e) {
	$(".device-nav").click(function(){
		$(this).find('span').toggleClass('fa-times').toggleClass('fa-bars');
		$("nav").toggleClass("reveal");
	});
	
	/*** Slider ***/
	$('#slider').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: false,
		dots: false,
		infinite: true,
		speed: 1500,
		autoplay: true,
		autoplaySpeed: 30000,
		draggable: true,
		arrows: false,
		cssEase: 'cubic-bezier(0.7, 0, 0.3, 1)',
		touchThreshold: 100,
		fade: true,
		focusOnSelect: true,
		pauseOnHover:true
	  });
	$('#btn2').hide();
	$('#btn1').on('click', function(e) { 
		$('#btn2').show();
		$('#btn1').hide();
		
	$('#slider').slick('slickSetOption', {
		'autoplay': false
	  }, false);
	})
	$('#btn2').on('click', function(e) {
		$('#btn2').hide();
		$('#btn1').show();
	})
});
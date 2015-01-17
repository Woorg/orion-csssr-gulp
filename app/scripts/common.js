$(function () {
	'use strict';
	// bxSlider
	$('.header-slider').bxSlider({
		mode: 'fade',
		responsive: true,
		adaptiveHeight: true,
		touchEnabled: true,
		controls: false,
		auto: true,
		pause: 4000,
		pager: true,
		pagerSelector: '.header-pag'
	});
	// Nav
	var nav = $('.js-nav'),
		nav_btn = $('.js-nav_btn');

	nav_btn.on('click', function () {
		if (nav_btn.hasClass('is-active')) {
			nav.removeClass('is-active');
			nav_btn.removeClass('is-active');
		}else {
			nav.addClass('is-active');
			nav_btn.addClass('is-active');
		}return false;
	});
	nav.mouseleave(function () {
		nav.removeClass('is-active');
	});

	$('.header-body').css({backgroundSize: 'cover'});
});

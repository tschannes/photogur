// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

function initialize() {
	$('img, footer').hide();
	$('img').each(function(index) {
		setTimeout(function(el) {
			el.fadeIn();
		}, index * 500, $(this));
	});
	$('footer').fadeIn(5000);

	$("img, legend").hover(function() {
		$(this).parents().children('legend').toggleClass("active");
	});
}
$(document).ready(initialize);
$(document).on('page:load', initialize);
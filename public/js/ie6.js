// PNG fix
DD_belatedPNG.fix('.features,li.entry img,.logo,.search input,.tear,.star,.tip,li.vote a, p.link a,.countdown,.footer-tear,.filter .submit-arrow, .tear-fade, .voted div img, .button img, button img, form.enter-comp, .arrow, .share p, .share ul li a, .submitted-design img, .copy-block img, img.t-shirt, .prizes img, .use-or-upload img, .screenshot, form.check, .fade img, .flash, .chart li span.bar-count span, .charts .grid_4 img');


// css selectors IE6 doesn't handle
$(document).ready(function() {
////////////////////////////////

$("nav select, .filter input[type='submit']").css("display", "none");
$("body > div.tear").css("position", "relative").css("bottom", "5px");
$("nav.main ul li#nav1").css("position", "relative").css("top", "17px");
$(".splash .content form .checkbox label[for='under-age']").css("margin-top", "25px");



////////////////////////////////
});
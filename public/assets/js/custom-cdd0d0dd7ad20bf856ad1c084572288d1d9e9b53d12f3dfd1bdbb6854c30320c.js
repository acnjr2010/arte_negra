$(document).ready(function(){$(window).scroll(function(){$(".navbar").offset().top>50?$(".navbar-fixed-top").addClass("top-nav-collapse"):$(".navbar-fixed-top").removeClass("top-nav-collapse")}),$(function(){$("a.page-scroll").bind("click",function(t){var e=$(this);$("html, body").stop().animate({scrollTop:$(e.attr("href")).offset().top},1500,"easeInOutExpo"),t.preventDefault()})}),$("body").scrollspy({target:".navbar-fixed-top",offset:51}),$("#owl-hero").owlCarousel({navigation:!0,slideSpeed:300,paginationSpeed:400,singleItem:!0,transitionStyle:"fadeUp",autoPlay:!0,navigationText:["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"]});var t=$(window).height();$("#owl-hero .item").css("height",t),$(window).resize(function(){$("#owl-hero .item").css("height",t)}),$("#owl-testi").owlCarousel({navigation:!1,paginationSpeed:400,singleItem:!0,transitionStyle:"backSlide",autoPlay:!0}),$("#fun-facts").bind("inview",function(t,e){e&&($(this).find(".timer").each(function(){var t=$(this);$({Counter:0}).animate({Counter:t.text()},{duration:2e3,easing:"swing",step:function(){t.text(Math.ceil(this.Counter))}})}),$(this).unbind("inview"))}),(new WOW).init();var e=$(".preloader");$(window).load(function(){e.remove()})});
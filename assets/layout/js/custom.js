/* global $, alert, console, mixitup,  scrollTop */


function notifications() {
  $("header .sentr-form .text-not").toggle(50);
}
$('.media-clok').click(function (){

});
function detLogin(log = false) {
  if(log != false){
    $(".error-masg-login").html("يرجي تسجيل الدخول");
  }
  $(".login-contenr").addClass("active");
}
$(function () {
    'use strict';

  var myAllImg = $('article .imgs img');


    if (document.querySelectorAll("article .imgs img").length >= 1) {
      var nyimges = document.querySelectorAll("article .imgs img");
             nyimges.forEach(function (imge) {
             
                 if (imge.getAttribute("data-src")) {
                      imge.src = imge.getAttribute("data-src");
                 
                         setInterval(function () {
                          if (imge.height < 30) {
                              imge.src = imge.getAttribute("data-src");
      
                          }
      
                         },8000);
                     }
                
                 
             });
              
        }


    // start Login
    if(window.location.hash == "#login" && !$('#show-profile').hasClass('drn-ghan')) {
      $(".login-contenr").addClass("active");
      $('html').css('overflow', 'hidden');
      $('show-profile').hasClass('drn-ghan')
    }else {
      if (history.pushState) {
        window.history.pushState("object or string", "Title", window.location.href.replace('#login',''));
        } 
    }

  
    
$(function() {
	
	
	$("header .login button").click(function () {
		
    $(".login-contenr").addClass("active");
    $('html').css('overflow', 'hidden');

	});
	
	$(".remve-login").click(function () {
    
    $('html').css('overflow', 'auto');

		$(".login-contenr").removeClass("active");
	});
	
	
	
	$(".login-contenr .show-password > i").click(function () {
		
		if($(this).hasClass("fa-eye-slash")) {
			
			$(this).next('input.form-styling').attr('type', 'text');
			$(this).removeClass("fa-eye-slash").addClass("fa-eye");
		}else {
			$(this).removeClass("fa-eye").addClass("fa-eye-slash");
			$(this).next('input.form-styling').attr('type', 'password');
		}
		
	});
	
	$(".btn").click(function() {
		$(".form-signin").toggleClass("form-signin-left");
    $(".form-signup").toggleClass("form-signup-left");
    $(".frame").toggleClass("frame-long");
    $(".signup-inactive").toggleClass("signup-active");
    $(".signin-active").toggleClass("signin-inactive");
    $(".forgot").toggleClass("forgot-left");   
    $(this).removeClass("idle").addClass("active");
	});
// });



$('#show-profile').click(function () {
    $(this).toggleClass('actve');
});

$('#media-nav').click(function () {
  $('.navbar .links').toggleClass('media-links');
  $(this).toggleClass('actve');
});


});




    // end Login
if(document.querySelector('video')){
	var player = videojs('my-player', {
 responsive: true,
breakpoints:true,
	 playbackRates: [0.25,0.5, 1, 1.5, 2, 4]
});
}

	
	
	
    jQuery('.main-wrapper, .sidebar-wrapper, .main-playr').theiaStickySidebar({
      // Settings
      additionalMarginTop: 30
    });





            



        // get_blogbox_height();
        $('.home-posts').isotope({
          // options
          itemSelector: '.archive-post-box',
          layoutMode: 'fitRows',
          filter: $(".home-cats-selection ul li a.active").attr('data-term'),
        });
        
      
        $('.home-cats-selection ul li a').on('click',function(e){
          if (history.pushState) {
            window.history.pushState("object or string", "Title", this.href);
            } 
          e.preventDefault();
          $('.home-cats-selection ul li a').removeClass('active');
          $(this).addClass('active');
      
          var target = $(this).attr('data-term');
          $('.home-posts').isotope({ filter: target })
        })


	
});


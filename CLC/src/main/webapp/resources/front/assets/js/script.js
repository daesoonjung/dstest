$(function () {
	//GNB
	$('.btn_nav').click(function(event){
		$(this).toggleClass('active');
		if($('.btn_nav').hasClass('active')){
			$('.nav_box').animate({
				right:'0',
				opacity:'1'
			},500);
		}else{
			$('.nav_box').animate({
				right:'-100%',
				opacity:'0'
			},500);
		}
	});
	$('.nav_box #gnb > li > a').click(function(event){
		$('.btn_nav').removeClass('active');
		$('nav_box').animate({
			right:'-100%',
			opacity:'0'
		},300);
	});


	

    //Location
    $('.loca>.last>a').click(function(){
    	$(this).next('.active').slideToggle();
    	return false;
    });


    // FAQ 
	$('.question').bind('click',function(){
		$(this).toggleClass('on');
		//$(this).next(".answer").slideToggle(100);
		$(this).next(".answer").toggle();
		return false;
	});

	// Q&A
	$('.qna_Q').bind('click',function(){
		//$(this).next(".qna_A").slideToggle(200);
		$(this).next(".qna_A").toggle();
		return false;
	});

	// Notice
	$('.noti_title').click(function(){
		//$(this).next(".qna_A").slideToggle(200);
		$(this).next('.notice_detail').toggleClass('active');
	});



});

function mainFullpage() {

	$('#fullpage').fullpage({
      anchors: ['page1', 'page2', 'page3','page4'],
      //responsiveWidth: 822,
      navigation: true,
      navigationPosition: 'right',
      navigationTooltips: ['CESCO Lifecare', 'CESCO Lifecare 주요 솔루션', 'CESCO Lifecare 공기질 무료진단','CESCO Lifecare SOL플래너']
    });
    $('#fp-nav ul li a').click(function(){
      $('#fp-nav ul li a').removeClass('active');
      $(this).addClass('active');
    });
    $('#fp-nav ul li a').mouseenter(function(){
      $('#fp-nav ul li a').removeClass('on');
      $(this).addClass('on');
    });
}

function mainSolutionCont() {
	$('.main_solution_cont').owlCarousel({
		loop:true,
		margin:0,

		dots:true,
		autoplay:true,
		autoplayTimeout:3000,
		autoplayHoverPause:true,
		responsiveClass:true,
		responsive:{
		    0:{
		        items:1,
		         nav:false,
		    },
		    822:{
		        items:2,
		         nav:false,
		    },
		    1280:{
		        items:3,
		         nav:false,
		    },
		    1600:{
		        items:4,
		    }
		}
	});	
}

function mainCardSlider() {
  	$('.card_slider_wrap').slick({
  		dots: true,
  		infinite: false,
  		fade: true,
  		loop: false
	});
}

$(document).ready(function(){
  var fileTarget = $('.add_file_div .upload-hidden');

  fileTarget.on('change', function(){ // 값이 변경되면
    if(window.FileReader){ // modern browser
      var filename = $(this)[0].files[0].name;
    } 
    else { // old IE
      var filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출
    }
    // 추출한 파일명 삽입
    $(this).siblings('.upload-name').val(filename);
  });
});

function modal() {
	$('.open-pop').on("click",function(e){
		$('.modal').fadeIn(200);
		$('body').css('overflow', 'hidden');
		e.preventDefault();
		return false;
	});
	$('.close-pop,.modal_bg').on("touchstart click",function(e){
		$('.modal').fadeOut(200);
		$('.wrapper').css('overflow', 'auto');
		$('body').css('overflow', 'auto');
		e.preventDefault();
		return false;
	});
}

//TAB
function faqTab(){
    var faqTab = $('.faq_tab>.tab_m');
    var faqTabCont = $('#faqTabCont>.faq_list');
    faqTab.on('click',function(){
      faqTab.removeClass('active');
      $(this).addClass('active')
      var idx = faqTab.index(this);
      faqTabCont.hide();
      faqTabCont.eq(idx).show();
    });
}

function sBoxHeight(){
	var boxHeight;
	$(window).ready(function () {
		if (document.body.clientWidth < 822) {
			boxHeight = $('.sBox img').innerHeight()+'px';
			$('.sBox').css('height', boxHeight);
			console.log("load height : " + boxHeight);
		}else{
			
		}
	});
	$(window).resize(function () {
		if (document.body.clientWidth < 822) {
	        height = $('.sBox img').innerHeight()+'px';
			$('.sBox').css('height', height);
			console.log("load height : " + height);
		}else{
			
			
		}
  });
}

// function  mainResponsive(){
	
// 	$(window).ready(function () {
// 		var q = null;
// 		if (document.body.clientWidth > 822) {
// 			$('#section5').remove();
// 			$('.section5').append(q);
// 		}else{
// 			$('#section').detach();	
// 		}
// 	});
// 	$(window).resize(function () {
// 		var q = null;
// 		if (document.body.clientWidth > 822) {
// 			$('#section5').remove();
// 			$('.section5').append(q);
// 		}else{
// 			$('#section5').detach();	
// 		}
//   });
// }





function mainSolutionWrapHeight(){
	var mainSolutionContHeight;
	$(window).ready(function () {
		mainSolutionContHeight = $('.solution_div img').innerHeight()+'px';
		$('.main_solution_cont .owl-stage-outer').css('height', mainSolutionContHeight);
	});
	$(window).resize(function () {
    mainSolutionContHeight = $('.solution_div img').innerHeight()+'px';
		$('.main_solution_cont .owl-stage-outer').css('height', mainSolutionContHeight);
  	});
}

function solPrListHeight(){
	var solutionProductListHeight;
	$(window).ready(function () {
		if (document.body.clientWidth < 822) {
			solutionProductListHeight = $('.solution_product_list li img').innerHeight()+'px';
			$('.solution_product_list li').css('height', solutionProductListHeight);
		}else{
			
		}
	});
	$(window).resize(function () {
		if (document.body.clientWidth < 822) {
			solutionProductListHeight = $('.solution_product_list li img').innerHeight()+'px';
			$('.solution_product_list li').css('height', solutionProductListHeight);
		}else{		
			
		}
  });
	
}



function subHeaderFix(){

	//Sub scroll fixed header
	var scrollOffset = $('.sub_visual_cont').offset();

    $(window).scroll(function() {
      if ($(document).scrollTop() > scrollOffset.top + 220) {
        $('.header').addClass('scroll-fixed');
      }
      else {
        $('.header').removeClass('scroll-fixed');
      }
    });

    $(window).ready(function() {
      if ($(document).scrollTop() > scrollOffset.top + 220) {
        $('.header').addClass('scroll-fixed');
      }
      else {
        $('.header').removeClass('scroll-fixed');
      }
    });

}



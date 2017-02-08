$(document).ready(function(){
        $(".prod_item").hover(function(){
			$(this).addClass("active");
            var res = $(this).find(".amimDown,.rating").slideDown();	
        },function(){
            $(this).find(".rating").slideUp();
			$(this).find(".amimDown").slideUp().css({'display': 'none'});
      $(this).removeClass("active");			
			if($(this).find(".amimDown").css('display')=='none'){$(this).addClass("noactive");};
        } );
    });

$(".left_nav").hover(
  function() {
     $('.cc').replaceWith('<span class="cc">Catalogue</span>');
     /*$(".left_menu > li > a > img").removeClass("ico_style").addClass("icon_nav");*/
    
  }, function() {
    $('.cc').replaceWith('<span class="cc">Cat...</span>');

  }
);
$(document).on("scroll",function(){
    if($(document).scrollTop() > 85){
        $("#main_head").removeClass("largee").addClass("smalll");
        $(".left_nav").removeClass("t85").addClass("t53");
    } else{
        $("#main_head").removeClass("smalll").addClass("largee");
        $(".left_nav").removeClass("t53").addClass("t85");
    }
});

$('#tog_sach img').click( function(event) {
	alert('sss');
      var indexClick = 0;
        if (indexClick === 0) {
          $(".search_box").addClass('act');
          $('#search_main').fadeIn('fast');
          $('.wrapper_icon_soc').fadeOut('fast');
        }
        else {
            $(".search_box").removeClass('act');
           $('#search_main').fadeOut('fast');
            $('.wrapper_icon_soc').fadeIn('fast');
        }
        event.stopPropagation();
        return;
});

$(document).click(function(event) {
		if ($(event.target).closest(".search_box").length) return;
            indexClick = 0;
            $(".search_box").removeClass('act');
             $('#search_main').fadeOut('fast');
            $('.wrapper_icon_soc').fadeIn('fast');
    event.stopPropagation();
});


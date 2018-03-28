$(".wish_btn").click(
		function() {
			var isbn = "";
			isbn = $(this).closest("a").find(".star_rating")
					.attr('data-isbn');
			$.ajax({

				url : "InsertLike.do",

				type : "post",// post방식

				dataType : "json",// json

				data : {
					"isbn" : isbn
				},
				error : function(request, status, error) {
					alert("이미 누르셨습니다.");
				},
				success : function(json) {
					console.log(json);
				}
			});// ajax
			$(this).css("color", "hotpink");

		});

function report(event) {

	var email = "";
	email = $(this).data("email");
	console.log(email);
	var num = "";
	num = $(this).data("num");
	console.log(num);

	$(".report_text_warp").show();
	$("#body_blind_wrap").show();

	$(".report_submit").click(function() {
		
		$.ajax({

			url : "reviewReport.do",

			type : "post",// post방식

			data : {
				"report_email" : email,
				"review_num" : num,
				"report_reason" : $(".report_txt").val()
			},
			error : function(request, status, error) {
				alert("이미 누르셨습니다.");
			},
			success : function() {
				$(".report_text_warp").hide();
				$("#body_blind_wrap").hide();
				$(".report_txt").val("");
				event.preventDefault();
			}
		});// ajax
	})

};
function starSub(index,ht,arry){
	
	arry.each(function(){
		$(this).find('.true').removeClass('true');
		if(index>=0)$($($(this).children('i')[index]).children("div")[ht]).addClass('true');
		
		});
	
	$(arry).trigger('mouseleave');
}
$('#star_check').click(function() {
	console.log("스타체크");
	$('#comment_content_wrap_star_grade_wrap').show();
	$('#comment_blind_wrap').show();
});
function comment_set_timeout(content) {
	$('#comment_confirm').show();
	$('#comment_confirm span').text(content);
	setTimeout(function()
		    {
		$('#comment_confirm').hide();
		    },500);
}
$(function(){$('.star_rating').trigger('mouseleave')});
$(document).on('mouseenter','.star_rating .head,.star_rating .tail',function(){
    var offset=$(this).offset(),
        active=$(this).hasClass('true'),
		score=$(this).parent().index()*2+$(this).index();
    $('#tool_tip').show().css({'top':offset.top+50,'left': offset.left-38})
		.find('p').css({color:active?'red':'black'})
		.text(active?'취소하기':(['최악 이에요','싫어요','재미 없어요','별로예요','부족 해요',
			'보통 이예요','볼만 해요','재미 있어요','훌륭 해요','최고예요!'])[score]);
    $(this).closest('.star_rating').children().removeClass('fa-star-o fa-star-half-o fa-star')
		.each(function(){var sub=score-$(this).index()*2;$(this).addClass(sub?sub<0?'fa-star-o':'fa-star':'fa-star-half-o')});
})
$(document).on('click','.star_rating .head,.star_rating .tail',function() {
	comment=$(this).closest('.info_box').find('.comment_btn');
	var a=$(this).closest(".star_rating").find(".true");// 별점있는거  th는 내가 
    var b=true;

	if(comment.data('comment')!=''&&$(this).hasClass("true"))b=confirm('댓글까지 삭제되는데 삭제하시겠습니까?');

	
    	if(b){
    		
    		if(comment.data('comment')!=''&&$(this).hasClass("true")){
    		$.ajax({
    			url : "reviewDelete.do",
    			type : "post",// post방식
    			data : {
    				"isbn" : $(this).closest(".star_rating")
    					.data('isbn')
    			},
    			error : function(request, status, error) {
    				alert("code:" + request.status + "\n"
    						+ "message:" + request.responseText
    						+ "\n" + "error:" + error);
    			},
    			success : function(json) {
    				comment_set_timeout("댓글이 삭제되었습니다.");
    				comment.data('comment','');
    			}
    		});
    		}
	if(a.length===1){
		if(!($(this).hasClass("true"))){
			$(this).addClass("true")
		}
		a.removeClass("true");
		
	}else{
		$(this).addClass("true");
		
	}

	var starPoint=$(this).index()?1:0.5;
	$.ajax({
		url : "starQuery.do",
		type : "post",// post방식
		data : {
			"isbn" : $(this).closest(".star_rating")
				.data('isbn'),
			"star_point" : $(this).closest('i').prevAll(
					'i').length +starPoint,
		},
		error : function(request, status, error) {
			alert("code:" + request.status + "\n"
					+ "message:" + request.responseText
					+ "\n" + "error:" + error);
		},
		success : function(json) {
			
		}
	});
	
	 if(!($(this).closest('.info_box').hasClass('.info_box'))){
		 var qqq=$(this);
		 var zzz= new Array();
			$('.star_rating').each(function () {
			    if ( $(this).data('isbn') === qqq.closest(".star_rating").data("isbn") ) {
			        // do whatever you wanted to do with it
			    	zzz.push($(this));
			    } 
			});
		if($(this).hasClass("true")){
		starSub($(this).closest('i').prevAll('i').length,$(this).index(),$(zzz));
		}else{
			starSub(-1,-1,$(zzz));
		}
	 }
    	}
});
$(document).on('mouseleave','.star_rating',function(){
	var $active=$(this).find('.true'),
		score=$active.length?$active.parent().index()*2+$active.index():-1;
	$('#tool_tip').hide();
    $(this).children().removeClass('fa-star-o fa-star-half-o fa-star')
        .each(function(){var sub=score-$(this).index()*2;$(this).addClass(sub?sub<0?'fa-star-o':'fa-star':'fa-star-half-o')});
});
$('.comment_btn').on("click", function(){
					var top = 150 - $(window).scrollTop();
					var scrollTop = $(window).scrollTop();
					// 스크롤 막기
					$(".book_wrap").attr("data-scroll", scrollTop);
					$(".new_book_wrap").attr("data-scroll", scrollTop);
					$('html, body').css({
						'overflow' : 'hidden',
						'height' : '100%'
					});
//					$(".new_book_wrap").css({"position":"fixed","left":"301px","top":top+"px"});
//					$(".book_wrap").css({"position":"fixed","left":"472px","top":top+"px"});;
//					$("#content").css({"position":"fixed","left":"300px","top":top+"px"});
					$("#content").data("scrollTop",scrollTop);
					$('#element').on('scroll touchmove mousewheel',
							function(event) {
								event.preventDefault();
								event.stopPropagation();
								return false;
							});
					console.log($(this).closest('.book_list').find('img').attr(
							'alt'));
					console.log($(this).closest('.book_list').find('img').attr(
							'src'))
					$('#comment').show();
					$('#comment_title').text(
							$(this).data("title"));
					$('#comment_content_wrap_img').attr(
							'src',
							$(this).data('img'));
					$('#body_blind_wrap').show();
					//,#comment_content_wrap .star_rating
					$('#comment_content_wrap_star_grade_body_star .star_rating,#comment_content_wrap .star_rating')
					.data('isbn',$(this).closest('.info_box').find('.star_rating').data('isbn'));
					var qqq=$(this);
					var zzz= new Array();
					$('.star_rating').each(function () {
					    if ( $(this).data('isbn') === qqq.closest(".info_box").find(".star_rating").data("isbn") ) {
					        // do whatever you wanted to do with it
					    	console.log("몇번 돌아감?");
					    	zzz.push($(this));
					    } 
					});
					var x = $(this).closest('.info_box').find('.true');
					if(x.hasClass('true')){
						starSub(x.closest('i').prevAll('i').length,x.index(),$(zzz));
					}
					else{
						starSub(-1,-1,$(zzz));
						console.log(x.hasClass('true'));
						$('#star_check').trigger('click');
						console.log("혹시?");
					}
					
					
			$('#inputText').val($(this).data('comment'));
					$('#inputText').data('comment', $(this).data('comment'));
					if ($(this).data('comment') == "") {
						$('#comment_content_wrap_button').attr("disabled",
								"true");
					}
					
				});
$('#body_blind_wrap').click(
				function() {
					$('html, body').css({
						'overflow' : '',
						'height' : 'auto'
					});
					var scroll="";
//					$(".new_book_wrap").css({"position":"relative","left":"","top":"0px"});
//					$(".book_wrap").css({"position":"relative","left":"","top":"150px"});;
					scroll = $(".new_book_wrap").attr("data-scroll");
					$(window).scrollTop(scroll);
					$(".book_wrap").attr("data-scroll", "");
					$(".new_book_wrap").attr("data-scroll", "");
					$('#element').off('scroll touchmove mousewheel');
					$('#comment').hide();
					$(".report_text_warp").hide();
					$(this).hide();

					$('#comment_content_wrap_star_grade_wrap').hide();

					$('#comment_blind_wrap').hide();

				});
$('#comment_blind_wrap').click(function() {
	$('#comment_content_wrap_star_grade_wrap').hide();
	$(this).hide();
});

$('#comment_head_end')
		.click(
				function() {
					$('#comment_content_wrap_star_grade_wrap').hide();
					$('#comment').hide();
					$('#body_blind_wrap').hide();
				});
$("#comment form")
		.on(
				"submit",
				function(event) {

					event.preventDefault();
					var beforeComment = $('#inputText').data('comment');
					var comment = $(this).find('[name=comment]').val();
					console.log(comment)
					if ($(
							'#comment_content_wrap_star_grade_body_star .star_rating')
							.find('.true').hasClass('true')) {
						if (comment.trim() == "" || beforeComment == comment) {
							alert("제데로 입력해주세요");
						} else {
							console.log(beforeComment);
							if (!beforeComment) {

								$
										.ajax({
											url : "reviewInsert.do",
											type : "post",// post방식
											dataType : "json",// json
											data : {
												"isbn" : $(
														'#comment_content_wrap_star_grade_body_star .star_rating')
														.data('isbn'),
												"content" : comment
											},
											error : function(request, status,
													error) {
												alert("code:" + request.status
														+ "\n" + "message:"
														+ request.responseText
														+ "\n" + "error:"
														+ error);
											},
											success : function(json) {
												comment_set_timeout("댓글이 입력되었습니다.")
											
											}
										});// $.ajax() end
								$('.star_rating[data-isbn='+$(this).closest('#comment_content_wrap').find(".star_rating").data("isbn")+']').closest('.info_box').find(
								'.comment_btn')
								.data('comment',comment);
								$('#inputText').data('comment', comment);
							} else {
								$
										.ajax({
											url : "reviewUpdate.do",
											type : "post",// post방식
											dataType : "json",// json
											data : {
												"isbn" : $(
														'#comment_content_wrap_star_grade_body_star .star_rating')
														.data('isbn'),
												"content" : comment
											},
											error : function(request, status,
													error) {
												alert("code:" + request.status
														+ "\n" + "message:"
														+ request.responseText
														+ "\n" + "error:"
														+ error);
											},
											success : function(json) {
												comment_set_timeout("댓글이 수정되었습니다.")
											}
										});// $.ajax() end
								$('.star_rating[data-isbn='+$(this).closest('#comment_content_wrap').find(".star_rating").data("isbn")+']').closest('.info_box').find(
										'.comment_btn')
										.data('comment',comment);
								$('#inputText').data('comment',comment);
							}
						}
					} else {
						$('#star_check').trigger('click');
						console.log("실행되면안됨");
					}
				});
$("textarea").on('keydown keyup', function() {
	if ($(this).val().length > 2000 || $(this).val().length == 0) {
		$("#comment_content_wrap_button").attr("disabled", "true");
	} else {
		$("#comment_content_wrap_button").removeAttr("disabled");
	}
});

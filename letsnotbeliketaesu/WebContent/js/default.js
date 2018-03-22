$(".wish_btn").click(
		function() {
			var isbn = "";
			isbn = $(this).parent().find(".star_rating")
					.closest(".star_rating").attr('id');
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

function report(a) {
	var email = "";
	email = a.data("email");
	console.log(email);
	var num = "";
	num = a.data("num");
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
				$(".report_reason").hide();
				$("#body_blind_wrap").hide();
				$(".report_txt").val("");
				$(this).preventDefault();
			}
		});// ajax
	})

};

$(document).ready(function() {
	$('.star_rating').trigger('mouseleave');
});
$(".star_rating  i .tail").mouseenter(
		function(event) {
			var offset = $(this).offset();
			var toolTip = $('#tool_tip');
			toolTip.css({
				"top" : offset.top + 50,
				"left" : offset.left - 38
			});
			if ($(this).hasClass('true')) {
				toolTip.find('p').text('취소하기');
				toolTip.find('p').css('color', 'red');
			} else {
				toolTip.find('p').css('color', 'black');
				switch ($(this).closest('i').prevAll().length) {
				case 0:
					toolTip.find('p').text('싫어요');
					break;
				case 1:
					toolTip.find('p').text('별로예요');
					break;
				case 2:
					toolTip.find('p').text('보통 이예요');
					break;
				case 3:
					toolTip.find('p').text('재미 있어요');
					break;
				case 4:
					toolTip.find('p').text('최고예요!');
				}
			}
			toolTip.show();
			$(this).closest("i").parent().children("i").removeClass(
					"fa fa-star 2x").removeClass("fa fa-star-o fa-2x")
					.removeClass("fa fa-star-half-o fa-2x");
			$(this).closest("i").addClass("fa fa-star fa-2x").prevAll("i")
					.addClass("fa fa-star fa-2x");
			$(this).closest("i").nextAll("i").addClass("fa fa-star-o fa-2x");
			return false;
		});
$(".star_rating i .head").mouseenter(
		function(event) {
			var offset = $(this).offset();
			var toolTip = $('#tool_tip');
			toolTip.css({
				"top" : offset.top + 50,
				"left" : offset.left - 38
			});
			if ($(this).hasClass('true')) {
				toolTip.find('p').text('취소하기');
				toolTip.find('p').css('color', 'red');
			} else {
				toolTip.find('p').css('color', 'black');
				switch ($(this).closest('i').prevAll().length) {
				case 0:
					toolTip.find('p').text('최악 이에요');
					break;
				case 1:
					toolTip.find('p').text('재미 없어요');
					break;
				case 2:
					toolTip.find('p').text('부족 해요');
					break;
				case 3:
					toolTip.find('p').text('볼만 해요');
					break;
				case 4:
					toolTip.find('p').text('훌륭 해요');
				}
			}
			toolTip.show();
			$(this).closest("i").parent().children("i").removeClass(
					"fa fa-star 2x").removeClass("fa fa-star-o fa-2x")
					.removeClass("fa fa-star-half-o fa-2x");
			$(this).closest("i").addClass("fa fa-star-half-o fa-2x").prevAll(
					"i").addClass("fa fa-star fa-2x");
			$(this).closest("i").nextAll("i").addClass("fa fa-star-o fa-2x");
			return false;
		});
$(".star_rating").mouseleave(
		function() {
			var a = $(this).find('.true');
			if (a.length > 0) {
				$(this).children("i").removeClass("fa fa-star fa-2x")
						.removeClass("fa fa-star-o fa-2x").removeClass(
								"fa fa-star-half-o fa-2x");
				if (a.hasClass('head')) {
					a.closest("i").addClass("fa fa-star-half-o fa-2x").prevAll(
							"i").addClass("fa fa-star fa-2x");
					a.closest("i").nextAll("i").addClass("fa fa-star-o fa-2x");
				} else {
					a.closest("i").addClass("fa fa-star fa-2x").prevAll("i")
							.addClass("fa fa-star fa-2x");
					a.closest("i").nextAll("i").addClass("fa fa-star-o fa-2x");
				}
			} else {
				$(this).children("i").removeClass("fa fa-star fa-2x")
						.removeClass("fa fa-star-o fa-2x").removeClass(
								"fa fa-star-half-o fa-2x");
				$(this).children("i").addClass("fa fa-star-o fa-2x");
			}
			$('#tool_tip').hide();
		})
$(".star_rating .head")
		.click(
				function(event) {
					if ($(this).hasClass("true")) {
						if ($('#inputText').data('comment') != ""
								|| $(this).closest('.info_box').find(
										'.comment_btn').data("comment") != "") {
							var result = confirm('확인을 누르실경우 댓글까지 함께 삭제됩니다.');
							var check = true;
						} else {
							var result = true;
							var check = false;
						}
						if (result) {
							$.ajax({
								url : "starDelete.do",
								type : "post",// post방식
								dataType : "json",// json
								data : {
									"isbn" : $(this).closest(".star_rating")
											.attr('id'),
									"starPoint" : $(this).closest('i').prevAll(
											'i').length + 0.5
								},
								error : function(request, status, error) {
									alert("code:" + request.status + "\n"
											+ "message:" + request.responseText
											+ "\n" + "error:" + error);
								},
								success : function(json) {
									console.log(json);
								}
							});// $.ajax() end
							if (check) {
								$.ajax({
									url : "reviewDelete.do",
									type : "post",// post방식
									dataType : "json",// json
									data : {
										"isbn" : $(this)
												.closest(".star_rating").attr(
														'id')
									},
									error : function(request, status, error) {
										alert("code:" + request.status + "\n"
												+ "message:"
												+ request.responseText + "\n"
												+ "error:" + error);
									},
									success : function(json) {
										console.log(json);
									}
								});// $.ajax() end
							}
							$(this).closest('.star_rating').find('.true')
									.removeClass('true')
							if ($('#fake').length > 0) {
								$('#fake').find('.true').removeClass('true');
								$('#fake').trigger('mouseleave');
								$('#fake').closest('.info_box').find(
										'.comment_btn').data('comment', "");
							} else {
								$(this).closest('.info_box').find(
										'.comment_btn').data('comment', "");
							}
						}
					} else if ($(this).closest('.star_rating').find('.true').length == 1) {
						if ($(this).closest('.star_rating').find('.true')
								.closest('i').find('.true').hasClass('head')) {
							var starSub = ($(this).closest('i').prevAll('i').length + 0.5)
									- ($(this).closest('.star_rating').find(
											'.true').closest('i').prevAll('i').length + 0.5);
						} else {
							var starSub = ($(this).closest('i').prevAll('i').length + 0.5)
									- ($(this).closest('.star_rating').find(
											'.true').closest('i').prevAll('i').length + 1);
						}
						$
								.ajax({
									url : "starUpdate.do",
									type : "post",// post방식
									dataType : "json",// json
									data : {
										"isbn" : $(this)
												.closest(".star_rating").attr(
														'id'),
										"starPoint" : $(this).closest('i')
												.prevAll('i').length + 0.5,
										"starSub" : starSub
									},
									error : function(request, status, error) {
										alert("code:" + request.status + "\n"
												+ "message:"
												+ request.responseText + "\n"
												+ "error:" + error);
									},
									success : function(json) {
										console.log(json);
									}
								});// $.ajax() end
						$(this).closest('.star_rating').find('.true')
								.removeClass('true')
						$(this).addClass("true");
						if ($('#fake').length > 0) {
							console.log("ㅎ허ㅓ허허허");
							$('#fake').find('.true').removeClass('true');
							$(
									$('#fake').children('i')[$(this).closest(
											'i').prevAll('i').length]).find(
									'.head').addClass('true')
							$('#fake').trigger('mouseleave');
						}
					} else {
						$
								.ajax({
									url : "starInsert.do",
									type : "post",// post방식
									dataType : "json",// json
									data : {
										"starPoint" : $(this).closest('i')
												.prevAll('i').length + 0.5,
										"isbn" : $(this)
												.closest(".star_rating").attr(
														'id'),
										"reviewNum" : 0
									},
									error : function(request, status, error) {
										alert("code:" + request.status + "\n"
												+ "message:"
												+ request.responseText + "\n"
												+ "error:" + error);
									},
									success : function(json) {
										console.log(json);
									}
								});// $.ajax() end
						$(this).addClass("true");
						if ($('#fake').length > 0) {
							$('#fake').find('.true').removeClass('true');
							$(
									$('#fake').children('i')[$(this).closest(
											'i').prevAll('i').length]).find(
									'.head').addClass('true')
							$('#fake').trigger('mouseleave');
						}
					}
					if ($('#fake').length > 0) {
						$('#comment_content_wrap_star_rating').children('i')
								.removeClass("fa fa-star-half-o fa-1x")
								.removeClass("fa fa-star fa-1x").removeClass(
										"fa fa-star-o fa-1x");
						if ($('#fake').find('.true').hasClass('true')) {
							$(
									$('#comment_content_wrap_star_rating')
											.children('i')[$('#fake').closest(
											'.info_box').find('.true').closest(
											'i').prevAll('i').length])
									.addClass("fa fa-star-half-o fa-1x")
									.prevAll("i").addClass("fa fa-star fa-1x");
							$(
									$('#comment_content_wrap_star_rating')
											.children('i')[$('#fake').closest(
											'.info_box').find('.true').closest(
											'i').prevAll('i').length]).nextAll(
									"i").addClass("fa fa-star-o fa-1x");
						}
					}
					return false;
				});
$(".star_rating .tail")
		.click(
				function(event) {
					if ($(this).hasClass("true")) {
						if ($('#inputText').data('comment') != ""
								|| $(this).closest('.info_box').find(
										'.comment_btn').data("comment") != "") {
							var result = confirm('확인을 누르실경우 댓글까지 함께 삭제됩니다.');
							var check = true;
						} else {
							var result = true;
							var check = false;
						}
						if (result) {
							$.ajax({
								url : "starDelete.do",
								type : "post",// post방식
								dataType : "json",// json
								data : {
									"isbn" : $(this).closest(".star_rating")
											.attr('id'),
									"starPoint" : $(this).closest('i').prevAll(
											'i').length + 1
								},
								error : function(request, status, error) {
									alert("code:" + request.status + "\n"
											+ "message:" + request.responseText
											+ "\n" + "error:" + error);
								},
								success : function(json) {
									console.log(json);
								}
							});// $.ajax() end
							if (check) {
								$.ajax({
									url : "reviewDelete.do",
									type : "post",// post방식
									dataType : "json",// json
									data : {
										"isbn" : $(this)
												.closest(".star_rating").attr(
														'id')
									},
									error : function(request, status, error) {
										alert("code:" + request.status + "\n"
												+ "message:"
												+ request.responseText + "\n"
												+ "error:" + error);
									},
									success : function(json) {
										console.log(json);
									}
								});// $.ajax() end
							}
							$(this).closest('.star_rating').find('.true')
									.removeClass('true')
							if ($('#fake').length > 0) {
								$('#fake').find('.true').removeClass('true');
								$('#fake').trigger('mouseleave');
								$('#fake').closest('.info_box').find(
										'.comment_btn').data('comment', "");
							} else {
								$(this).closest('.info_box').find(
										'.comment_btn').data('comment', "");
							}
						}
					} else if ($(this).closest('.star_rating').find('.true').length == 1) {
						if ($(this).closest('.star_rating').find('.true')
								.closest('i').find('.true').hasClass('head')) {
							var starSub = ($(this).closest('i').prevAll('i').length + 1)
									- ($(this).closest('.star_rating').find(
											'.true').closest('i').prevAll('i').length + 0.5);
						} else {
							var starSub = ($(this).closest('i').prevAll('i').length + 1)
									- ($(this).closest('.star_rating').find(
											'.true').closest('i').prevAll('i').length + 1);
						}
						$
								.ajax({
									url : "starUpdate.do",
									type : "post",// post방식
									dataType : "json",// json
									data : {
										"isbn" : $(this)
												.closest(".star_rating").attr(
														'id'),
										"starPoint" : $(this).closest('i')
												.prevAll('i').length + 1,
										"starSub" : starSub
									},
									error : function(request, status, error) {
										alert("code:" + request.status + "\n"
												+ "message:"
												+ request.responseText + "\n"
												+ "error:" + error);
									},
									success : function(json) {
										console.log(json);
									}
								});// $.ajax() end
						$(this).closest('.star_rating').find('.true')
								.removeClass('true')
						$(this).addClass("true");
						if ($('#fake').length > 0) {
							$('#fake').find('.true').removeClass('true');
							$(
									$('#fake').children('i')[$(this).closest(
											'i').prevAll('i').length]).find(
									'.tail').addClass('true')
							$('#fake').trigger('mouseleave');
						}
					} else {
						$
								.ajax({
									url : "starInsert.do",
									type : "post",// post방식
									dataType : "json",// json
									data : {
										"starPoint" : $(this).closest('i')
												.prevAll('i').length + 1,
										"isbn" : $(this)
												.closest(".star_rating").attr(
														'id'),
										"reviewNum" : 0
									},
									error : function(request, status, error) {
										alert("code:" + request.status + "\n"
												+ "message:"
												+ request.responseText + "\n"
												+ "error:" + error);
									},
									success : function(json) {
										console.log(json);
									}
								});// $.ajax() end
						$(this).addClass("true");
						if ($('#fake').length > 0) {
							$('#fake').find('.true').removeClass('true');
							$(
									$('#fake').children('i')[$(this).closest(
											'i').prevAll('i').length]).find(
									'.tail').addClass('true')
							$('#fake').trigger('mouseleave');
						}
					}
					if ($('#fake').length > 0) {
						$('#comment_content_wrap_star_rating').children('i')
								.removeClass("fa fa-star-half-o fa-1x")
								.removeClass("fa fa-star fa-1x").removeClass(
										"fa fa-star-o fa-1x");
						if ($('#fake').find('.true').hasClass('true')) {
							$(
									$('#comment_content_wrap_star_rating')
											.children('i')[$('#fake').closest(
											'.info_box').find('.true').closest(
											'i').prevAll('i').length])
									.addClass("fa fa-star fa-1x").prevAll("i")
									.addClass("fa fa-star fa-1x");
							$(
									$('#comment_content_wrap_star_rating')
											.children('i')[$('#fake').closest(
											'.info_box').find('.true').closest(
											'i').prevAll('i').length]).nextAll(
									"i").addClass("fa fa-star-o fa-1x");
						}
					}
					return false;
				});
$('#star_check').click(function() {
	$('#comment_content_wrap_star_grade_wrap').show();
	$('#comment_blind_wrap').show();
});
$('#comment_head_end')
		.click(
				function() {
					$('#comment_content_wrap_star_grade_wrap').hide();
					$('#comment').hide();
					$('#body_blind_wrap').hide();
					$('#comment_content_wrap_star_grade_body_star .star_rating')
							.find('.true').removeClass('true');
					$('#comment_content_wrap_star_grade_body_star .star_rating')
							.trigger('mouseleave');
					$('#fake')
							.removeAttr('id')
							.attr(
									'id',
									$(
											'#comment_content_wrap_star_grade_body_star .star_rating')
											.attr('id'));
					$('#comment_content_wrap_star_grade_body_star .star_rating')
							.removeAttr('id');
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
														.attr('id'),
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
												console.log(json);
											}
										});// $.ajax() end
								$('#fake').closest('.info_box').find(
										'.comment_btn')
										.data('comment', comment);
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
														.attr('id'),
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
												console.log(json);
											}
										});// $.ajax() end
								$('#fake').closest('.info_box').find(
										'.comment_btn')
										.data('comment', comment);
								$('#inputText').data('comment', comment);
							}
						}
					} else {
						$('#star_check').trigger('click');
					}
				});
$("textarea").on('keydown keyup', function() {
	if ($(this).val().length > 2000 || $(this).val().length == 0) {
		$("#comment_content_wrap_button").attr("disabled", "true");
	} else {
		$("#comment_content_wrap_button").removeAttr("disabled");
	}
});

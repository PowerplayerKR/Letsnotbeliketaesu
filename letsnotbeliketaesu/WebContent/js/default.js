var getclick = function() {
			var q = "";
			q = $(this).data('title');
			function getBook() {
				$.ajax({
					url : "getBook.do",
					type : "post",//post방식
					dataType : "json",//json
					data : {
						"title" : q
					},//넘어가는 파라미터
					error : function() {
						alert("에러!!");
					},
					success : function(json) {
						$(json).each(function() {
							var title = $('.title');
							var bookWriter = $('.book_writer');
							var cover = $('.cover');
							title.text(this.title);
							bookWriter.text(this.book_writer);
							cover.attr('src', this.image);
							cover.attr('alt', this.title + '의 커버 사진');
						});//each() end
					}
				});//$.ajax() end
			}//getBook() end
			var isbn = "";
			isbn = $(this).data('isbn');
			function getReview() {
				$.ajax({
					url : "getReview.do",
					type : "post",//post방식
					dataType : "json",//json
					data : {
						"isbn" : isbn
					},//넘어가는 파라미터
					error : function() {
						alert("에러!!");
					},
					success : function(json) {
						$(json).each(function() {
							var review_writer = $(".review_writer");
							var content = $(".content");
							var review_update_date = $(".review_update_date");
							review_writer.text(this.review_writer);
							content.text(this.content);
							review_update_date.text(this.regdate);
						});//each() end
					}
				});//$.ajax() end
			}//getReview() end
			getReview();
			getBook();
	
			$(".review_more").click(function() {
			var lastNum = $(".review_box:last").attr("data-num");
			var isbn = $(".book_info_li").attr("data-isbn");
			$.ajax({
				url:"getReviewMore.do",
				type:"post",//post방식
				dataType:"json",//json
				data:{"num":lastNum,"isbn":isbn},
				error:function(){
					alert("에러!!");
				},
				success:function(json) {
					var Cnum = 0; 
					$(json).each(function() {
						var review_box = $("<div class='review_box' data-num='"+this.ROWNUM+"'>");
						var review_balloon = $("<div class='review_balloon'>");
						var review_writer = $("<div class='review_writer'>").text(this.review_writer);
						var content = $("<div class='content_wrap'>").text(this.content);
						var review_update_date = $("<p class='review_update_date'>").text(this.regdate);
						var user_img = $("<img class='user_img' src='../last_project/img/user.jpg'>");
						
						review_balloon.append(review_writer,content,review_update_date);
						review_box.append(user_img,review_balloon);
						$(".book_info_li").append(review_box);
						Cnum= this.ROWNUM;
					});//each() end
					
					$.ajax({
						url:"getCountReview.do",
						type:"post",//post방식
						dataType:"json",//json
						data:{"isbn":isbn},//넘어가는 파라미터
						error:function(){
							alert("에러!!");
						},
						success:function(json) {
							$(json).each(function() {
								$(".book_review_start").text("코멘트 ("+this.num+")");
								if(this.num==Cnum){
									$(".review_more").hide();
								}
							});//each() end
						}
					});//$.ajax() end
				}
			});//ajax end
			
		});//review more end
			
	
			function screenHide() {
				$('.book_info_table').show();
				$('.screen').show();
			}
			setTimeout(screenHide, 500);
		};

		var list = $('.best_book_list');
		var list1 = $('.booklist');

		list.click(getclick);
		list1.click(getclick);

		$('.screen').click(function() {
			$('.book_info_table').hide();
			$('.screen').hide();
			var title = $('.title');
			var bookWriter = $('.book_writer');
			var cover = $('.cover');
			title.text('');
			bookWriter.text('');
			cover.attr('alt', '');
			cover.attr('src', '');
		});

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
					$(this).closest("i").addClass("fa fa-star fa-2x").prevAll(
							"i").addClass("fa fa-star fa-2x");
					$(this).closest("i").nextAll("i").addClass(
							"fa fa-star-o fa-2x");
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
					$(this).closest("i").addClass("fa fa-star-half-o fa-2x")
							.prevAll("i").addClass("fa fa-star fa-2x");
					$(this).closest("i").nextAll("i").addClass(
							"fa fa-star-o fa-2x");
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
							a.closest("i").addClass("fa fa-star-half-o fa-2x")
									.prevAll("i").addClass("fa fa-star fa-2x");
							a.closest("i").nextAll("i").addClass(
									"fa fa-star-o fa-2x");
						} else {
							a.closest("i").addClass("fa fa-star fa-2x")
									.prevAll("i").addClass("fa fa-star fa-2x");
							a.closest("i").nextAll("i").addClass(
									"fa fa-star-o fa-2x");
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
									$
											.ajax({
												url : "starDelete.do",
												type : "post",//post방식
												dataType : "json",//json
												data : {
													"isbn" : $(this).closest(
															".star_rating")
															.attr('id'),
													"starPoint" : $(this)
															.closest('i')
															.prevAll('i').length + 0.5
												},
												error : function(request,
														status, error) {
													alert("code:"
															+ request.status
															+ "\n"
															+ "message:"
															+ request.responseText
															+ "\n" + "error:"
															+ error);
												},
												success : function(json) {
													console.log(json);
												}
											});//$.ajax() end
									if (check) {
										$.ajax({
											url : "reviewDelete.do",
											type : "post",//post방식
											dataType : "json",//json
											data : {
												"isbn" : $(this).closest(
														".star_rating").attr(
														'id')
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
										});//$.ajax() end
									}
									$(this).closest('.star_rating').find(
											'.true').removeClass('true')
									if ($('#fake').length > 0) {
										$('#fake').find('.true').removeClass(
												'true');
										$('#fake').trigger('mouseleave');
										$('#fake').closest('.info_box').find(
												'.comment_btn').data('comment',
												"");
									} else {
										$(this).closest('.info_box').find(
												'.comment_btn').data('comment',
												"");
									}
								}
							} else if ($(this).closest('.star_rating').find(
									'.true').length == 1) {
								if ($(this).closest('.star_rating').find(
										'.true').closest('i').find('.true')
										.hasClass('head')) {
									var starSub = ($(this).closest('i')
											.prevAll('i').length + 0.5)
											- ($(this).closest('.star_rating')
													.find('.true').closest('i')
													.prevAll('i').length + 0.5);
								} else {
									var starSub = ($(this).closest('i')
											.prevAll('i').length + 0.5)
											- ($(this).closest('.star_rating')
													.find('.true').closest('i')
													.prevAll('i').length + 1);
								}
								$.ajax({
									url : "starUpdate.do",
									type : "post",//post방식
									dataType : "json",//json
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
								});//$.ajax() end
								$(this).closest('.star_rating').find('.true')
										.removeClass('true')
								$(this).addClass("true");
								if ($('#fake').length > 0) {
									console.log("ㅎ허ㅓ허허허");
									$('#fake').find('.true')
											.removeClass('true');
									$(
											$('#fake').children('i')[$(this)
													.closest('i').prevAll('i').length])
											.find('.head').addClass('true')
									$('#fake').trigger('mouseleave');
								}
							} else {
								$.ajax({
									url : "starInsert.do",
									type : "post",//post방식
									dataType : "json",//json
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
								});//$.ajax() end
								$(this).addClass("true");
								if ($('#fake').length > 0) {
									$('#fake').find('.true')
											.removeClass('true');
									$(
											$('#fake').children('i')[$(this)
													.closest('i').prevAll('i').length])
											.find('.head').addClass('true')
									$('#fake').trigger('mouseleave');
								}
							}
							if ($('#fake').length > 0) {
								$('#comment_content_wrap_star_rating')
										.children('i').removeClass(
												"fa fa-star-half-o fa-1x")
										.removeClass("fa fa-star fa-1x")
										.removeClass("fa fa-star-o fa-1x");
								if ($('#fake').find('.true').hasClass('true')) {
									$(
											$(
													'#comment_content_wrap_star_rating')
													.children('i')[$('#fake')
													.closest('.info_box').find(
															'.true').closest(
															'i').prevAll('i').length])
											.addClass("fa fa-star-half-o fa-1x")
											.prevAll("i").addClass(
													"fa fa-star fa-1x");
									$(
											$(
													'#comment_content_wrap_star_rating')
													.children('i')[$('#fake')
													.closest('.info_box').find(
															'.true').closest(
															'i').prevAll('i').length])
											.nextAll("i").addClass(
													"fa fa-star-o fa-1x");
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
									$
											.ajax({
												url : "starDelete.do",
												type : "post",//post방식
												dataType : "json",//json
												data : {
													"isbn" : $(this).closest(
															".star_rating")
															.attr('id'),
													"starPoint" : $(this)
															.closest('i')
															.prevAll('i').length + 1
												},
												error : function(request,
														status, error) {
													alert("code:"
															+ request.status
															+ "\n"
															+ "message:"
															+ request.responseText
															+ "\n" + "error:"
															+ error);
												},
												success : function(json) {
													console.log(json);
												}
											});//$.ajax() end
									if (check) {
										$.ajax({
											url : "reviewDelete.do",
											type : "post",//post방식
											dataType : "json",//json
											data : {
												"isbn" : $(this).closest(
														".star_rating").attr(
														'id')
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
										});//$.ajax() end
									}
									$(this).closest('.star_rating').find(
											'.true').removeClass('true')
									if ($('#fake').length > 0) {
										$('#fake').find('.true').removeClass(
												'true');
										$('#fake').trigger('mouseleave');
										$('#fake').closest('.info_box').find(
												'.comment_btn').data('comment',
												"");
									} else {
										$(this).closest('.info_box').find(
												'.comment_btn').data('comment',
												"");
									}
								}
							} else if ($(this).closest('.star_rating').find(
									'.true').length == 1) {
								if ($(this).closest('.star_rating').find(
										'.true').closest('i').find('.true')
										.hasClass('head')) {
									var starSub = ($(this).closest('i')
											.prevAll('i').length + 1)
											- ($(this).closest('.star_rating')
													.find('.true').closest('i')
													.prevAll('i').length + 0.5);
								} else {
									var starSub = ($(this).closest('i')
											.prevAll('i').length + 1)
											- ($(this).closest('.star_rating')
													.find('.true').closest('i')
													.prevAll('i').length + 1);
								}
								$.ajax({
									url : "starUpdate.do",
									type : "post",//post방식
									dataType : "json",//json
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
								});//$.ajax() end
								$(this).closest('.star_rating').find('.true')
										.removeClass('true')
								$(this).addClass("true");
								if ($('#fake').length > 0) {
									$('#fake').find('.true')
											.removeClass('true');
									$(
											$('#fake').children('i')[$(this)
													.closest('i').prevAll('i').length])
											.find('.tail').addClass('true')
									$('#fake').trigger('mouseleave');
								}
							} else {
								$.ajax({
									url : "starInsert.do",
									type : "post",//post방식
									dataType : "json",//json
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
								});//$.ajax() end
								$(this).addClass("true");
								if ($('#fake').length > 0) {
									$('#fake').find('.true')
											.removeClass('true');
									$(
											$('#fake').children('i')[$(this)
													.closest('i').prevAll('i').length])
											.find('.tail').addClass('true')
									$('#fake').trigger('mouseleave');
								}
							}
							if ($('#fake').length > 0) {
								$('#comment_content_wrap_star_rating')
										.children('i').removeClass(
												"fa fa-star-half-o fa-1x")
										.removeClass("fa fa-star fa-1x")
										.removeClass("fa fa-star-o fa-1x");
								if ($('#fake').find('.true').hasClass('true')) {
									$(
											$(
													'#comment_content_wrap_star_rating')
													.children('i')[$('#fake')
													.closest('.info_box').find(
															'.true').closest(
															'i').prevAll('i').length])
											.addClass("fa fa-star fa-1x")
											.prevAll("i").addClass(
													"fa fa-star fa-1x");
									$(
											$(
													'#comment_content_wrap_star_rating')
													.children('i')[$('#fake')
													.closest('.info_box').find(
															'.true').closest(
															'i').prevAll('i').length])
											.nextAll("i").addClass(
													"fa fa-star-o fa-1x");
								}
							}
							return false;
						});
		$('.comment_btn')
				.click(
						function() {
							$('#comment').show();
							$('#comment_title').text(
									$(this).closest('a').find('img')
											.attr('alt'));
							$('#comment_content_wrap_img').attr(
									'src',
									$(this).closest('a').find('img')
											.attr('src'));
							$('#body_blind_wrap').show();
							var x = $(this).closest('.info_box').find('.true');
							$(
									'#comment_content_wrap_star_grade_body_star .star_rating')
									.attr(
											'id',
											$(this).closest('.info_box').find(
													'.star_rating').attr('id'));
							$(this).closest('.info_box').find('.star_rating')
									.removeAttr('id').attr('id', "fake");
							$('#comment_content_wrap_star_rating')
									.children('i').removeClass(
											"fa fa-star fa-1x").removeClass(
											"fa fa-star-o fa-1x").removeClass(
											"fa fa-star-half-o fa-1x");
							$('#inputText').val($(this).data('comment'));
							$('#inputText').data('comment',
									$(this).data('comment'));
							if ($(this).data('comment') == "") {
								$('#comment_content_wrap_button').attr(
										"disabled", "true");
							}
							if (x.hasClass('true') == true) {
								if (x.hasClass('head') == true) {
									$(
											$(
													'#comment_content_wrap_star_grade_body_star .star_rating')
													.children('i')[x.closest(
													'i').prevAll('i').length])
											.find('.head').addClass('true');
									$(
											$(
													'#comment_content_wrap_star_rating')
													.children('i')[x.closest(
													'i').prevAll('i').length])
											.addClass("fa fa-star-half-o fa-1x")
											.prevAll("i").addClass(
													"fa fa-star fa-1x");
									$(
											$(
													'#comment_content_wrap_star_rating')
													.children('i')[x.closest(
													'i').prevAll('i').length])
											.nextAll("i").addClass(
													"fa fa-star-o fa-1x");
								} else {
									$(
											$(
													'#comment_content_wrap_star_rating')
													.children('i')[x.closest(
													'i').prevAll('i').length])
											.addClass("fa fa-star fa-1x")
											.prevAll("i").addClass(
													"fa fa-star fa-1x");
									$(
											$(
													'#comment_content_wrap_star_rating')
													.children('i')[x.closest(
													'i').prevAll('i').length])
											.nextAll("i").addClass(
													"fa fa-star-o fa-1x");
									$(
											$(
													'#comment_content_wrap_star_grade_body_star .star_rating')
													.children('i')[x.closest(
													'i').prevAll('i').length])
											.find('.tail').addClass('true')
								}
								$(
										'#comment_content_wrap_star_grade_body_star .star_rating')
										.trigger('mouseleave');
							} else {
								$('#star_check').trigger('click');
							}
						});
		$('#body_blind_wrap')
				.click(
						function() {
							$('#comment').hide();
							$(this).hide();
							$('#comment_content_wrap_star_grade_wrap').hide();
							$('#comment_blind_wrap').hide();
							$(
									'#comment_content_wrap_star_grade_body_star .star_rating')
									.find('.true').removeClass('true');
							$(
									'#comment_content_wrap_star_grade_body_star .star_rating')
									.trigger('mouseleave');
							$('#fake')
									.removeAttr('id')
									.attr(
											'id',
											$(
													'#comment_content_wrap_star_grade_body_star .star_rating')
													.attr('id'));
							$(
									'#comment_content_wrap_star_grade_body_star .star_rating')
									.removeAttr('id');
						});
		$('#comment_blind_wrap').click(function() {
			$('#comment_content_wrap_star_grade_wrap').hide();
			$(this).hide();
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
							$(
									'#comment_content_wrap_star_grade_body_star .star_rating')
									.find('.true').removeClass('true');
							$(
									'#comment_content_wrap_star_grade_body_star .star_rating')
									.trigger('mouseleave');
							$('#fake')
									.removeAttr('id')
									.attr(
											'id',
											$(
													'#comment_content_wrap_star_grade_body_star .star_rating')
													.attr('id'));
							$(
									'#comment_content_wrap_star_grade_body_star .star_rating')
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
								if (comment.trim() == ""
										|| beforeComment == comment) {
									alert("제데로 입력해주세요");
								} else {
									if (beforeComment == "") {
										$
												.ajax({
													url : "reviewInsert.do",
													type : "post",//post방식																																																																																																																																																																																																																																																																																																																																																								
													dataType : "json",//json
													data : {
														"isbn" : $(
																'#comment_content_wrap_star_grade_body_star .star_rating')
																.attr('id'),
														"content" : comment
													},
													error : function(request,
															status, error) {
														alert("code:"
																+ request.status
																+ "\n"
																+ "message:"
																+ request.responseText
																+ "\n"
																+ "error:"
																+ error);
													},
													success : function(json) {
														console.log(json);
													}
												});//$.ajax() end
										$('#fake').closest('.info_box').find(
												'.comment_btn').data('comment',
												comment);
										$('#inputText')
												.data('comment', comment);
									} else {
										$
												.ajax({
													url : "reviewUpdate.do",
													type : "post",//post방식
													dataType : "json",//json
													data : {
														"isbn" : $(
																'#comment_content_wrap_star_grade_body_star .star_rating')
																.attr('id'),
														"content" : comment
													},
													error : function(request,
															status, error) {
														alert("code:"
																+ request.status
																+ "\n"
																+ "message:"
																+ request.responseText
																+ "\n"
																+ "error:"
																+ error);
													},
													success : function(json) {
														console.log(json);
													}
												});//$.ajax() end
										$('#fake').closest('.info_box').find(
												'.comment_btn').data('comment',
												comment);
										$('#inputText')
												.data('comment', comment);
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
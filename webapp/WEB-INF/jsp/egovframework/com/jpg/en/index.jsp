<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:import url="/menu.do" />
<link rel="stylesheet" href="/css/egovframework/com/jpg/index_en.css">
<script src="/js/egovframework/com/jpg/index.js"></script>

<c:forEach var="pop" items="${popList}" varStatus="status">
	<c:import url="/uss/ion/pwm/openPopupManage.do" charEncoding="utf-8">
		<c:param name="popupId" value="${pop.popupId}" />
		<c:param name="fileUrl" value="${pop.fileUrl}" />
		<c:param name="stopVewAt" value="Y" />
		<c:param name="popCount" value="${status.count}"/>
	</c:import>
</c:forEach>



<div id="container">
	    <!--컨텐츠-->
    <div class="main-container">
        <div class="main-content">
            <div class="inner">
                <div class="content01">
                	<div class="main_tit">
                		<h2>ISLANDS</h2>
                		<h3>
                			ISLANDS BRIDGING TO THE FUTURE,<br>SAILING TOWARDS THE WORLD
                		</h3>
                	</div>
                </div>
                <!-- <div class="content02">
                    <div class="q_icon">
                        <ul>
                            <li>
                                <a href="/contents.do?id=en_greet&lang=en">
                                    <div class="icon">
                                        <img src="/images/egovframework/com/jpg/e_q_icon01.png" alt=""/>
                                    </div>
                                    <h3>Greetings</h3>
                                </a>
                            </li>
                            <li>
                                <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000131&lang=en">
                                    <div class="icon">
                                        <img src="/images/egovframework/com/jpg/e_q_icon02.png" alt=""/>
                                    </div>
                                    <h3>Newsletter</h3>
                                </a>
                            </li>
                            <li>
                                <a href="/contents.do?id=en_par&lang=en">
                                    <div class="icon">
                                        <img src="/images/egovframework/com/jpg/e_q_icon03.png" alt=""/>
                                    </div>
                                    <h3>Partnerships</h3>
                                </a>
                            </li>
                            <li>
                                <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000141&lang=en">
                                    <div class="icon">
                                        <img src="/images/egovframework/com/jpg/e_q_icon04.png" alt=""/>
                                    </div>
                                    <h3>Gallery</h3>
                                </a>
                            </li>
                            <li>
                                <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000151&lang=en">
                                    <div class="icon">
                                        <img src="/images/egovframework/com/jpg/e_q_icon05.png" alt=""/>
                                    </div>
                                    <h3>Notice</h3>
                                </a>
                            </li>
                            <li>
                                <a href="/contents.do?id=en_f&lang=en">
                                    <div class="icon">
                                        <img src="/images/egovframework/com/jpg/e_q_icon06.png" alt=""/>
                                    </div>
                                    <h3>FAQ</h3>
                                </a>
                            </li>
                            <li>
                                <a href="/contents.do?id=en_lt&lang=en">
                                    <div class="icon">
                                        <img src="/images/egovframework/com/jpg/e_q_icon07.png" alt=""/>
                                    </div>
                                    <h3>Visitor Information</h3>
                                </a>
                            </li>
                            <li>
                                <a href="http://wom.synology.me/kisland/" target="_blank">
                                    <div class="icon">
                                        <img src="/images/egovframework/com/jpg/e_q_icon08.png" alt=""/>
                                    </div>
                                    <h3>Virtual Tour</h3>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <script>
                        $('.q_icon ul').slick({
                            infinite: true,
                            slidesToShow: 5,
                            slidesToScroll: 1,
                            arrows:true,
                            
                            responsive: [
                                {
                                  breakpoint: 1024,
                                  settings: {
                                    slidesToShow: 4,
                                    slidesToScroll: 1,
                                    infinite: true,
                                  }
                                },
                                {
                                  breakpoint: 600,
                                  settings: {
                                    slidesToShow: 3,
                                    slidesToScroll: 1
                                  }
                                }
                                // You can unslick at a given breakpoint now by adding:
                                // settings: "unslick"
                                // instead of a settings object
                           	]
                        });
                    </script>
                </div> -->
            </div>
        </div>
        <div class="Remark">
	    	<p>
	    		Nammunbawi, Hongdo Island
	    	</p>
	    	<p>
	    		Heuksan-myeon
	    	</p>
	    </div>

		<!-- 슬라이드 추가 ▼ -->
		<div class="middle_content">
			<div class="q_icon_m">
                        <!-- <ul>
						                            <li>
						                                <a href="/contents.do?id=en_greet&lang=en">
						                                    <div class="icon_m">
						                                        <img src="/images/egovframework/com/jpg/latest01.jpg" alt=""/>
						                                    </div>
						                                    <h3>Greetings</h3>
						                                </a>
						                            </li>
						</ul> -->
		</div>
		<!-- 슬라이드 추가 ▲ -->
    </div>
    <!--컨텐츠 끝-->
</div>
<!--end container-->
<!--start footer-->
	<div class="footer">
        <div class="ft_info">
            <div class="inner">
                <div class="ft_logo"><img src="/images/egovframework/com/jpg/ft_logo_en.png" alt="KIDI 한국섬진흥원"/></div>
                <div class="ft_info0">
                    <p>Address : 6, Samhak-ro 92beon-gil, Mokpo-si, Jeollanam-do, Republic of Korea</p>
                    <p>Office : +82 61-276-6001 <br>Fax : +82 61-276-4005</p>
                    <p class="copyright">COPYRIGHT ⓒ KIDI All rights reserved.</p>
                </div>
            </div>
        </div>
	</div>
    <!--end footer-->
</div>
<!--end wrap-->

<script>
	//1st sec
	$('.visual').slick({
		dots : true,
		arrows : false,
		infinite : true,
		autoplay : true,
		autoplaySpeed : 3000,
		slidesToShow : 1,
		fade : true,
		adaptiveHeight : false
	});

	//2nd sec poster
	$('.poster').slick({
		dots : false,
		arrows : false,
		infinite : true,
		autoplay : false,
		autoplaySpeed : 5000,
		slidesToShow : 4,
		slidesToScroll : 4,
		adaptiveHeight : false,
		responsive : [
			{
				breakpoint : 1024,
				settings : {
					slidesToShow : 3,
					slidesToScroll : 3
				}
			}, {
			breakpoint : 768,
			settings : {
				slidesToShow : 2,
				slidesToScroll : 2
			}
		}, {
			breakpoint : 480,
			settings : {
				slidesToShow : 2,
				slidesToScroll : 2,
				arrows : true
			}
		} ]
	});

	//2nd sec sns thumb
function windowOpen(url,target){
	
	if(confirm("해당 페이지로 이동을 하시겠습니까?")){
		window.open(url, target);
		}
	}
	$('.thumb_list').slick({
		dots : false,
		arrows : false,
		infinite : true,
		autoplay : false,
		autoplaySpeed : 5000,
		centerPadding:'20px',
		slidesToShow : 5,
		slidesToScroll : 5,
		adaptiveHeight : false,
		responsive : [ {
			breakpoint : 770,
			settings : {
				slidesToShow : 3,
				slidesToScroll : 3
			}
		}, {
			breakpoint : 415,
			settings : {
				slidesToShow : 2,
				slidesToScroll : 2
			}
		} ]
	});

	//2nd sec sns thumb
	$('.thumb_list2').slick({
		dots : false,
		arrows : false,
		infinite : true,
		autoplay : true,
		autoplaySpeed : 5000,
		slidesToShow : 3,
		slidesToScroll : 3,
		adaptiveHeight : false,
		responsive : [ {
			breakpoint : 1600,
			settings : {
				slidesToShow : 1,
				slidesToScroll :1
			}
		}, {
			breakpoint : 415,
			settings : {
				slidesToShow : 1,
				slidesToScroll : 1
			}
		} ]
	});

	// http://www.dte.web.id/2013/02/event-mouse-wheel.html
	(function() {
		function scrollHorizontally(e) {
			e = window.event || e;
			var delta = Math.max(-1, Math.min(1, (e.wheelDelta || -e.detail)));
			document.documentElement.scrollLeft -= (delta * 40); // Multiplied by 40
			document.body.scrollLeft -= (delta * 40); // Multiplied by 40
			e.preventDefault();
		}
		if (window.addEventListener) {
			// IE9, Chrome, Safari, Opera
			window.addEventListener("mousewheel", scrollHorizontally, false);
			// Firefox
			window
					.addEventListener("DOMMouseScroll", scrollHorizontally,
							false);
		} else {
			// IE 6/7/8
			window.attachEvent("onmousewheel", scrollHorizontally);
		}
	})();

	//panel-2 tab
	function openCity2(evt, cityName) {
		var i, tabcontent2, tablinks2;
		tabcontent2 = document.getElementsByClassName("tabcontent2");
		for (i = 0; i < tabcontent2.length; i++) {
			tabcontent2[i].style.display = "none";
		}
		tablinks2 = document.getElementsByClassName("tablinks2");
		for (i = 0; i < tablinks2.length; i++) {
			tablinks2[i].className = tablinks2[i].className.replace(" active",
					"");
		}
		document.getElementById(cityName).style.display = "block";
	}

	//document.getElementById("defaultOpen2").click();

	//panel-3 tab
	function openCity(evt, cityName) {
		var i, tabcontent, tablinks;
		tabcontent = document.getElementsByClassName("tabcontent");
		for (i = 0; i < tabcontent.length; i++) {
			tabcontent[i].style.display = "none";
		}
		tablinks = document.getElementsByClassName("tablinks");
		for (i = 0; i < tablinks.length; i++) {
			tablinks[i].className = tablinks[i].className
					.replace(" active", "");
		}
		document.getElementById(cityName).style.display = "block";
		//evt.currentTarget.className += " atv";
	}

	// Get the element with id="defaultOpen" and click on it
	document.getElementById("defaultOpen").click();

	function go_url(url) {
		if (url != '')
			window.open(url, '_blank');
	}

	$(".goBtn").on("click", function() {
		var baseDom = $(this).parent();
		
		$("#subForm .nttIdVal").val(baseDom.data("nttid"));
		$("#subForm .bbsIdVal").val(baseDom.data("bbsid"));
		$("#subForm .pageIndexVal").val(baseDom.data("pageindex"));	
		$("#subForm .skinVal").val(baseDom.data("skin"));	
		$("#subForm").submit();
	});
	
	function tapOpen(type){
		if(type == "insta"){
			$("#youtube_con").hide();
			$("#insta_con").show();
			//init(type);
			$('.thumb_list').slick('resize');
		}else{
			$("#youtube_con").show();
			$("#insta_con").hide();
			//init(type);
			 $('.thumb_list2').slick('resize');
		}
		
	}
	var agent = navigator.userAgent.toLowerCase();
	
	
	$(".tabindex_slick").attr("tabindex", "3");
</script>

</body>

</html>
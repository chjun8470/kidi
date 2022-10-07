<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<%
//out.println("Total Memory : "+Runtime.getRuntime().totalMemory());
//out.println("Free Memory : "+Runtime.getRuntime().freeMemory());
//out.println("Max Memory : "+Runtime.getRuntime().maxMemory());
%>

<%!
	String getClientIP(HttpServletRequest request) {

	  String ip = request.getHeader("X-FORWARDED-FOR"); 

		 

	  if (ip == null || ip.length() == 0) {

		ip= request.getHeader("Proxy-Client-IP");

	  }



	  if (ip == null || ip.length() == 0) {

		ip= request.getHeader("WL-Proxy-Client-IP");  

	  }



	  if (ip == null || ip.length() == 0) {

		ip= request.getRemoteAddr() ;

	  }

		 

	  return ip;

	}
%>

<c:import url="/menu.do" />
<link rel="stylesheet" href="/css/egovframework/com/jpg/index.css">
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
                    <div class="banner">
                        <ul class="banner_slide">
                            <li>
                                <div class="slide01">
                                    <a href="" target="_blank" title="새창열기">
                                        <img src="/images/egovframework/com/jpg/banner01.jpg" alt="한국 섬의 체계적 연구와 발전을 위한 컨트롤 타워,한국섬진흥원"/>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <div class="slide01">
                                    <a href="https://www.youtube.com/watch?v=MoOOo9tHyIQ" target="_blank" title="새창열기">
                                        <img src="/images/egovframework/com/jpg/도초도.jpg" alt="제3회 섬의 날 찰칵섬 도초도"/>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <div class="slide01">
                                    <a href="https://www.youtube.com/watch?v=RDpvfPrb75M" target="_blank" title="새창열기">
                                        <img src="/images/egovframework/com/jpg/선유도01.jpg" alt="제3회 섬의 날 첨벙섬 선유도"/>
                                    </a>
                                </div>
                            </li>
							<li>
                                <div class="slide01">
                                    <a href="https://www.youtube.com/watch?v=zphH_pysCaM" target="_blank" title="새창열기">
                                        <img src="/images/egovframework/com/jpg/울릉도02.jpg" alt="제3회 섬의 날 첨벙성 울릉도"/>
                                    </a>
                                </div>
                            </li>
							<!-- <li>
                                <div class="slide01">
                                    <a href="https://www.clean.go.kr/index.es?sid=a1" target="_blank" title="새창열기">
                                        <img src="/images/egovframework/com/jpg/banner05.jpg" alt="비밀은 보장·신변은 보호·용기는 보상. 부패·공익신고. 당신이 사회를 지킬 때, 법은 당신을 지킵니다."/>
                                    </a>
                                </div>
                            </li> -->
                        </ul>
                    </div>
                    <script>
                        $('.banner_slide').slick({
                            dots: true,
                            infinite: true,
                            autoplay: true,
                            speed: 500,
                            arrows:true
                        });
                    </script>

                    <div class="q_menu">
                        <ul>
                            <li class="menu01">
                                <a href="/contents.do?id=greetings">
                                    <h3><img src="/images/egovframework/com/jpg/mini_logo_black.png" alt="한국섬진흥원"/><br>소개</h3>
                                </a>
                            </li>
                            <li class="menu02">
                                <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000051">
                                    <img src="/images/egovframework/com/jpg/q_menu02-1.png" alt=""/>
                                    <h3>채용공고</h3>
                                </a>
                            </li>
                            <li class="menu03">
                                <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000085">
                                    <img src="/images/egovframework/com/jpg/q_menu03-1.png" alt=""/>
                                    <h3>한섬원 아카데미</h3>
                                </a>
                            </li>
                            <li class="menu04">
                                <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000091">
                                    <h3 class="sound_only">한국섬진흥원 보도자료</h3>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="content02">
                    <div class="q_icon">
                        <ul>
                            <li>
                                <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000085">
                                    <div class="icon">
                                        <img src="/images/egovframework/com/jpg/q_icon01.png" alt=""/>
                                    </div>
                                    <h3>자료실</h3>
                                </a>
                            </li>
                            <li>
                                <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000094">
                                    <div class="icon">
                                        <img src="/images/egovframework/com/jpg/q_icon02.png" alt=""/>
                                    </div>
                                    <h3>과제제안</h3>
                                </a>
                            </li>
                            <li>
                                <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000092">
                                    <div class="icon">
                                        <img src="/images/egovframework/com/jpg/q_icon03.png" alt=""/>
                                    </div>
                                    <h3>입찰공고</h3>
                                </a>
                            </li>
							<!--
                            <li>
                                <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000089">
                                    <div class="icon">
                                        <img src="/images/egovframework/com/jpg/q_icon04.png" alt=""/>
                                    </div>
                                    <h3>교류협력사업</h3>
                                </a>
                            </li>
							-->
                            <li>
                                <a href="/contents.do?id=location">
                                    <div class="icon">
                                        <img src="/images/egovframework/com/jpg/q_icon05.png" alt=""/>
                                    </div>
                                    <h3>찾아오시는 길</h3>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="latest">
                        <header>
                            <h2>공지사항</h2>
                            <button class="more" onClick="location.href='/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000041'">+<span class="sound_only">더보기</span></button>
                        </header>
                        <div class="latest_content">
                            <ul>
                            <c:forEach var="list" items="${list1}" varStatus="status">
                            	<li>
                                    <a href="/cop/bbs/selectArticleDetail.do?nttId=${list.nttId}&bbsId=${list.bbsId}">
                                        <p class="la_tit">· ${list.nttSj}</p>
                                        <p class="la_date">${list.frstRegisterPnttm}</p>
                                    </a>
                                </li>
                            </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--컨텐츠 끝-->
</div>
<!--end container-->
<!--start footer-->
        <div class="footer">
        <div class="ft_link">
            <div class="inner">
                <ul>
                    <li><a href="/contents.do?id=service">이용약관</a></li>
                    <li><a href="/contents.do?id=privacy">개인정보처리방침</a></li>
                    <li><a href="/contents.do?id=email">이메일무단수집거부</a></li>
                </ul>
            </div>
        </div>
        <div class="ft_info">
            <div class="inner">
                <div class="ft_logo"><img src="/images/egovframework/com/jpg/ft_logo.png" alt="KIDI 한국섬진흥원"/></div>
                <div class="ft_info0">
                    <p>주소 : 전라남도 목포시 삼학로 92번길 6(산정동 1428-1) 한국섬진흥원</p>
                    <p>대표전화 : 061-276-6001 | FAX : 061-276-4005</p>
                    <p class="copyright">COPYRIGHT ⓒ 한국섬진흥원 All rights reserved.</p>
                </div>
					 <a href="https://ncp.clean.go.kr/cmn/secCtfcKMC.do?menuCode=acs&mapAcs=Y&insttCd=B554662" class="ft_banner">
					<img src="/images/egovframework/com/jpg/head_Image.jpg" alt="국민권익위원회"></a>
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
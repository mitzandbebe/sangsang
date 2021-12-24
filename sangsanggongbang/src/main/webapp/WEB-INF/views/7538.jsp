<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta property="og:type" content="website">
<meta property="og:site_name" content="Ã¬ÂÂÃ¬ÂÂ¨Ã«ÂÂ¹" />
<meta property="og:locale" content="ko-KR"/>

<link rel="shortcut icon" href="https://d1x9f5mf11b8gz.cloudfront.net/common/img/sssd_favicon.png" type="image/x-icon" />
<link rel="icon" href="https://d1x9f5mf11b8gz.cloudfront.net/common/img/sssd_favicon.png" type="image/x-icon" />

<meta name="google-site-verification" content="HyHZYXh5TWlJ5Z7v1e6jAW35Aeux17JsKCNnI8Tcb40" />
<meta name="naver-site-verification" content="f7640ecd69ca7b49b8ecbe4293d953d713110970"/>
<meta name="facebook-domain-verification" content="dt6slkkyq0tswljnhu3mrrhqxaoi11" />

<meta property="al:ios:url" content="sssd://main?">
<meta property="al:ios:app_name" content="Ã¬ÂÂÃ¬ÂÂ¨Ã«ÂÂ¹">
<meta property="al:android:url" content="intent://scan/#Intent;scheme=sssd;package=com.sssdc.app.sssd;end">
<meta property="al:android:app_name" content="Ã¬ÂÂÃ¬ÂÂ¨Ã«ÂÂ¹">
<meta property="al:android:package" content="com.sssdc.app.sssd">
<meta property="al:web:url" content="https://www.sssd.co.kr/main">

<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-NPGD3BL');</script>
<!-- End Google Tag Manager -->

<link rel="stylesheet" href="//stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" href="//unpkg.com/swiper@7/swiper-bundle.min.css">
<link rel="stylesheet" href='/main/statics/css/common.css?d=20211222'>
<link rel="stylesheet" href='/main/statics/css/newstyle.css?d=20211222'>
<link rel="stylesheet" href="/main/common/plugins/bootstrap-datepicker/css/datepicker3.css">
<link rel="stylesheet" href="//cdn.rawgit.com/ax5ui/ax5ui-mask/master/dist/ax5mask.css" type="text/css" />

<script src="/main/statics/plugins/jquery-3.4.1/js/jquery.min.js"></script>
<script src="//stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
<script src="//unpkg.com/swiper@7/swiper-bundle.min.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d20a28792c73bb493e60b15633cf1c39&libraries=services,clusterer,drawing"></script>
<script src="//static.nid.naver.com/js/naverLogin_implicit-1.0.3-min.js" type="text/javascript" charset="utf-8"></script>
<script src="/main/common/plugins/tether/js/tether.min.js"></script>
<script src="/main/common/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script src="/main/common/plugins/bootstrap-datepicker/js/locales/bootstrap-datepicker.kr.js"></script>
<script src="/main/statics/plugins/jquery.lazy/js/jquery.lazy.min.js"></script>
<script src="//cdn.rawgit.com/ax5ui/ax5core/master/dist/ax5core.min.js" type="text/javascript"></script>
<script src="//cdn.rawgit.com/ax5ui/ax5ui-mask/master/dist/ax5mask.min.js" type="text/javascript"></script>
<script src="//cdn.jsdelivr.net/npm/ua-parser-js@0/dist/ua-parser.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js" integrity="sha512-qTXRIMyZIFb8iQcfjXWCO8+M5Tbc38Qi5WzdPOYZHIlZpzBHG3L3by84BBBOiRGiEb7KKtAOAs5qYdUiZiQNNQ==" crossorigin="anonymous"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/locale/ko.js"></script>
<script src='/main/statics/js/somssidang/somssiCommonUtil.js?d=20211222'></script>
<script src="/main/statics/js/jquery.countTo.min.js"></script>
<script src="//www.youtube.com/iframe_api"></script>
<script type="application/ld+json">
	{ 
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "Ã¬ÂÂÃ¬ÂÂ¨Ã«ÂÂ¹",
		"email": "mailto:help@sssdc.co.kr",
		"url": "https://www.sssd.co.kr/main",
		"sameAs": [
			"https://blog.naver.com/town_class",
			"https://pf.kakao.com/_RqzDC",
			"https://tv.naver.com/sssd",
			"https://www.youtube.com/channel/UC0vhjoqsbaBGBqbdJ8nzDgw",
			"https://www.instagram.com/sssdc_ins/",
			"https://www.facebook.com/Ã¬ÂÂÃ¬ÂÂ¨Ã«ÂÂ¹_Ã¬ÂÂÃ¬ÂÂ¨-Ã¬ÂÂÃ«ÂÂ-Ã¬ÂÂ¬Ã«ÂÂÃ«ÂÂ¤Ã¬ÂÂ-ÃªÂ³ÂµÃªÂ°Â-2119763571630048",
			"https://apps.apple.com/kr/app/Ã¬ÂÂÃ¬ÂÂ¨Ã«ÂÂ¹/id1436254520",
			"https://play.google.com/store/apps/details?id=com.sssdc.app.sssd",
			"https://smartstore.naver.com/sssd"
		]
	}
</script>
<script src="//cdnjs.cloudflare.com/ajax/libs/bodymovin/5.7.6/lottie.min.js" integrity="sha512-BB7rb8ZBAxtdJdB7nwDijJH9NC+648xSzviK9Itm+5APTtdpgKz1+82bDl4znz/FBhd0R7pJ/gQtomnMpZYzRw==" crossorigin="anonymous"></script>
<script src="//uicdn.toast.com/tui-app-loader/latest/tui-app-loader.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.7/ScrollMagic.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.7/plugins/debug.addIndicators.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/gsap/2.1.3/TweenMax.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.5/plugins/animation.gsap.js"></script>
<!-- AppsFlyer web SDK (+smart banner,PBA 211015.elly-->
<script>
!function(t,e,n,s,a,c,i,o,p){t.AppsFlyerSdkObject=a,t.AF=t.AF||function(){
(t.AF.q=t.AF.q||[]).push([Date.now()].concat(Array.prototype.slice.call(arguments)))},
t.AF.id=t.AF.id||i,t.AF.plugins={},o=e.createElement(n),p=e.getElementsByTagName(n)[0],o.async=1,
o.src="https://websdk.appsflyer.com?"+(c.length>0?"st="+c.split(",").sort().join(",")+"&":"")+(i.length>0?"af_id="+i:""),
p.parentNode.insertBefore(o,p)}(window,document,"script",0,"AF", "pba,banners",{pba: {webAppId: "e55cf2c8-c31b-46f2-b79e-e71ddf86ecaa"}, banners: {key: "b7fcf7bf-63f1-4108-bb2d-9b4ab4aaa347"}});
// Smart Banners are by default set to the max z-index value, so they won't be hidden by the website elements. This can be changed if you want some website components to be on top of the banner.
AF('banners', 'showBanner', { bannerZIndex: 1000, additionalParams: { p1: "v1", p2: "v2"}});
</script>
<script src="/main/statics/js/AppsFlyerSDK/onelink-smart-script.js"></script>
<!-- ÃªÂ³ÂµÃ­ÂÂµ Ã¬ÂÂÃ¬ÂÂ­ -->

<meta name="title" content='[Ã«Â§ÂÃ­ÂÂ¬,Ã­ÂÂÃ«ÂÂ,Ã­ÂÂ©Ã¬Â Â,Ã¬ÂÂ°Ã«ÂÂ¨] Ã­ÂÂ¥ÃªÂ¸Â°Ã«Â¡ÂÃ¬ÂÂ´ Ã«ÂÂÃ«Â§ÂÃ¬ÂÂ Ã¬ÂÂÃªÂ°Â Ã¬Â¡Â°Ã­ÂÂ¥ÃªÂ³Â¼ Ã­ÂÂ¥Ã¬ÂÂÃ­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤' />
<meta name="description" content ='Ã¬ÂÂÃ«ÂÂÃ­ÂÂÃ¬ÂÂ¸Ã¬ÂÂ. Ã¬ÂÂ¤Ã­ÂÂÃ«ÂÂÃ¬ÂÂ¤ Ã«Â¯Â¸Ã¬ÂÂ¸Ã¬ÂÂ Ã¬ÂÂÃ«ÂÂÃ«ÂÂ¤.Ã«ÂÂ¹Ã¬ÂÂ Ã¬ÂÂ Ã­ÂÂÃ­ÂÂÃ­ÂÂÃ«ÂÂ Ã«ÂÂ¹Ã¬ÂÂ Ã¬ÂÂ Ã­ÂÂ¥ÃªÂ¸Â°Ã«Â¥Â¼Ã¬Â§ÂÃ¬Â Â Ã¬Â ÂÃ¬ÂÂÃ­ÂÂÃ«ÂÂ Ã¬Â¡Â°Ã­ÂÂ¥ Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤Ã¬ÂÂÃ«ÂÂÃ«ÂÂ¤.Ã«ÂÂ¤Ã¬ÂÂÃ­ÂÂ Ã­ÂÂ¥Ã¬ÂÂ Ã­ÂÂµÃ­ÂÂ´Ã«ÂÂ´ÃªÂ°Â Ã¬Â¢ÂÃ¬ÂÂÃ­ÂÂÃ«ÂÂ Ã­ÂÂ¥ÃªÂ¸Â°Ã«Â¥Â¼ Ã¬Â°Â¾Ã¬ÂÂÃ«Â³Â´Ã«ÂÂ Ã¬ÂÂÃªÂ°ÂÃ¬ÂÂÃ«ÂÂÃ«ÂÂ¤.Ã­ÂÂÃªÂ°ÂÃ¬Â§Â Ã­ÂÂ¥Ã¬ÂÂ Ã«ÂÂÃ­ÂÂÃ«ÂÂ´Ã«ÂÂ 1Ã¬Â¢Â Ã­ÂÂ¥Ã«Â£ÂÃ¬ÂÂÃ«Â¸ÂÃ«ÂÂ­Ã«ÂÂ©Ã«ÂÂ Ã­ÂÂ¥ Ã«ÂÂ±Ã¬ÂÂ Ã«Â¹ÂÃ¬ÂÂ¨Ã¬ÂÂ Ã«Â§ÂÃªÂ²Â Ã¬ÂÂÃ¬ÂÂ´Ã¬Â£Â¼Ã¬ÂÂ´ÃªÂ°ÂÃ¬ÂÂ¥ Ã¬ÂµÂÃ¬Â ÂÃ¬ÂÂ Ã­ÂÂ¥Ã¬ÂÂ Ã¬Â°Â¾Ã¬ÂÂÃ«ÂÂ´Ã«ÂÂ Ã¬ÂÂÃªÂ°ÂÃ¬ÂÂ ÃªÂ°ÂÃ¬ÂÂµÃ«ÂÂÃ«ÂÂ¤./ Ã«ÂÂÃ«Â¥Â¼ Ã¬ÂÂÃ­ÂÂ Ã¬ÂÂÃªÂ°Â/ Ã«ÂÂÃ«Â¥Â¼ Ã­ÂÂÃ­ÂÂÃ­ÂÂÃ«ÂÂ Ã­ÂÂ¥ÃªÂ¸Â°&#039;Ã«ÂÂÃ«Â§ÂÃ¬ÂÂ Ã­ÂÂ¥, Ã¬ÂÂ°Ã«Â¦Â¬Ã¬ÂÂ Ã­ÂÂ¥Ã¬ÂÂ Ã«Â§ÂÃ«ÂÂÃ«ÂÂ Ã¬Â¦ÂÃªÂ±Â°Ã¬ÂÂ&#039;Ã¬Â²ÂÃ¬Â²ÂÃ­ÂÂ Ã­ÂÂ¥Ã¬ÂÂ Ã«Â§Â¡Ã¬ÂÂ¼Ã«Â©Â° Ã«ÂÂÃ«ÂÂÃ¬ÂÂ ÃªÂ¸Â°Ã«Â¡ÂÃ­ÂÂÃªÂ³Â ÃªÂ¸Â°Ã¬ÂÂµ Ã­ÂÂÃ¬Â¼Â Ã¬ÂÂ Ã«ÂÂ¨Ã¬ÂÂÃ¬ÂÂÃ«ÂÂ Ã¬Â¶ÂÃ¬ÂÂµÃ¬ÂÂ ÃªÂºÂ¼Ã«ÂÂ´Ã«Â´ÂÃ«ÂÂÃ«ÂÂ¤.Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤Ã¬ÂÂ Ã¬ÂÂ¤Ã¬ÂÂÃ«ÂÂ Ã«Â¶ÂÃ«ÂÂ¤Ã¬ÂÂ´ Ã¬ÂÂ¬Ã«Â°ÂÃ«ÂÂ¤, Ã¬ÂÂ ÃªÂ¸Â°Ã­ÂÂÃ«ÂÂ¤,ÃªÂ°ÂÃ­ÂÂÃ¬ÂÂ¬Ã«Â¥Â¼ Ã¬ÂÂ°Ã«Â°ÂÃ­ÂÂÃ«ÂÂ Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤Ã¬ÂÂÃ¬ÂÂ.&#034;Ã«ÂÂÃ«Â§ÂÃ¬ÂÂ ÃªÂ°ÂÃ¬ÂÂ±Ã¬ÂÂ Ã­ÂÂ¥ÃªÂ¸Â°Ã«Â¡Â Ã­ÂÂÃ­ÂÂ Ã­ÂÂ´Ã«Â³Â´Ã¬ÂÂ¸Ã¬ÂÂ&#034;-Ã¬Â¤ÂÃ«Â¹Â Ã«ÂÂ 20ÃªÂ°ÂÃ¬Â§Â Ã¬ÂÂ´Ã¬ÂÂÃ¬ÂÂ Ã­ÂÂ¥Ã¬ÂÂ Ã¬ÂÂÃ­ÂÂ¥Ã­ÂÂÃ¬ÂÂÃªÂ³Â ,Ã«Â³Â¸Ã¬ÂÂ¸Ã«Â§ÂÃ¬ÂÂ Ã¬ÂÂ¬Ã­ÂÂ©Ã¬ÂÂ Ã«ÂÂ¸Ã­ÂÂ¸Ã«Â¥Â¼ ÃªÂ¸Â°Ã«Â¡ÂÃ­ÂÂ©Ã«ÂÂÃ«ÂÂ¤.Ã¬ÂÂÃ­ÂÂÃ¬ÂÂÃ«ÂÂ Ã¬ÂÂ¤Ã­ÂÂÃ¬ÂÂ¼Ã«Â¡Â Ã­ÂÂ¥Ã¬ÂÂ Ã«Â°Â°Ã­ÂÂ©Ã­ÂÂÃ¬ÂÂ¬Ã«ÂÂÃ«Â§ÂÃ¬ÂÂ Ã­ÂÂ¥ÃªÂ¸Â°Ã«Â¥Â¼ Ã¬ÂÂÃ¬ÂÂ±Ã­ÂÂÃ¬ÂÂÃªÂ²Â Ã«ÂÂ©Ã«ÂÂÃ«ÂÂ¤.-Ã¢ÂÂ¢ Ã¬Â ÂÃ¬ÂÂÃ­ÂÂÃ«ÂÂ Ã¬ÂÂÃ­ÂÂÃ¬ÂÂ ÃªÂ°ÂÃ¬ÂÂÃ­ÂÂ¥Ã¬ÂÂ 1ÃªÂ°Â (30ml)(Ã«Â¶ÂÃ­ÂÂ¥Ã«Â¥Â  20%Ã¬ÂÂ EDPÃ­ÂÂ¥Ã¬ÂÂÃ¬Â ÂÃ¬ÂÂ)Ã¢ÂÂ¢ Ã¬ÂÂÃ¬ÂÂÃ¬ÂÂÃªÂ°Â : Ã¬ÂµÂÃ«ÂÂ 1Ã¬ÂÂÃªÂ°ÂÃ¢ÂÂ¢ Ã¬ÂÂÃªÂ°ÂÃ¬ÂÂ¸Ã¬ÂÂ : 1 ~ 4Ã«ÂªÂÃ¢ÂÂ¢ Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤Ã¬ÂÂÃªÂ°Â Ã­ÂÂÃ¬ÂÂÃªÂ°ÂÃ«ÂÂ¥Ã­ÂÂ©Ã«ÂÂÃ«ÂÂ¤.Made in Italy Ã¬Â ÂÃ­ÂÂÃ¬ÂÂ ÃªÂ³Â ÃªÂ¸ÂÃ¬ÂÂ¤Ã«ÂÂ¬Ã¬ÂÂ´ Ã­ÂÂ¥Ã¬ÂÂÃ«Â³ÂÃ¬ÂÂÃ«Â³Â¸Ã¬ÂÂ¸Ã«Â§ÂÃ¬ÂÂ ÃªÂ°ÂÃ¬ÂÂ±Ã¬ÂÂ Ã«ÂÂÃ­ÂÂ Ã«ÂÂ¼Ã«Â²Â¨Ã«Â§Â Ã¬Â ÂÃ¬ÂÂ Ã­ÂÂÃ­ÂÂ¬Ã¬ÂÂ¥Ã­ÂÂÃ¬ÂÂ¬ ÃªÂ°ÂÃ¬Â Â¸ÃªÂ°ÂÃ¬ÂÂ­Ã«ÂÂÃ«ÂÂ¤.Ã­ÂÂ¹Ã¬ÂÂ Ã¬Â¡Â°Ã­ÂÂ¥Ã¬ÂÂ´ Ã¬Â²ÂÃ¬ÂÂÃ¬ÂÂ´Ã«ÂÂ¼ ÃªÂ±Â±Ã¬Â ÂÃ«ÂÂÃ¬ÂÂ Ã«ÂÂ¤Ã«Â©Â´Ã¬Â ÂÃªÂ°Â ÃªÂ³ÂÃ¬ÂÂÃ¬ÂÂ Ã¬Â°Â¨ÃªÂ·Â¼Ã¬Â°Â¨ÃªÂ·Â¼ Ã¬ÂÂÃ¬ÂÂ¸Ã­ÂÂ Ã¬ÂÂÃ«Â Â¤Ã«ÂÂÃ«Â¦Â´ÃªÂ»ÂÃ¬ÂÂ ^^Ã¬ÂÂ¸Ã¬Â ÂÃ«ÂÂ Ã¬Â§Â Ã¬Â¦ÂÃªÂ±Â°Ã¬ÂÂ´ Ã«Â§ÂÃ¬ÂÂÃ«Â§Â ÃªÂ°ÂÃ¬Â§ÂÃªÂ³Â  Ã«Â°Â©Ã«Â¬Â¸ Ã­ÂÂ´Ã¬Â£Â¼Ã¬ÂÂ¸Ã¬ÂÂ!'/>
<meta name='keywords' content='Ã¬ÂÂÃ«ÂÂ°Ã¬ÂÂ´Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤, ÃªÂ³ÂµÃ«Â°Â©, Ã¬ÂÂÃ¬ÂÂ¨Ã«ÂÂ¹, Ã¬Â·Â¨Ã«Â¯Â¸Ã¬ÂÂÃ­ÂÂ, Ã¬Â§ÂÃ¬ÂÂ¥Ã¬ÂÂ¸Ã¬Â·Â¨Ã«Â¯Â¸, Ã¬Â·Â¨Ã«Â¯Â¸, Ã¬ÂÂÃªÂ³ÂµÃ¬ÂÂ, Ã­ÂÂ¥Ã¬ÂÂ Ã¢ÂÂ Ã«ÂÂÃ­ÂÂ¨Ã¬Â Â Ã¢ÂÂ Ã­ÂÂÃ¬Â·Â¨Ã¬Â Â, Ã¬ÂÂ¤Ã­ÂÂÃ«ÂÂÃ¬ÂÂ¤Ã«Â¯Â¸Ã¬ÂÂ¸Ã¬ÂÂ' />

<meta property="og:title" content='[Ã«Â§ÂÃ­ÂÂ¬,Ã­ÂÂÃ«ÂÂ,Ã­ÂÂ©Ã¬Â Â,Ã¬ÂÂ°Ã«ÂÂ¨] Ã­ÂÂ¥ÃªÂ¸Â°Ã«Â¡ÂÃ¬ÂÂ´ Ã«ÂÂÃ«Â§ÂÃ¬ÂÂ Ã¬ÂÂÃªÂ°Â Ã¬Â¡Â°Ã­ÂÂ¥ÃªÂ³Â¼ Ã­ÂÂ¥Ã¬ÂÂÃ­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤' />
<meta property="og:url" content="https://www.sssd.co.kr/main/class/detail/7538" />
<meta property="og:description" content='Ã¬ÂÂÃ«ÂÂÃ­ÂÂÃ¬ÂÂ¸Ã¬ÂÂ. Ã¬ÂÂ¤Ã­ÂÂÃ«ÂÂÃ¬ÂÂ¤ Ã«Â¯Â¸Ã¬ÂÂ¸Ã¬ÂÂ Ã¬ÂÂÃ«ÂÂÃ«ÂÂ¤.Ã«ÂÂ¹Ã¬ÂÂ Ã¬ÂÂ Ã­ÂÂÃ­ÂÂÃ­ÂÂÃ«ÂÂ Ã«ÂÂ¹Ã¬ÂÂ Ã¬ÂÂ Ã­ÂÂ¥ÃªÂ¸Â°Ã«Â¥Â¼Ã¬Â§ÂÃ¬Â Â Ã¬Â ÂÃ¬ÂÂÃ­ÂÂÃ«ÂÂ Ã¬Â¡Â°Ã­ÂÂ¥ Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤Ã¬ÂÂÃ«ÂÂÃ«ÂÂ¤.Ã«ÂÂ¤Ã¬ÂÂÃ­ÂÂ Ã­ÂÂ¥Ã¬ÂÂ Ã­ÂÂµÃ­ÂÂ´Ã«ÂÂ´ÃªÂ°Â Ã¬Â¢ÂÃ¬ÂÂÃ­ÂÂÃ«ÂÂ Ã­ÂÂ¥ÃªÂ¸Â°Ã«Â¥Â¼ Ã¬Â°Â¾Ã¬ÂÂÃ«Â³Â´Ã«ÂÂ Ã¬ÂÂÃªÂ°ÂÃ¬ÂÂÃ«ÂÂÃ«ÂÂ¤.Ã­ÂÂÃªÂ°ÂÃ¬Â§Â Ã­ÂÂ¥Ã¬ÂÂ Ã«ÂÂÃ­ÂÂÃ«ÂÂ´Ã«ÂÂ 1Ã¬Â¢Â Ã­ÂÂ¥Ã«Â£ÂÃ¬ÂÂÃ«Â¸ÂÃ«ÂÂ­Ã«ÂÂ©Ã«ÂÂ Ã­ÂÂ¥ Ã«ÂÂ±Ã¬ÂÂ Ã«Â¹ÂÃ¬ÂÂ¨Ã¬ÂÂ Ã«Â§ÂÃªÂ²Â Ã¬ÂÂÃ¬ÂÂ´Ã¬Â£Â¼Ã¬ÂÂ´ÃªÂ°ÂÃ¬ÂÂ¥ Ã¬ÂµÂÃ¬Â ÂÃ¬ÂÂ Ã­ÂÂ¥Ã¬ÂÂ Ã¬Â°Â¾Ã¬ÂÂÃ«ÂÂ´Ã«ÂÂ Ã¬ÂÂÃªÂ°ÂÃ¬ÂÂ ÃªÂ°ÂÃ¬ÂÂµÃ«ÂÂÃ«ÂÂ¤./ Ã«ÂÂÃ«Â¥Â¼ Ã¬ÂÂÃ­ÂÂ Ã¬ÂÂÃªÂ°Â/ Ã«ÂÂÃ«Â¥Â¼ Ã­ÂÂÃ­ÂÂÃ­ÂÂÃ«ÂÂ Ã­ÂÂ¥ÃªÂ¸Â°&#039;Ã«ÂÂÃ«Â§ÂÃ¬ÂÂ Ã­ÂÂ¥, Ã¬ÂÂ°Ã«Â¦Â¬Ã¬ÂÂ Ã­ÂÂ¥Ã¬ÂÂ Ã«Â§ÂÃ«ÂÂÃ«ÂÂ Ã¬Â¦ÂÃªÂ±Â°Ã¬ÂÂ&#039;Ã¬Â²ÂÃ¬Â²ÂÃ­ÂÂ Ã­ÂÂ¥Ã¬ÂÂ Ã«Â§Â¡Ã¬ÂÂ¼Ã«Â©Â° Ã«ÂÂÃ«ÂÂÃ¬ÂÂ ÃªÂ¸Â°Ã«Â¡ÂÃ­ÂÂÃªÂ³Â ÃªÂ¸Â°Ã¬ÂÂµ Ã­ÂÂÃ¬Â¼Â Ã¬ÂÂ Ã«ÂÂ¨Ã¬ÂÂÃ¬ÂÂÃ«ÂÂ Ã¬Â¶ÂÃ¬ÂÂµÃ¬ÂÂ ÃªÂºÂ¼Ã«ÂÂ´Ã«Â´ÂÃ«ÂÂÃ«ÂÂ¤.Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤Ã¬ÂÂ Ã¬ÂÂ¤Ã¬ÂÂÃ«ÂÂ Ã«Â¶ÂÃ«ÂÂ¤Ã¬ÂÂ´ Ã¬ÂÂ¬Ã«Â°ÂÃ«ÂÂ¤, Ã¬ÂÂ ÃªÂ¸Â°Ã­ÂÂÃ«ÂÂ¤,ÃªÂ°ÂÃ­ÂÂÃ¬ÂÂ¬Ã«Â¥Â¼ Ã¬ÂÂ°Ã«Â°ÂÃ­ÂÂÃ«ÂÂ Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤Ã¬ÂÂÃ¬ÂÂ.&#034;Ã«ÂÂÃ«Â§ÂÃ¬ÂÂ ÃªÂ°ÂÃ¬ÂÂ±Ã¬ÂÂ Ã­ÂÂ¥ÃªÂ¸Â°Ã«Â¡Â Ã­ÂÂÃ­ÂÂ Ã­ÂÂ´Ã«Â³Â´Ã¬ÂÂ¸Ã¬ÂÂ&#034;-Ã¬Â¤ÂÃ«Â¹Â Ã«ÂÂ 20ÃªÂ°ÂÃ¬Â§Â Ã¬ÂÂ´Ã¬ÂÂÃ¬ÂÂ Ã­ÂÂ¥Ã¬ÂÂ Ã¬ÂÂÃ­ÂÂ¥Ã­ÂÂÃ¬ÂÂÃªÂ³Â ,Ã«Â³Â¸Ã¬ÂÂ¸Ã«Â§ÂÃ¬ÂÂ Ã¬ÂÂ¬Ã­ÂÂ©Ã¬ÂÂ Ã«ÂÂ¸Ã­ÂÂ¸Ã«Â¥Â¼ ÃªÂ¸Â°Ã«Â¡ÂÃ­ÂÂ©Ã«ÂÂÃ«ÂÂ¤.Ã¬ÂÂÃ­ÂÂÃ¬ÂÂÃ«ÂÂ Ã¬ÂÂ¤Ã­ÂÂÃ¬ÂÂ¼Ã«Â¡Â Ã­ÂÂ¥Ã¬ÂÂ Ã«Â°Â°Ã­ÂÂ©Ã­ÂÂÃ¬ÂÂ¬Ã«ÂÂÃ«Â§ÂÃ¬ÂÂ Ã­ÂÂ¥ÃªÂ¸Â°Ã«Â¥Â¼ Ã¬ÂÂÃ¬ÂÂ±Ã­ÂÂÃ¬ÂÂÃªÂ²Â Ã«ÂÂ©Ã«ÂÂÃ«ÂÂ¤.-Ã¢ÂÂ¢ Ã¬Â ÂÃ¬ÂÂÃ­ÂÂÃ«ÂÂ Ã¬ÂÂÃ­ÂÂÃ¬ÂÂ ÃªÂ°ÂÃ¬ÂÂÃ­ÂÂ¥Ã¬ÂÂ 1ÃªÂ°Â (30ml)(Ã«Â¶ÂÃ­ÂÂ¥Ã«Â¥Â  20%Ã¬ÂÂ EDPÃ­ÂÂ¥Ã¬ÂÂÃ¬Â ÂÃ¬ÂÂ)Ã¢ÂÂ¢ Ã¬ÂÂÃ¬ÂÂÃ¬ÂÂÃªÂ°Â : Ã¬ÂµÂÃ«ÂÂ 1Ã¬ÂÂÃªÂ°ÂÃ¢ÂÂ¢ Ã¬ÂÂÃªÂ°ÂÃ¬ÂÂ¸Ã¬ÂÂ : 1 ~ 4Ã«ÂªÂÃ¢ÂÂ¢ Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤Ã¬ÂÂÃªÂ°Â Ã­ÂÂÃ¬ÂÂÃªÂ°ÂÃ«ÂÂ¥Ã­ÂÂ©Ã«ÂÂÃ«ÂÂ¤.Made in Italy Ã¬Â ÂÃ­ÂÂÃ¬ÂÂ ÃªÂ³Â ÃªÂ¸ÂÃ¬ÂÂ¤Ã«ÂÂ¬Ã¬ÂÂ´ Ã­ÂÂ¥Ã¬ÂÂÃ«Â³ÂÃ¬ÂÂÃ«Â³Â¸Ã¬ÂÂ¸Ã«Â§ÂÃ¬ÂÂ ÃªÂ°ÂÃ¬ÂÂ±Ã¬ÂÂ Ã«ÂÂÃ­ÂÂ Ã«ÂÂ¼Ã«Â²Â¨Ã«Â§Â Ã¬Â ÂÃ¬ÂÂ Ã­ÂÂÃ­ÂÂ¬Ã¬ÂÂ¥Ã­ÂÂÃ¬ÂÂ¬ ÃªÂ°ÂÃ¬Â Â¸ÃªÂ°ÂÃ¬ÂÂ­Ã«ÂÂÃ«ÂÂ¤.Ã­ÂÂ¹Ã¬ÂÂ Ã¬Â¡Â°Ã­ÂÂ¥Ã¬ÂÂ´ Ã¬Â²ÂÃ¬ÂÂÃ¬ÂÂ´Ã«ÂÂ¼ ÃªÂ±Â±Ã¬Â ÂÃ«ÂÂÃ¬ÂÂ Ã«ÂÂ¤Ã«Â©Â´Ã¬Â ÂÃªÂ°Â ÃªÂ³ÂÃ¬ÂÂÃ¬ÂÂ Ã¬Â°Â¨ÃªÂ·Â¼Ã¬Â°Â¨ÃªÂ·Â¼ Ã¬ÂÂÃ¬ÂÂ¸Ã­ÂÂ Ã¬ÂÂÃ«Â Â¤Ã«ÂÂÃ«Â¦Â´ÃªÂ»ÂÃ¬ÂÂ ^^Ã¬ÂÂ¸Ã¬Â ÂÃ«ÂÂ Ã¬Â§Â Ã¬Â¦ÂÃªÂ±Â°Ã¬ÂÂ´ Ã«Â§ÂÃ¬ÂÂÃ«Â§Â ÃªÂ°ÂÃ¬Â§ÂÃªÂ³Â  Ã«Â°Â©Ã«Â¬Â¸ Ã­ÂÂ´Ã¬Â£Â¼Ã¬ÂÂ¸Ã¬ÂÂ!' />
<meta property="og:image" content='https://d1x9f5mf11b8gz.cloudfront.net/class/20210425/b654a9ff-4529-4c1c-be08-9a9874efd262.jpg' />

<link rel="canonical" href="https://www.sssd.co.kr/main/class/detail/7538" />

<meta property="al:ios:url" content="sssd://classdetail?idx=7538">
<meta property="al:ios:app_name" content="Ã¬ÂÂÃ¬ÂÂ¨Ã«ÂÂ¹">
<meta property="al:android:url" content="intent://scan/#Intent;scheme=sssd://classdetail?idx=7538;package=com.sssdc.app.sssd;end">
<meta property="al:android:app_name" content="Ã¬ÂÂÃ¬ÂÂ¨Ã«ÂÂ¹">
<meta property="al:android:package" content="com.sssdc.app.sssd">
<meta property="al:web:url" content="https://www.sssd.co.kr/main/class/detail/7538">

<title>[Ã«Â§ÂÃ­ÂÂ¬,Ã­ÂÂÃ«ÂÂ,Ã­ÂÂ©Ã¬Â Â,Ã¬ÂÂ°Ã«ÂÂ¨] Ã­ÂÂ¥ÃªÂ¸Â°Ã«Â¡ÂÃ¬ÂÂ´ Ã«ÂÂÃ«Â§ÂÃ¬ÂÂ Ã¬ÂÂÃªÂ°Â Ã¬Â¡Â°Ã­ÂÂ¥ÃªÂ³Â¼ Ã­ÂÂ¥Ã¬ÂÂÃ­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤</title>

<script>
	(function(window, document, $){
		'use strict';
		
		if(''){
			alert('');
			location.href = '/main';
		}
		
		var pageObj = {}, util = somssiCommonUtil;
		
		if(util.isMobile()){
			location.replace('/m/class/detail/7538');
		}
		
		pageObj.init = function(){
			util.initHeaderBar({
				headerClasses : 'blk border-bottom-line push-bottom',
			});
			pageObj.eventHandlerMapping();
			pageObj.getClassData();
		};
		
		pageObj.eventHandlerMapping = function(){
			$('a.sms-send-btn').off('click').on('click', pageObj.sendSms);
			
			$(".tab > ul > li > a").off("click").on("click", function(){
				pageObj.tabControl(this);
			});
			
			$('.app-down-show-btn, .main-location').off('click').on('click', function(){
				var modalObj = $('#appDownModal');
				modalObj.modal('show');
			});
			
			$("#galleryViewModal .close").off('click').on('click', pageObj.closeGalleryModal);
			
			$("#num-add").off('click').on('click', function(){
				var quantity = parseInt($('#quantity').val(), 10) + 1;
				var price = parseInt('40000', 10);
				
				$('#quantity').val( quantity );
				$('#price').empty().append( util.numberComma(price * quantity) + ' <span> Ã¬ÂÂ</span>' );
			});
			
			$('#num-sub').off('click').on('click', function(){
				var quantity = parseInt($('#quantity').val(), 10);
				var price = parseInt('40000', 10);
				
				if(quantity > 1){
					quantity = 	quantity - 1;
				}
				
				$('#quantity').val( quantity );
				$('#price').empty().append( util.numberComma(price * quantity) + ' <span> Ã¬ÂÂ</span>' );
			});
			
			$('.schedule-date-trigger a').off('click').on('click', function(){
				if($(this).parent().hasClass('open')) {
		            $(this).parent().removeClass('open');
		            $(this).parent().next().slideUp();
		        } else {
		            $(this).parent().addClass('open');
		            $(this).parent().next().slideDown();
		            $('.class-time').slideUp();
		            $('.schedule-time-trigger').removeClass('open');
		        }
			});
			
			$('.schedule-time-trigger a').off('click').on('click', function(){
		        if($(this).parent().hasClass('open')) {
		            $(this).parent().removeClass('open');
		            $(this).parent().next().slideUp();
		        } else {
		            $(this).parent().addClass('open');
		            $(this).parent().next().slideDown();
		            $('.class-date').slideUp();
		            $('.schedule-date-trigger').removeClass('open');
		        }
		    });
			
			util.onlyNumberBind('input.phone-number, only-number');
		};
		
		pageObj.getClassData = function(){
			if(pageObj.classIdx){
				var alertMsg = null;
				return util.submitAjax('/main/class/getDetailData.json', {
					contentType: "application/json",
					data : {classIdx : pageObj['classIdx']}
				}).done(function(res){
					if(res && res['resultMsg'] == somssiCommonUtil.SUCCESS){
						var data = res['result'];
						pageObj.mapControl();
						
						pageObj.setClassMainImg(data['classMainImgList']);
						pageObj.setClassCompleteImg(data['classCompleteImgList']);
						pageObj.setClassGalleryImg(data['classGalleryImgList']);
						pageObj.setRecommandInfo(data['classRecommandList']);
						pageObj.setCurriculumInfo(data['classCurriculumList']);
						pageObj.setClassAdditionalSupportInfo(data['classDetailData']);
						pageObj.setClassConvinienceInfo(data['classDetailData']);
						pageObj.setReply(data['classReplyList']);
						pageObj.setQna(data['classQnAList']);
						pageObj.setCancelInfo(data['classDetailData']);
						pageObj.setClassDetailInfo(data['classDetailData']);
						pageObj.setTagList(data['classTagList']);
						pageObj.setCalendarSchedule(data);
					}else{
						alertMsg = 'Ã¬Â¡Â´Ã¬ÂÂ¬Ã­ÂÂÃ¬Â§Â Ã¬ÂÂÃ«ÂÂ Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ Ã¬ÂÂÃ«ÂÂÃ«ÂÂ¤. :(';
					}
				}).fail(function(e){
					alertMsg = 'Ã¬Â¡Â´Ã¬ÂÂ¬Ã­ÂÂÃ¬Â§Â Ã¬ÂÂÃ«ÂÂ Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ Ã¬ÂÂÃ«ÂÂÃ«ÂÂ¤. :(';
				}).always(function(res){
					if(alertMsg){
						alert(alertMsg);
						location.replace('/main');
					}
				});
			}
		};
		
		pageObj.setClassDetailInfo = function(data){
			
			var authorProfileImg = data['profileUrl'] ? data['profileUrl'] : '/main/statics/image/icon/avatar_dorothy_40.svg';							
			$('#authorProfileImgArea .img').css('background-image', 'url(' + authorProfileImg + ')');
			
			var lessonTime = parseInt(data.lessonTime, 10), lessonTimeStr = 'Ã¬Â´Â ';
			var hour = Math.floor(lessonTime / 60), minute = lessonTime % 60;
			 
			(hour > 0) ? lessonTimeStr += hour + 'Ã¬ÂÂÃªÂ°Â ' : '';
			(minute > 0) ? lessonTimeStr += minute + 'Ã«Â¶Â' : ''; 
			
			$("#totalTime").empty().text(lessonTimeStr);
			
			if(data.scheduleType == 3){
				$("#scheduleExplainArea").empty().text('Ã¬ÂÂÃ¬ÂÂÃ«ÂªÂ¨Ã¬Â§Â');
			}else if(data.scheduleType == 4){
				$("#scheduleExplainArea").empty().text('Ã¬Â ÂÃªÂ·Â');
			}else{
				$("#scheduleExplainArea").empty().text(data.minNum + '~' + data.maxNum + 'Ã«ÂªÂ (Ã¬ÂµÂÃ¬ÂÂÃ¬ÂÂ¸Ã¬ÂÂ ' + data.minNum + 'Ã«ÂªÂ)');
			}
			
			$('#price').append( util.numberComma(data.price) + ' <span>Ã¬ÂÂ</span>' );
			
			var yUrl = data['youtubeUrl'];
			pageObj.setYoutube(data['youtubeUrl']);
			
			pageObj.setAuthorOtherClassList(data.authorId);
		};
		
		pageObj.setYoutube = function(url){
			if(url){
				var youtubePlayer;
            	var youtubeIdRegex = /(?:youtube\.com\/(?:[^\/]+\/.+\/|(?:v|e(?:mbed)?)\/|.*[?&]v=)|youtu\.be\/)([^"&?\/ ]{11})/i; 
        		
            	var youtubeId = url.match(youtubeIdRegex)[1];
            	
            	if(youtubeId){
        			if(window['YT'] && window['YT']['Player']){
        				youtubePlayer = new YT.Player("youtubePlayer", {	            		
		            		height : "100%"
		               		, width : "100%"
		               		, videoId : youtubeId
		               		, playerVars : {
		               			enablejsapi : 1
		               		}
		               		, events : {
		               			onReady : function(event){
		               			},
		               			onStateChange : function(){           				
		               			},
		               			onError : function(event){
		               				console.log(event);
		               				youtubePlayer.destroy();
		               			}
		               		}
		               	});
        			}else{
        				setTimeout(function(){
        					pageObj.setYoutube();
        				}, 1000);
        			}
        		}else{
            		$("div.yutube-area").addClass('hide');
            	}
			}else{
        		$("div.yutube-area").addClass('hide');
        	}
		};
		
		pageObj.setTagList = function(list){
			var targetObj = $("#hashTagList");
			
			targetObj.empty();
			
			if(list.length > 0){
				list.map(function(item){
					targetObj.append(
						$('<span/>').addClass('hashtag').text(item.tagName)		
					);
				});
				
				targetObj.show();
			}
		};
		
		pageObj.setClassMainImg = function(list){
			
			var targetObj = $("#title_image > .swiper-wrapper");
			
			targetObj.empty();
			
			if(list.length > 0){
				
				list.map(function(item){
					var imgUrl = util.IMG_SERVER + util.FILE_SEPARATOR + util.BUCKET_NAME + util.FILE_SEPARATOR + "class" + item.imgUrl;					
					targetObj.append(
						$('<div/>').addClass('swiper-slide').append(
							$('<div/>').addClass('img').css('background-image', 'url("' + imgUrl + '")')
						)						
					);
				});
				
				if(!pageObj.mainImgSwiperObj.isSettingComplete){
					pageObj.mainImgSwiperObj.obj = new Swiper('#title_image', {
				        slidesPerView: 'auto',
				        zoom: true,
				        spaceBetween: 0,
				        autoplay : {delay:5000},
				        pagination: {
				            el: '.detail-title-img .title-pagination',
				            clickable: true,
				        },
				        navigation: {
				            nextEl: '.detail-title-img .swiper-button-next',
				            prevEl: '.detail-title-img .swiper-button-prev',
				        }
				    });
					
					pageObj.mainImgSwiperObj.isSettingComplete = true;
				}
			}else{
				targetObj.append(
					$('<div/>').addClass('swiper-slide').append(
						$('<div/>').addClass('img').css('background-image', 'url(/main/statics/image/bg/bg_cover_class@2x.png)')
					)
				);
			}
		};
		
		pageObj.setClassCompleteImg = function(list){
			
			var targetObj = $("#completeClassImgList");
			
			targetObj.empty();
			
			if(list.length > 0){
				list.map(function(item){
					
					var imgUrl = util.CFR + util.FILE_SEPARATOR + "class" + item['imgUrl'];
					
					targetObj.append(
						$('<li/>').append(
							$('<div/>').addClass('list-photo').append(
								$('<a/>').addClass('img').css('background-image', 'url(' + imgUrl + ')')
							)
						).append(
							$('<div/>').addClass('text').text(item.imgTitle ? item.imgTitle : '')
						)
					)
				});
			}
		};
		
		pageObj.setClassGalleryImg = function(list){
			
			var targetObj = $('#classGalleryArea');
			var appendArea = targetObj.find('ul');
			
			var swiperArea = $('#galleryViewModal');
			var swiperAppendArea = swiperArea.find('.image-container .swiper-wrapper');
			
			appendArea.empty();
			swiperAppendArea.empty();
			targetObj.hide();
			
			if(list.length > 0){
				list.map(function(item, idx){
					
					var imgUrl = util.CFR + util.FILE_SEPARATOR + "class" + item.imgUrl;
					
					if(idx < 6){
						
						appendArea.append(
							$('<li/>').append(
								$('<div/>').addClass('list-photo gallTemp').append(
									$('<a/>').addClass('img gallListSel').css({
										'background-image': 'url("' + imgUrl + '")'
									})
								).append(
									(idx == 5 && item.etc > 0) ? ($('<div/>').addClass('list-moreview gallListSel').text('+ ' + item.etc)) : ''		
								)
							).on('click', function(){
								pageObj.showGalleryModal();
								return false;
							})
						);
					}
					
					swiperAppendArea.append(
						$('<div/>').addClass('swiper-slide').append(
							$('<div/>').addClass('swiper-lazy').css('background-image', 'url("' + imgUrl + '")')		
						)
					);
				});
				
				var shownImgLength = appendArea.children().length;
				
				if(shownImgLength > 0){
					targetObj.show();
					
					var galleryClassStr = "gallery-" + shownImgLength;
					
					if(shownImgLength > 5){
						galleryClassStr = "gallery-6";
					}
					
					targetObj.find('.list-gallery').addClass(galleryClassStr);
							
				}				
			}
		};
		
		pageObj.setRecommandInfo = function(list){
			
			var classRecommandType1Area = $("#classRecommandType1Area")
			, classRecommandType2Area = $("#classRecommandType2Area");
			
			var appendTargetType1 = classRecommandType1Area.find('ol').empty()
			, appendTargetType2 = classRecommandType2Area.find('ol').empty();
			
			classRecommandType1Area.hide();
			classRecommandType2Area.hide();
			
			if(list.length > 0){
				list.map(function(item){
					if(item.rType == 1){
						appendTargetType1.append( $('<li/>').text(item.content) );
					}else if(item.rType == 2){
						appendTargetType2.append( $('<li/>').text(item.content) );
					}
				});
				
				if(appendTargetType1.children().length > 0){
					classRecommandType1Area.show();
				}

				if(appendTargetType2.children().length > 0){
					classRecommandType2Area.show();
				}
			}
		}
		
		pageObj.setCurriculumInfo = function(list){
			
			var targetObj = $('#classCurriculumArea');
			var appendArea = targetObj.find('.list-curriculum ul');
			
			appendArea.empty();
			targetObj.hide();
			
			if(list.length > 0){
				list.map(function(item){
					appendArea.append(
						$('<li/>').append([
							item.section + ' : ' + item.title,
							'<span style="white-space:pre-line;">',
							item.description,
							'</span>'
						].join(''))
					);
				});
				
				targetObj.show();
			}
		};
		
		pageObj.setClassAdditionalSupportInfo = function(data){
			if(data){
				
				var classAdditionalSupportArea = $("#classAdditionalSupportArea");
				classAdditionalSupportArea.hide();
				
				for(var i = 1; i <= 5; i++){
					if(data['convUserAdd' + i]){
						classAdditionalSupportArea.append(
							$('<p/>').addClass('conv_add').text(i + '. ' + data['convUserAdd' + i])	
						)
					}
				}	
				
				if(classAdditionalSupportArea.find('p').length > 0){
					classAdditionalSupportArea.show();
				}
			}
		};
		
		pageObj.setClassConvinienceInfo = function(data){
			
			var classConvinienceArea = $("#classConvinienceArea");
			var appendArea = classConvinienceArea.find('ul');
			
			classConvinienceArea.hide();
			
			if(data){
				var convinienceArr = [
					{className : 'info_room',	text : 'Ã¬ÂÂÃ«ÂÂÃ­ÂÂ ÃªÂ³ÂµÃ«Â°Â©Ã¬ÂÂÃ¬ÂÂ Ã¬ÂÂÃ¬ÂÂÃ­ÂÂ©Ã«ÂÂÃ«ÂÂ¤.'},
					{className : 'info_park', 	text : 'Ã¬Â£Â¼Ã¬Â°Â¨ÃªÂ³ÂµÃªÂ°ÂÃ¬ÂÂ´ Ã¬ÂÂÃ¬ÂÂ´ Ã­ÂÂ¸Ã«Â¦Â¬Ã­ÂÂ©Ã«ÂÂÃ«ÂÂ¤.'},
					{className : 'info_wifi',	text : 'Ã¬ÂÂÃ¬ÂÂ´Ã­ÂÂÃ¬ÂÂ´ Ã¬ÂÂ´Ã¬ÂÂ©Ã¬ÂÂ´ ÃªÂ°ÂÃ«ÂÂ¥Ã­ÂÂ©Ã«ÂÂÃ«ÂÂ¤.'},
					{className : 'info_notea',	text : 'Ã¬Â»Â¤Ã­ÂÂ¼/Ã¬ÂÂÃ«Â£ÂÃ«ÂÂ Ã«Â³ÂÃ«ÂÂ ÃªÂµÂ¬Ã«Â§Â¤Ã­ÂÂÃ¬ÂÂÃ¬ÂÂ¼ Ã­ÂÂ©Ã«ÂÂÃ«ÂÂ¤.'},
					{className : 'info_bus',	text : 'Ã«ÂÂÃ¬Â¤ÂÃªÂµÂÃ­ÂÂµÃ¬ÂÂ Ã¬ÂÂ´Ã¬ÂÂ©Ã­ÂÂÃ¬ÂÂÃ«Â©Â´ Ã«ÂÂ Ã­ÂÂ¸Ã­ÂÂ©Ã«ÂÂÃ«ÂÂ¤.'},
					{className : 'info_car',	text : 'Ã­ÂÂÃ¬ÂÂ/Ã¬ÂÂÃªÂ°ÂÃ¬ÂÂ©Ã¬ÂÂ Ã¬ÂÂ´Ã¬ÂÂ©Ã­ÂÂÃ¬ÂÂÃ«Â©Â´ Ã«ÂÂÃ¬ÂÂ± Ã«ÂÂ Ã­ÂÂ¸Ã«Â¦Â¬Ã­ÂÂ©Ã«ÂÂÃ«ÂÂ¤.'},
					{className : 'info_tea',	text : 'ÃªÂ°ÂÃ«ÂÂ¨Ã­ÂÂ Ã¬ÂÂÃ«Â£Â/ÃªÂ°ÂÃ¬ÂÂÃªÂ³Â¼ Ã­ÂÂ¨ÃªÂ»Â Ã¬ÂÂÃ¬ÂÂÃ­ÂÂ©Ã«ÂÂÃ«ÂÂ¤.'}
				];
				
				for(var i = 1; i <= 7; i++){
					if(data['conv' + i] && data['conv' + i] == 'Y'){
						appendArea.append(
							$('<li/>').addClass(convinienceArr[i - 1]['className']).text(convinienceArr[i - 1]['text'])		
						);
					}
				}
				
				if(appendArea.children().length > 0){
					classConvinienceArea.show();
				}
			}
		};
		
		pageObj.mapControl = function(){
			
       		var mapContainer = document.getElementById('map') // Ã¬Â§ÂÃ«ÂÂÃ«Â¥Â¼ Ã­ÂÂÃ¬ÂÂÃ­ÂÂ  div       		
            , mapOption = {
                center: new kakao.maps.LatLng(37.554047, 126.908717), // Ã¬Â§ÂÃ«ÂÂÃ¬ÂÂ Ã¬Â¤ÂÃ¬ÂÂ¬Ã¬Â¢ÂÃ­ÂÂ
                draggable: false,
                disableDoubleClickZoom: true
            };

            // Ã¬Â§ÂÃ«ÂÂÃ«Â¥Â¼ Ã­ÂÂÃ¬ÂÂÃ­ÂÂ  divÃ¬ÂÂ  Ã¬Â§ÂÃ«ÂÂ Ã¬ÂÂµÃ¬ÂÂÃ¬ÂÂ¼Ã«Â¡Â  Ã¬Â§ÂÃ«ÂÂÃ«Â¥Â¼ Ã¬ÂÂÃ¬ÂÂ±Ã­ÂÂ©Ã«ÂÂÃ«ÂÂ¤
            var map = new kakao.maps.Map(mapContainer, mapOption); // Ã¬Â§ÂÃ«ÂÂÃ«Â¥Â¼ Ã¬ÂÂÃ¬ÂÂ±Ã­ÂÂ©Ã«ÂÂÃ«ÂÂ¤
            
            var imageSrc = '/main/statics/image/icon/location_map_50@3x.png' // Ã«Â§ÂÃ¬Â»Â¤Ã¬ÂÂ´Ã«Â¯Â¸Ã¬Â§ÂÃ¬ÂÂ Ã¬Â£Â¼Ã¬ÂÂÃ¬ÂÂÃ«ÂÂÃ«ÂÂ¤
            , imageSize = new kakao.maps.Size(28, 34) // Ã«Â§ÂÃ¬Â»Â¤Ã¬ÂÂ´Ã«Â¯Â¸Ã¬Â§ÂÃ¬ÂÂ Ã­ÂÂ¬ÃªÂ¸Â°Ã¬ÂÂÃ«ÂÂÃ«ÂÂ¤
            , imageOption = {offset: new kakao.maps.Point(14, 32)}; // Ã«Â§ÂÃ¬Â»Â¤Ã¬ÂÂ´Ã«Â¯Â¸Ã¬Â§ÂÃ¬ÂÂ Ã¬ÂÂµÃ¬ÂÂÃ¬ÂÂÃ«ÂÂÃ«ÂÂ¤. Ã«Â§ÂÃ¬Â»Â¤Ã¬ÂÂ Ã¬Â¢ÂÃ­ÂÂÃ¬ÂÂ Ã¬ÂÂ¼Ã¬Â¹ÂÃ¬ÂÂÃ­ÂÂ¬ Ã¬ÂÂ´Ã«Â¯Â¸Ã¬Â§Â Ã¬ÂÂÃ¬ÂÂÃ¬ÂÂÃ¬ÂÂ Ã¬Â¢ÂÃ­ÂÂÃ«Â¥Â¼ Ã¬ÂÂ¤Ã¬Â ÂÃ­ÂÂ©Ã«ÂÂÃ«ÂÂ¤.
            
         	// Ã«Â§ÂÃ¬Â»Â¤Ã¬ÂÂ Ã¬ÂÂ´Ã«Â¯Â¸Ã¬Â§ÂÃ¬Â ÂÃ«Â³Â´Ã«Â¥Â¼ ÃªÂ°ÂÃ¬Â§ÂÃªÂ³Â  Ã¬ÂÂÃ«ÂÂ Ã«Â§ÂÃ¬Â»Â¤Ã¬ÂÂ´Ã«Â¯Â¸Ã¬Â§ÂÃ«Â¥Â¼ Ã¬ÂÂÃ¬ÂÂ±Ã­ÂÂ©Ã«ÂÂÃ«ÂÂ¤
            var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption)
            , markerPosition = new kakao.maps.LatLng('37.55827', '126.924164'); // Ã«Â§ÂÃ¬Â»Â¤ÃªÂ°Â Ã­ÂÂÃ¬ÂÂÃ«ÂÂ  Ã¬ÂÂÃ¬Â¹ÂÃ¬ÂÂÃ«ÂÂÃ«ÂÂ¤
			
         	// Ã«Â§ÂÃ¬Â»Â¤Ã«Â¥Â¼ Ã¬ÂÂÃ¬ÂÂ±Ã­ÂÂ©Ã«ÂÂÃ«ÂÂ¤
            var marker = new kakao.maps.Marker({
                position: markerPosition,
                image: markerImage // Ã«Â§ÂÃ¬Â»Â¤Ã¬ÂÂ´Ã«Â¯Â¸Ã¬Â§Â Ã¬ÂÂ¤Ã¬Â Â
            });

            // Ã«Â§ÂÃ¬Â»Â¤ÃªÂ°Â Ã¬Â§ÂÃ«ÂÂ Ã¬ÂÂÃ¬ÂÂ Ã­ÂÂÃ¬ÂÂÃ«ÂÂÃ«ÂÂÃ«Â¡Â Ã¬ÂÂ¤Ã¬Â ÂÃ­ÂÂ©Ã«ÂÂÃ«ÂÂ¤
            marker.setMap(map);
            
            var fullAddress = 'Ã¬ÂÂÃ¬ÂÂ¸ Ã«Â§ÂÃ­ÂÂ¬ÃªÂµÂ¬ Ã¬ÂÂÃ­ÂÂÃ«Â¡Â19ÃªÂ¸Â¸ 16 (Ã«ÂÂÃªÂµÂÃ«ÂÂ)2Ã¬Â¸Âµ 201Ã­ÂÂ¸';
            var detailAddress = '2Ã¬Â¸Âµ 201Ã­ÂÂ¸';
            var content = "";
            
            content += '<div class="map_overlay">';
        	content += '	<div class="overlay_title">Ã¬ÂÂÃ¬ÂÂ¸ Ã«Â§ÂÃ­ÂÂ¬ÃªÂµÂ¬ Ã¬ÂÂÃ­ÂÂÃ«Â¡Â19ÃªÂ¸Â¸ 16 (Ã«ÂÂÃªÂµÂÃ«ÂÂ)';
            
            if(fullAddress.length > 28){
            	content += '</br>';
            }
            
            content += detailAddress + '</div>';
        	content += '	<div class="overlay_sub">Ã¬Â§ÂÃ«Â²Â : Ã¬ÂÂÃ¬ÂÂ¸ Ã«Â§ÂÃ­ÂÂ¬ÃªÂµÂ¬ Ã«ÂÂÃªÂµÂÃ«ÂÂ 154-19</div>';
        	content += '</div>';
            
        	// Ã¬Â»Â¤Ã¬ÂÂ¤Ã­ÂÂ Ã¬ÂÂ¤Ã«Â²ÂÃ«Â ÂÃ¬ÂÂ´ÃªÂ°Â Ã­ÂÂÃ¬ÂÂÃ«ÂÂ  Ã¬ÂÂÃ¬Â¹ÂÃ¬ÂÂÃ«ÂÂÃ«ÂÂ¤
            var position = new kakao.maps.LatLng('37.55827', '126.924164');

            // Ã¬Â»Â¤Ã¬ÂÂ¤Ã­ÂÂ Ã¬ÂÂ¤Ã«Â²ÂÃ«Â ÂÃ¬ÂÂ´Ã«Â¥Â¼ Ã¬ÂÂÃ¬ÂÂ±Ã­ÂÂ©Ã«ÂÂÃ«ÂÂ¤
            var customOverlay = new kakao.maps.CustomOverlay({
                map: map,
                position: position,
                content: content,
                yAnchor:0.45
            });
            // Ã¬ÂÂ´Ã«ÂÂÃ­ÂÂ  Ã¬ÂÂÃ«ÂÂ ÃªÂ²Â½Ã«ÂÂ Ã¬ÂÂÃ¬Â¹ÂÃ«Â¥Â¼ Ã¬ÂÂÃ¬ÂÂ±Ã­ÂÂ©Ã«ÂÂÃ«ÂÂ¤
            var moveLatLon = new kakao.maps.LatLng('37.55827', '126.924164');

            // Ã¬Â§ÂÃ«ÂÂ Ã¬Â¤ÂÃ¬ÂÂ¬Ã¬ÂÂ Ã«Â¶ÂÃ«ÂÂÃ«ÂÂ½ÃªÂ²Â Ã¬ÂÂ´Ã«ÂÂÃ¬ÂÂÃ­ÂÂµÃ«ÂÂÃ«ÂÂ¤
            // Ã«Â§ÂÃ¬ÂÂ½ Ã¬ÂÂ´Ã«ÂÂÃ­ÂÂ  ÃªÂ±Â°Ã«Â¦Â¬ÃªÂ°Â Ã¬Â§ÂÃ«ÂÂ Ã­ÂÂÃ«Â©Â´Ã«Â³Â´Ã«ÂÂ¤ Ã­ÂÂ¬Ã«Â©Â´ Ã«Â¶ÂÃ«ÂÂÃ«ÂÂ¬Ã¬ÂÂ´ Ã­ÂÂ¨ÃªÂ³Â¼ Ã¬ÂÂÃ¬ÂÂ´ Ã¬ÂÂ´Ã«ÂÂÃ­ÂÂ©Ã«ÂÂÃ«ÂÂ¤
            map.panTo(moveLatLon);
       	};
		
       	pageObj.setReply = function(list){
       		
       		var targetObj = $('#classReviewArea');
       		var appendArea = targetObj.find('.reply-list-area');
       		
       		appendArea.empty();
       		
       		if(list.length > 0){
       			
       			targetObj.find('.review_nowrap').hide();
       			
       			targetObj.find('.review-header .review-count').empty().text(list.length + ' ÃªÂ°ÂÃ¬ÂÂ Ã­ÂÂÃªÂ¸Â°');
       			
       			$('a[rel="classReviewArea"]').empty().text('Ã­ÂÂÃªÂ¸Â° ' + list.length);
       			
       			list.map(function(item){
       				
       				var $ratingStar;
       				
       				if(item['satisfied'] == 'Y'){
       					$ratingStar = $('<span/>').append( $('<i/>').addClass('sssd-ic-satisfied') );
       				}else{
       					$ratingStar = $('<span/>').append( $('<i/>').addClass('sssd-ic-unsatisfied') );
       				}
       				
       				var reviewImgDom = null, reviewImgList = item.userReplyImage.split(',');
       				
       				reviewImgList = reviewImgList.filter(function(img){
       					return img;
       				});
       				
       				if(reviewImgList.length > 0){
       					reviewImgDom = $('<ul/>');
       					
       					reviewImgList.map(function(img){
       						reviewImgDom.append(
       							$('<li/>').append(
       								$('<div/>').addClass('list-photo').append(
       									$('<a/>').addClass('img').css('background-image', 'url(' + img + ')')		
       								)
       							)	
       						)       						
       					});
       				}
       				
       				var authorReplyDom = null;
       				
       				if(item.contentReply){
       					authorReplyDom = $('<div/>').addClass('comment').append(
       						$('<div/>').addClass('txt_id').text(item.authorNickname)	
       					).append(
       						$('<div/>').addClass('txt_date').text(item.authorModifyDate)	
       					).append(
       						$('<div/>').addClass('txt_con').text(item.contentReply)	
       					).append(
							$('<div/>').addClass('txt_btn').append(
   								$('<a/>').attr('href', '#').addClass('app-down-show-btn').text('Ã«ÂÂµÃªÂ¸ÂÃ«ÂÂ¬ÃªÂ¸Â°')
   							).append(
   								$('<a/>').attr('href', '#').addClass('app-down-show-btn').text('Ã¬ÂÂ ÃªÂ³Â Ã­ÂÂÃªÂ¸Â°')
   							)
   						)
       				}
       				
       				appendArea.append(
       					$('<div/>').addClass('review_wrap').append(
       						$('<div/>').addClass('photo').append(
       							$('<div/>').addClass('img').css({
       								'background-image' : 'url("' + (item.profileUrl ? item.profileUrl : '/main/statics/image/icon/avatar_dorothy_40.svg') + '")'		
       							})
       						)       						
       					).append(
       						$('<div/>').addClass('txt').append(
       							$('<div/>').addClass('txt_id').text(item.nickname)			
       						).append(
       							$('<div/>').addClass('txt_date').text(item.userModifyDate)
       						).append(
       							$('<div/>').addClass('list-star').append($ratingStar)
       						).append(
       							$('<div/>').addClass('txt_con').text(item.content)		
       						).append(
       							$('<div/>').addClass('review-gallery').append( reviewImgDom ? reviewImgDom : '')			
       						).append(
       							$('<div/>').addClass('txt_btn').append(
       								$('<a/>').attr('href', '#').addClass('app-down-show-btn').text('Ã«ÂÂµÃªÂ¸ÂÃ«ÂÂ¬ÃªÂ¸Â°')
       							).append(
       								$('<a/>').attr('href', '#').addClass('app-down-show-btn').text('Ã¬ÂÂ ÃªÂ³Â Ã­ÂÂÃªÂ¸Â°')
       							)
       						).append(
       							authorReplyDom ? authorReplyDom : ''	
       						)			
       					)
       				);
       			});
       			
       		}else{
       			targetObj.find('.review_nowrap').show();
       		}       		
       	};
       	
		pageObj.setQna = function(list){
       		
       		var targetObj = $('#classQnaArea');
       		var appendArea = targetObj.find('.qna-list-area');
       		
       		appendArea.empty();
       		
       		if(list.length > 0){
       			
       			targetObj.find('.review_nowrap').hide();
       			
       			targetObj.find('.review-header .review-count').empty().text(list.length + ' ÃªÂ°ÂÃ¬ÂÂ Ã«Â¬Â¸Ã¬ÂÂ');
       			
       			$('a[rel="classQnaArea"]').empty().text('Ã«Â¬Â¸Ã¬ÂÂ ' + list.length);
       			
       			list.map(function(item){
       				
       				var authorReplyDom = null;
       				
       				if(item.contentReply){
       					authorReplyDom = $('<div/>').addClass('comment').append(
       						$('<div/>').addClass('txt_id').text(item.authorNickname)	
       					).append(
       						$('<div/>').addClass('txt_date').text(item.authorModifyDate)	
       					).append(
       						$('<div/>').addClass('txt_con').text(item.contentReply)	
       					).append(
							$('<div/>').addClass('txt_btn').append(
   								$('<a/>').attr('href', '#').addClass('app-down-show-btn').text('Ã«ÂÂµÃªÂ¸ÂÃ«ÂÂ¬ÃªÂ¸Â°')
   							).append(
   								$('<a/>').attr('href', '#').addClass('app-down-show-btn').text('Ã¬ÂÂ ÃªÂ³Â Ã­ÂÂÃªÂ¸Â°')
   							)
   						)
       				}
       				
       				appendArea.append(
       					$('<div/>').addClass('review_wrap').append(
       						$('<div/>').addClass('photo').append(
       							$('<div/>').addClass('img').css({
       								'background-image' : 'url("' + (item.profileUrl ? item.profileUrl : '/main/statics/image/icon/avatar_victor_40.svg') + '")'		
       							})
       						)       						
       					).append(
       						$('<div/>').addClass('txt').append(
       							$('<div/>').addClass('txt_id').text(item.nickname)			
       						).append(
       							$('<div/>').addClass('txt_date').text(item.userModifyDate)
       						).append(
       							$('<div/>').addClass('txt_con').text(item.content)		
       						).append(
       							$('<div/>').addClass('txt_btn').append(
       								$('<a/>').attr('href', '#').addClass('app-down-show-btn').text('Ã«ÂÂµÃªÂ¸ÂÃ«ÂÂ¬ÃªÂ¸Â°')
       							).append(
       								$('<a/>').attr('href', '#').addClass('app-down-show-btn').text('Ã¬ÂÂ ÃªÂ³Â Ã­ÂÂÃªÂ¸Â°')
       							)
       						).append(
       							authorReplyDom ? authorReplyDom : ''	
       						)			
       					)
       				);
       			});
       			
       		}else{
       			targetObj.find('.review_nowrap').show();
       		}       		
       	};
       	
       	pageObj.tabControl = function(anchorObj){
       		var $anchorObj = $(anchorObj);
       		
       		$(".tab li").removeClass("active");
			$anchorObj.parent().addClass("active");
		
			$(".tab_wrap > div.tab_content").hide();
			$(".tab_wrap #" + $anchorObj.attr("rel")).show();			
       	};
       	
       	pageObj.showGalleryModal = function(){
       		
       		$('#galleryViewModal').show().animate({
                opacity: "1",
                duration: 500,
            });
            $('.modal-overlay').show().animate({
                opacity: "0.5",
                duration: 500,
            });
		    
		    if(!pageObj.gallerySwiperObj.isSettingComplete){
				pageObj.gallerySwiperObj.obj = new Swiper('#galleryViewModal .image-container', {
					 pagination: {
		                el: '#galleryViewModal .image-pagination',
		                type: 'fraction'
		            },
		            navigation: {
		                nextEl: '#galleryViewModal .image-button-next',
		                prevEl: '#galleryViewModal .image-button-prev',
		            },
			    });
				
				pageObj.gallerySwiperObj.isSettingComplete = true;
			}		    
       	};
       	
       	pageObj.setAuthorOtherClassList = function(authorId){
       		if(authorId){
       			var targetObj = $("#classAuthorOtherClassArea");
           		var listArea = targetObj.find('.swiper-wrapper');
           		var loadingObj = listArea.find('.list-loading');
           		
       			return util.submitAjax('/main/class/getClassAuthorOtherClassList.json', {
					contentType: "application/json",
					data : {
						bClassIdx : pageObj.classIdx,
						authorId : authorId
					}
				}).done(function(res){
   					if(res && res['resultMsg'] == somssiCommonUtil.SUCCESS){
						var list = res['result'];
						
						if(list.length > 0){
							targetObj.removeClass('hide');
							
							var $frag = $(document.createDocumentFragment());
	                		
	                		list.map(function(item){
	                			var $slide = $('<div/>').addClass('swiper-slide').data(item),
	       						$img = $('<div/>').addClass('img'),
	       						$txtDiv = $('<div/>').addClass('txt-area'),
	       						$title = $('<div/>').addClass('title').text(item['classTitle']),
	       						$price = $('<div/>').addClass('price'),
	       						$course = $('<div/>').addClass('course').text(item['courseName']);
	       						
	       						$img.addClass('swiper-lazy').attr('data-background', util.CFR + util.FILE_SEPARATOR + "class" + item['classImg']).append(
	       							$('<div/>').addClass('swiper-lazy-preloader')	
	       						);
	       						
	       						if(item['eventTagInfo']){
									var eventTagInfo = item['eventTagInfo'];
									var eventTagArr = eventTagInfo.split('|');
									
									var onlyOwnClass = eventTagArr.filter(function(x){
										return x.split('&amp;')[3] == 'Y';
									});
									
									if(onlyOwnClass[0]){
										var temp = onlyOwnClass[0].split('&amp;');
										var tagTxt = temp[0];
										if(tagTxt){
											var tempBadge = $('<span/>').addClass('badge-only-somssidang badge badge-round m-l-5 m-t-5').text(tagTxt);
											$img.append(tempBadge);
										}
									}else{
										eventTagArr.map(function(x){
											var temp = x.split('&amp;');
											try{
												var tagTxt = temp[0];
												var fontColor = temp[1];
												var bgColor = temp[2];
												
												if(tagTxt){
													var tempBadge = $('<span/>').addClass('badge badge-round m-l-5 m-t-5').text(tagTxt);
													
													if(bgColor){
														tempBadge.css({
															'background-color': '#' + bgColor,
															'border' : '0.3px solid #' + bgColor,
														});
													}
													
													fontColor = fontColor || 'ffffff';
													
													tempBadge.css('color', '#' + fontColor);
													
													$img.append(tempBadge);
												}
											}catch{}
										});
									}
									
								}else{
									if(item['replyCnt'] <= 2){
		       							$img.append($('<span/>').addClass('badge badge-round badge-red m-l-5 m-t-5').text('Ã¬ÂÂ ÃªÂ·Â'));
		       						}else{
		       							if(item['satisfaction'] > 0){
		       								$img.append($('<span/>').addClass('badge badge-round badge-purple m-l-5 m-t-5').text(item['satisfaction'] + '% Ã«Â§ÂÃ¬Â¡Â±'));	
		       							}
		       						}
								}
	       						
	       						$img.append(
	       							$('<div/>').addClass('loc').append($('<i/>').addClass('xi-maker')).append($('<span/>').text(item['se']))
	       						);
	       						
	       						var $discountRate = $('<span/>').addClass('discount-rate'),
	       						$basePrice = $('<span/>').addClass('base-price');
	       						$price.append($discountRate);
	       						$price.append($basePrice);
	       						
	       						var costStr = util.numberComma(item['minPrice']);
	       						if(item['basePrice'] > item['minPrice']){
	       							if(item['discountRate'] >= 5){
	           							$discountRate.text(item['discountRate'] + '%');
	           						}
	       							$basePrice.text(util.numberComma(item['basePrice']) + 'Ã¬ÂÂ');
	       							costStr += 'Ã¬ÂÂ~';
	       						}else{
	       							costStr += 'Ã¬ÂÂ';
	       						}
	       						
	       						$price.append($('<span/>').addClass('cost').text(costStr));
	       						
	       						if(item['max1']){
	       							$price.append($('<span/>').addClass('badge badge-default').text(item['max1'] + ' Ã­ÂÂ Ã¬ÂÂ¸'));
	       						}
	       						
	       						if(item['max2']){
	       							$price.append($('<span/>').addClass('badge badge-default').text(item['max2'] + ' Ã­ÂÂ Ã¬ÂÂ¸'));
	       						}
	       						
	       						if(item['authorCouponInfo']){
	       							item['authorCouponInfo'].split('|').map(function(x){
	    								x = x.split(',');
	    								
	    								var authorCouponType = null;
	    								
	    								if(x[1] == 1){
	    									authorCouponType = 'Ã¬Â¦ÂÃ¬ÂÂÃ­ÂÂ Ã¬ÂÂ¸';
	    								}else if(x[1] == 2){
	    									authorCouponType = 'Ã­ÂÂÃªÂ¸Â°Ã¬ÂÂ´Ã«Â²Â¤Ã­ÂÂ¸';
	    								}
	    								
	    								if(authorCouponType){
	    									$price.append(
	    										$("<span/>").addClass("badge badge-default").text(authorCouponType)
	    									);
	    								}
	    							});
	       						}
	       						
	       						$slide.append($img).append( $txtDiv.append($course).append($title).append($price) );
	       						$frag.append($slide);
	                		});
	                		
	                		listArea.append($frag);
	                		
	                		var swiperOpts = {
                				slidesPerView: 5,
	    						spaceBetween: 50,
	    						clickable: true,
	    						loop: false,
	    						lazy : {
	    							loadPrevNext : true,
	    						},
	    						on:{
	    							click: function(swiper, event){
	    								var data = $(this.clickedSlide).data();
	    								if(data && data['classIdx']){
	    									location.href = '/main/class/detail/' + data['classIdx'];
	    								}
	    							}
	    						}		
	                		};
	                		
	                		if(list.length > 5){
	                			
	                			listArea.parent().append(
	                				$('<div/>').addClass('swiper-button-next nav-btn').append(
	                					$('<i/>').addClass('xi-angle-right-min')
	                				)
	                			).append(
	                				$('<div/>').addClass('swiper-button-prev nav-btn').append(
		                				$('<i/>').addClass('xi-angle-left-min')
		                			)
		                		);
	                			
	                			swiperOpts = $.extend(swiperOpts, {
	                				autoplay : {delay:3500},
	                				navigation : {
		       							nextEl : '#classAuthorOtherClassArea .swiper-button-next',
		       							prevEl : '#classAuthorOtherClassArea .swiper-button-prev',
		       						},
	                			});
	                		}
	                		
	                		new Swiper('#classAuthorOtherClassArea .swiper-container', swiperOpts);
						}
   					}
   				}).fail(function(e){
   				}).always(function(res){
   					loadingObj.remove();
   				});
       		}
       	};
       	
       	pageObj.closeGalleryModal = function(){
       	 
			$('#galleryViewModal').animate({
				opacity : "0",
			}, 500, function() {
				$(this).hide();
			});
			
			$('.modal-overlay').animate({
				opacity : "0",
			}, 500, function() {
				$(this).hide();			
			});
		};

		pageObj.setCancelInfo = function(data){
			var cancelRuleInfo = {
				'schedule' : [
					'<h3 class="bold">Ã¬ÂÂÃ«ÂÂ°Ã¬ÂÂ´ Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ Ã­ÂÂÃ«Â¶Â Ã¬Â ÂÃ¬Â±Â</h3>',
					'<span>Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ Ã­ÂÂÃ«Â¶ÂÃ¬ÂÂ Ã¬ÂÂÃ¬ÂÂÃ¬ÂÂÃªÂ°ÂÃ¬ÂÂ´ Ã¬ÂÂÃ«ÂÂ Ã¬ÂÂ¼Ã¬ÂÂÃ«Â¥Â¼ ÃªÂ¸Â°Ã¬Â¤ÂÃ¬ÂÂ¼Ã«Â¡Â Ã­ÂÂ©Ã«ÂÂÃ«ÂÂ¤</span>',
					[
						{
							condition : 'ÃªÂ²Â°Ã¬Â Â Ã­ÂÂ 1Ã¬ÂÂÃªÂ°Â Ã¬ÂÂ´Ã«ÂÂ´ Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂ',
							result : '100% Ã­ÂÂÃ«Â¶Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã«Â³ÂµÃ¬ÂÂ) (Ã«ÂÂ¨, Ã«ÂÂ¹Ã¬ÂÂ¼ Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤Ã«ÂÂ 1Ã¬ÂÂÃªÂ°Â Ã¬ÂÂ´Ã«ÂÂ´ Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂÃ¬ÂÂÃ«ÂÂ Ã­ÂÂÃ«Â¶Â Ã«Â¶ÂÃªÂ°ÂÃ«ÂÂ¥)'
						},
						{
							condition : 'Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ 6Ã¬ÂÂ¼Ã¬Â Â Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂ',
							result : '100% Ã­ÂÂÃ«Â¶Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã«Â³ÂµÃ¬ÂÂ)'
						},
						{
							condition : 'Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ 5Ã¬ÂÂ¼Ã¬Â Â Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂ',
							result : 'ÃªÂ²Â°Ã¬Â Â ÃªÂ¸ÂÃ¬ÂÂ¡Ã¬ÂÂ 95% Ã­ÂÂÃ«Â¶Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã¬ÂÂÃ«Â©Â¸)'
						},
						{
							condition : 'Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ 4Ã¬ÂÂ¼Ã¬Â Â Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂ',
							result : 'ÃªÂ²Â°Ã¬Â Â ÃªÂ¸ÂÃ¬ÂÂ¡Ã¬ÂÂ 90% Ã­ÂÂÃ«Â¶Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã¬ÂÂÃ«Â©Â¸)'
						},
						{
							condition : 'Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ 3Ã¬ÂÂ¼Ã¬Â Â Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂ',
							result : 'ÃªÂ²Â°Ã¬Â Â ÃªÂ¸ÂÃ¬ÂÂ¡Ã¬ÂÂ 80% Ã­ÂÂÃ«Â¶Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã¬ÂÂÃ«Â©Â¸)'
						},								
						{
							condition : 'Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ 2Ã¬ÂÂ¼Ã¬Â Â Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂ',
							result : 'ÃªÂ²Â°Ã¬Â Â ÃªÂ¸ÂÃ¬ÂÂ¡Ã¬ÂÂ 70% Ã­ÂÂÃ«Â¶Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã¬ÂÂÃ«Â©Â¸)'
						},
						{
							condition : 'Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ 1Ã¬ÂÂ¼ Ã¬Â Â Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂ',
							result : 'Ã­ÂÂÃ«Â¶Â Ã«Â¶ÂÃªÂ°Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã¬ÂÂÃ«Â©Â¸) (Ã«ÂÂ¨, ÃªÂ²Â°Ã¬Â Â Ã­ÂÂ 1Ã¬ÂÂÃªÂ°Â Ã¬ÂÂ´Ã«ÂÂ´ Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂ, Ã«Â°Â¤12Ã¬ÂÂ Ã¬ÂÂ´Ã¬Â Â 100% Ã­ÂÂÃ«Â¶Â)'
						},
						{
							condition : 'Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ Ã«ÂÂ¹Ã¬ÂÂ¼ Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂ',
							result : 'Ã­ÂÂÃ«Â¶Â Ã«Â¶ÂÃªÂ°Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã¬ÂÂÃ«Â©Â¸)'
						},
						{
							condition : 'Ã«ÂÂ¹Ã¬ÂÂ¼ Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ ÃªÂµÂ¬Ã«Â§Â¤Ã¬ÂÂ',
							result : 'Ã­ÂÂÃ«Â¶Â Ã«Â¶ÂÃªÂ°Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã¬ÂÂÃ«Â©Â¸)'
						},
					],
					'<h3 class="bold">Ã¬ÂÂ´Ã«Â²Â¤Ã­ÂÂ¸ Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤(Ã¬ÂÂÃ¬ÂÂ¨Ã«Â¦Â´Ã«Â ÂÃ¬ÂÂ´) Ã­ÂÂÃ«Â¶Â Ã¬Â ÂÃ¬Â±Â</h3>',
					[
						{
							condition : 'ÃªÂ²Â°Ã¬Â Â Ã­ÂÂ 1Ã¬ÂÂÃªÂ°Â Ã¬ÂÂ´Ã«ÂÂ´ Ã¬Â·Â¨Ã¬ÂÂÃ¬ÂÂ',
							result : '100% Ã­ÂÂÃ«Â¶Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã«Â³ÂµÃ¬ÂÂ)'
						},
						{
							condition : 'Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ ÃªÂ²Â°Ã¬Â Â 1Ã¬ÂÂÃªÂ°Â Ã¬ÂÂ´Ã­ÂÂ',
							result : 'Ã­ÂÂÃ«Â¶Â Ã«Â¶ÂÃªÂ°Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã¬ÂÂÃ«Â©Â¸)'
						}
						
					],
					'<h3 class="bold">Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ Ã¬ÂÂ¤Ã¬Â¼ÂÃ¬Â¥Â´ Ã«Â³ÂÃªÂ²Â½ Ã¬ÂÂ Ã­ÂÂÃ«Â¶Â Ã¬Â ÂÃ¬Â±Â</h3>',
					[
						{
							condition : 'Ã¬ÂÂ¼Ã¬Â Â Ã«Â³ÂÃªÂ²Â½ Ã­ÂÂ Ã­ÂÂÃ«Â¶ÂÃ¬ÂÂ Ã¬Â²Â­Ã¬ÂÂ, Ã­ÂÂÃ¬ÂÂ(ÃªÂµÂ¬Ã«Â§Â¤)Ã«ÂÂÃ¬ÂÂÃ«ÂÂ ÃªÂ°ÂÃ¬ÂÂ¥ Ã«Â¹Â Ã«Â¥Â¸ Ã¬ÂÂ¼Ã¬Â ÂÃ¬ÂÂ¼Ã«Â¡Â Ã­ÂÂÃ«Â¶Â ÃªÂ·ÂÃ¬Â Â Ã¬Â ÂÃ¬ÂÂ©',
							result : null,
						},
						{
							condition : 'Ã¬ÂÂ¼Ã¬Â Â Ã«Â³ÂÃªÂ²Â½Ã¬ÂÂ Ã¬ÂÂÃ«Â¬Â´Ã¬ÂÂ¬Ã­ÂÂ­Ã¬ÂÂ´ Ã¬ÂÂÃ«ÂÂÃ«Â©Â°, Ã¬ÂÂÃªÂ°ÂÃ«ÂÂÃªÂ³Â¼ Ã­ÂÂÃ¬ÂÂ Ã«Â°Â Ã«Â³ÂÃªÂ²Â½Ã¬ÂÂ´ ÃªÂ°ÂÃ«ÂÂ¥Ã­ÂÂ ÃªÂ²Â½Ã¬ÂÂ°Ã¬ÂÂÃ«Â§Â Ã¬Â ÂÃ¬ÂÂ©Ã«ÂÂ©Ã«ÂÂÃ«ÂÂ¤',
							result : '(1Ã¬ÂÂ¼ Ã¬ÂÂ´Ã¬Â Â Ã«ÂÂ¹Ã¬ÂÂ¼ Ã«Â³ÂÃªÂ²Â½Ã¬ÂÂ Ã«Â³ÂÃªÂ²Â½Ã«Â¶ÂÃªÂ°Â)'
						}
					],
					'<span>* Ã«ÂªÂ¨Ã«ÂÂ  Ã­ÂÂÃ«Â¶Â ÃªÂ±Â´Ã¬ÂÂ Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ Ã¬ÂÂ¼Ã¬Â ÂÃ¬ÂÂ ÃªÂ¸Â°Ã¬Â¤ÂÃ¬ÂÂ¼Ã«Â¡Â Ã­ÂÂÃ«Â¶ÂÃ¬Â²ÂÃ«Â¦Â¬<br>* Ã­ÂÂÃ«Â¶Â Ã¬Â ÂÃ¬Â±ÂÃ¬ÂÂ´Ã¬ÂÂ¸ Ã­ÂÂÃ«Â¶ÂÃ¬ÂÂ´ Ã­ÂÂÃ¬ÂÂÃ­ÂÂ  ÃªÂ²Â½Ã¬ÂÂ° ÃªÂµÂ¬Ã«Â§Â¤Ã¬ÂÂÃ¬ÂÂ Ã¬ÂÂÃªÂ°Â Ã¬Â§ÂÃ¬Â Â Ã­ÂÂÃ¬ÂÂ</span>',
					'<p class="bold m-t-30">Ã¬ÂÂÃ¬ÂÂ¨Ã«ÂÂ¹Ã¬ÂÂ Ã­ÂÂµÃ¬ÂÂ Ã­ÂÂÃ«Â§Â¤Ã¬Â¤ÂÃªÂ°ÂÃ¬ÂÂÃ¬ÂÂ´Ã«Â©Â°, Ã­ÂÂµÃ¬ÂÂ Ã­ÂÂÃ«Â§Â¤Ã¬ÂÂ Ã«ÂÂ¹Ã¬ÂÂ¬Ã¬ÂÂÃªÂ°Â Ã¬ÂÂÃ«ÂÂÃ«ÂÂÃ«ÂÂ¤.<br>Ã¬ÂÂÃ­ÂÂ, Ã¬ÂÂÃ­ÂÂÃ¬Â ÂÃ«Â³Â´, ÃªÂ±Â°Ã«ÂÂÃ¬ÂÂ ÃªÂ´ÂÃ­ÂÂ Ã¬ÂÂÃ«Â¬Â´Ã¬ÂÂ Ã¬Â±ÂÃ¬ÂÂÃ¬ÂÂ Ã­ÂÂÃ«Â§Â¤Ã¬ÂÂÃ¬ÂÂ Ã¬ÂÂÃ¬ÂÂµÃ«ÂÂÃ«ÂÂ¤.</p>',
				],
				'always' : [
					'<h3 class="bold">Ã¬ÂÂÃ¬ÂÂÃ«ÂªÂ¨Ã¬Â§Â Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ Ã­ÂÂÃ«Â¶Â Ã¬Â ÂÃ¬Â±Â</h3>',
					'<span>Ã¬ÂÂÃ¬ÂÂ Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ ÃªÂµÂ¬Ã«Â§Â¤Ã¬ÂÂ 7Ã¬ÂÂ¼ Ã¬ÂÂ´Ã«ÂÂ´ Ã¬ÂÂ¼Ã¬Â ÂÃ­ÂÂÃ¬ÂÂÃªÂ°Â Ã­ÂÂÃ¬ÂÂÃ¬ÂÂÃ«ÂÂÃ«ÂÂ¤.</span>',
					[
						{
							condition : 'Ã¬ÂÂÃ¬ÂÂ Ã¬Â¿Â Ã­ÂÂ° ÃªÂµÂ¬Ã«Â§Â¤ Ã­ÂÂ 7Ã¬ÂÂ¼ Ã¬ÂÂ´Ã«ÂÂ´',
							result : 'Ã­ÂÂÃ«Â¶Â ÃªÂ°ÂÃ«ÂÂ¥ (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã­ÂÂ¬Ã­ÂÂ¨)'
						},
						{
							condition : 'Ã¬ÂÂÃ¬ÂÂ Ã¬Â¿Â Ã­ÂÂ° ÃªÂµÂ¬Ã«Â§Â¤ Ã­ÂÂ 7Ã¬ÂÂ¼ Ã¬ÂÂ´Ã­ÂÂ',
							result : 'Ã­ÂÂÃ«Â¶Â Ã«Â¶ÂÃªÂ°Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã¬ÂÂÃ«Â©Â¸)'
						},
						{
							condition : 'Ã¬ÂÂÃ¬ÂÂ Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ ÃªÂµÂ¬Ã«Â§Â¤ Ã­ÂÂ 7Ã¬ÂÂ¼ Ã¬ÂÂ´Ã­ÂÂ Ã¬ÂÂ¼Ã¬Â Â Ã­ÂÂÃ¬ÂÂ Ã¬ÂÂ',
							result : 'Ã­ÂÂÃ«Â¶Â Ã«Â¶ÂÃªÂ°Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã¬ÂÂÃ«Â©Â¸)'
						}
					],
					'<h3 class="bold">Ã¬ÂÂÃ¬ÂÂÃ«ÂªÂ¨Ã¬Â§Â Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ 7Ã¬ÂÂ¼Ã¬ÂÂ´Ã«ÂÂ´ Ã¬ÂÂ¼Ã¬Â Â Ã­ÂÂÃ¬ÂÂ Ã¬ÂÂÃ«Â£Â Ã­ÂÂ Ã­ÂÂÃ«Â¶ÂÃ¬Â ÂÃ¬Â±Â</h3>',
					[
						{
							condition : 'ÃªÂ²Â°Ã¬Â Â Ã­ÂÂ 1Ã¬ÂÂÃªÂ°Â Ã¬ÂÂ´Ã«ÂÂ´ Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂ',
							result : '100% Ã­ÂÂÃªÂ¸Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã«Â³ÂµÃ¬ÂÂ) (Ã«ÂÂ¨, Ã«ÂÂ¹Ã¬ÂÂ¼ Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤Ã«ÂÂ 1Ã¬ÂÂÃªÂ°Â Ã¬ÂÂ´Ã«ÂÂ´ Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂÃ¬ÂÂÃ«ÂÂ Ã­ÂÂÃ«Â¶Â Ã«Â¶ÂÃªÂ°ÂÃ«ÂÂ¥)'
						},
						{
							condition : 'Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ 6Ã¬ÂÂ¼Ã¬Â Â Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂ',
							result : '100% Ã­ÂÂÃªÂ¸Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã¬ÂÂÃ«Â©Â¸)'
						},
						{
							condition : 'Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ 5Ã¬ÂÂ¼Ã¬Â Â Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂ',
							result : 'ÃªÂ²Â°Ã¬Â Â ÃªÂ¸ÂÃ¬ÂÂ¡Ã¬ÂÂ 95% Ã­ÂÂÃ«Â¶Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã¬ÂÂÃ«Â©Â¸)'
						},
						{
							condition : 'Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ 4Ã¬ÂÂ¼Ã¬Â Â Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂ',
							result : 'ÃªÂ²Â°Ã¬Â Â ÃªÂ¸ÂÃ¬ÂÂ¡Ã¬ÂÂ 90% Ã­ÂÂÃ«Â¶Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã¬ÂÂÃ«Â©Â¸)'
						},
						{
							condition : 'Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ 3Ã¬ÂÂ¼Ã¬Â Â Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂ',
							result : 'ÃªÂ²Â°Ã¬Â Â ÃªÂ¸ÂÃ¬ÂÂ¡Ã¬ÂÂ 80% Ã­ÂÂÃ«Â¶Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã¬ÂÂÃ«Â©Â¸)'
						},
						{
							condition : 'Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ 2Ã¬ÂÂ¼Ã¬Â Â Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂ',
							result : 'ÃªÂ²Â°Ã¬Â Â ÃªÂ¸ÂÃ¬ÂÂ¡Ã¬ÂÂ 70% Ã­ÂÂÃ«Â¶Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã¬ÂÂÃ«Â©Â¸)'
						},
						{
							condition : 'Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ 1Ã¬ÂÂ¼Ã¬Â Â, Ã«ÂÂ¹Ã¬ÂÂ¼ Ã¬Â·Â¨Ã¬ÂÂ Ã«Â¶ÂÃªÂ°Â',
							result : 'Ã­ÂÂÃ«Â¶Â Ã«Â¶ÂÃªÂ°Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã¬ÂÂÃ«Â©Â¸) (Ã«ÂÂ¨, ÃªÂ²Â°Ã¬Â Â Ã­ÂÂ 1Ã¬ÂÂÃªÂ°Â Ã¬ÂÂ´Ã«ÂÂ´ Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂ, Ã«Â°Â¤12Ã¬ÂÂ Ã¬ÂÂ´Ã¬Â Â 100% Ã­ÂÂÃ«Â¶Â)'
						},
						{
							condition : 'Ã«ÂÂ¹Ã¬ÂÂ¼ Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ ÃªÂµÂ¬Ã«Â§Â¤ Ã¬ÂÂ',
							result : 'Ã­ÂÂÃ«Â¶Â Ã«Â¶ÂÃªÂ°Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã¬ÂÂÃ«Â©Â¸)'
						},
					],
					'<h3 class="bold">Ã¬Â ÂÃªÂ·ÂÃ«ÂªÂ¨Ã¬Â§Â(Ã¬ÂÂ¥ÃªÂ¸Â°) Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ Ã­ÂÂÃ«Â¶ÂÃ¬Â ÂÃ¬Â±Â</h3>',
					'<span>Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ Ã­ÂÂÃ«Â¶ÂÃ¬ÂÂ Ã¬ÂÂÃ¬ÂÂÃ¬ÂÂÃªÂ°ÂÃ¬ÂÂ´ Ã¬ÂÂÃ«ÂÂ Ã¬ÂÂ¼Ã¬ÂÂÃ«Â¥Â¼ ÃªÂ¸Â°Ã¬Â¤ÂÃ¬ÂÂ¼Ã«Â¡Â Ã­ÂÂ©Ã«ÂÂÃ«ÂÂ¤.</span>',
					[
						{
							condition : 'ÃªÂ²Â°Ã¬Â Â Ã­ÂÂ 1Ã¬ÂÂÃªÂ°Â Ã¬ÂÂ´Ã«ÂÂ´ Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂ',
							result : '100% Ã­ÂÂÃ«Â¶Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã«Â³ÂµÃ¬ÂÂ) (Ã«ÂÂ¨, Ã«ÂÂ¹Ã¬ÂÂ¼ Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤Ã«ÂÂ 1Ã¬ÂÂ¼ Ã¬ÂÂÃªÂ°ÂÃ«Â£Â Ã«Â°Â Ã«ÂÂ¨Ã¬ÂÂ Ã¬ÂÂÃªÂ°ÂÃ«Â£ÂÃ¬ÂÂ 20% Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂÃ¬ÂÂÃ«Â£ÂÃ«Â¥Â¼ Ã¬Â ÂÃ¬ÂÂ¸Ã­ÂÂ ÃªÂ¸ÂÃ¬ÂÂ¡ Ã­ÂÂÃ«Â¶Â)'
						},
						{
							condition : 'Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ 6Ã¬ÂÂ¼ Ã¬Â Â Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂ',
							result : '100% Ã­ÂÂÃ«Â¶Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã«Â³ÂµÃ¬ÂÂ)'
						},
						{
							condition : 'Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ 5Ã¬ÂÂ¼ Ã¬Â Â Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂ',
							result : '1Ã¬ÂÂ¼ Ã¬ÂÂÃªÂ°ÂÃ«Â£Â 5% Ã¬Â ÂÃ¬ÂÂ¸Ã­ÂÂ ÃªÂ¸ÂÃ¬ÂÂ¡ Ã­ÂÂÃ«Â¶Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã¬ÂÂÃ«Â©Â¸)'
						},
						{
							condition : 'Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ 4Ã¬ÂÂ¼ Ã¬Â Â Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂ',
							result : '1Ã¬ÂÂ¼ Ã¬ÂÂÃªÂ°ÂÃ«Â£Â 10% Ã¬Â ÂÃ¬ÂÂ¸Ã­ÂÂ ÃªÂ¸ÂÃ¬ÂÂ¡ Ã­ÂÂÃ«Â¶Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã¬ÂÂÃ«Â©Â¸)'
						},
						{
							condition : 'Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ 3Ã¬ÂÂ¼ Ã¬Â Â Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂ',
							result : '1Ã¬ÂÂ¼ Ã¬ÂÂÃªÂ°ÂÃ«Â£Â 20% Ã¬Â ÂÃ¬ÂÂ¸Ã­ÂÂ ÃªÂ¸ÂÃ¬ÂÂ¡ Ã­ÂÂÃ«Â¶Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã¬ÂÂÃ«Â©Â¸)'
						},
						{
							condition : 'Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ 2Ã¬ÂÂ¼ Ã¬Â Â Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂ',
							result : '1Ã¬ÂÂ¼ Ã¬ÂÂÃªÂ°ÂÃ«Â£Â 30% Ã¬Â ÂÃ¬ÂÂ¸Ã­ÂÂ ÃªÂ¸ÂÃ¬ÂÂ¡ Ã­ÂÂÃ«Â¶Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã¬ÂÂÃ«Â©Â¸)'
						},
						{
							condition : 'Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ 1Ã¬ÂÂ¼ Ã¬Â Â Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂ',
							result : '1Ã¬ÂÂ¼ Ã¬ÂÂÃªÂ°ÂÃ«Â£ÂÃ«Â¥Â¼ Ã¬Â ÂÃ¬ÂÂ¸Ã­ÂÂ ÃªÂ¸ÂÃ¬ÂÂ¡ Ã­ÂÂÃ«Â¶Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã¬ÂÂÃ«Â©Â¸) (Ã«ÂÂ¨, ÃªÂ²Â°Ã¬Â Â Ã­ÂÂ 1Ã¬ÂÂÃªÂ°Â Ã¬ÂÂ´Ã«ÂÂ´ Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂ, Ã«Â°Â¤12Ã¬ÂÂ Ã¬ÂÂ´Ã¬Â Â 100% Ã­ÂÂÃ«Â¶Â)'
						},
						{
							condition : 'Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ Ã«ÂÂ¹Ã¬ÂÂ¼ Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂ',
							result : '1Ã¬ÂÂ¼ Ã¬ÂÂÃªÂ°ÂÃ«Â£Â Ã«Â°Â Ã«ÂÂ¨Ã¬ÂÂ Ã¬ÂÂÃªÂ°ÂÃ«Â£ÂÃ¬ÂÂ 20% Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂÃ¬ÂÂÃ«Â£ÂÃ«Â¥Â¼ Ã¬Â ÂÃ¬ÂÂ¸Ã­ÂÂ ÃªÂ¸ÂÃ¬ÂÂ¡ Ã­ÂÂÃ«Â¶Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã¬ÂÂÃ«Â©Â¸)'
						},
						{
							condition : 'Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ Ã«ÂÂ¹Ã¬ÂÂ¼ Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂ Ã¬Â²Â­Ã¬ÂÂ ÃªÂ²Â°Ã¬Â ÂÃªÂ¸ÂÃ¬ÂÂ¡ ÃªÂ¸Â°Ã¬Â¤Â',
							result : '1Ã¬ÂÂ¼ Ã¬ÂÂÃªÂ°ÂÃ«Â£Â Ã«Â°Â Ã«ÂÂ¨Ã¬ÂÂ Ã¬ÂÂÃªÂ°ÂÃ«Â£ÂÃ¬ÂÂ 20% Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂÃ¬ÂÂÃ«Â£ÂÃ«Â¥Â¼ Ã¬Â ÂÃ¬ÂÂ¸Ã­ÂÂ ÃªÂ¸ÂÃ¬ÂÂ¡ Ã­ÂÂÃ«Â¶Â'
						},
						{
							condition : 'Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ Ã¬Â·Â¨Ã¬ÂÂÃ¬ÂÂ¼ ÃªÂ¸Â°Ã¬Â¤ÂÃ¬ÂÂ¼Ã«Â¡Â Ã«ÂÂ¨Ã¬ÂÂ ÃªÂ°ÂÃ¬ÂÂ Ã¬ÂÂ¼Ã¬ÂÂÃªÂ°Â 50% Ã¬ÂÂ´Ã¬ÂÂ Ã¬ÂÂ¼ ÃªÂ²Â½Ã¬ÂÂ°',
							result : 'ÃªÂ²Â°Ã¬Â ÂÃªÂ¸ÂÃ¬ÂÂ¡ ÃªÂ¸Â°Ã¬Â¤Â Ã¬ÂÂÃªÂ°ÂÃ«Â£Â Ã¬ÂÂ¼Ã­ÂÂ  ÃªÂ³ÂÃ¬ÂÂ°+ Ã«ÂÂ¨Ã¬ÂÂ Ã¬ÂÂÃªÂ°ÂÃ«Â£ÂÃ¬ÂÂ 20% Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂÃ¬ÂÂÃ«Â£ÂÃ«Â¥Â¼ Ã¬Â ÂÃ¬ÂÂ¸Ã­ÂÂ ÃªÂ¸ÂÃ¬ÂÂ¡ Ã­ÂÂÃ«Â¶Â'
						},
						{
							condition : 'Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ Ã¬Â·Â¨Ã¬ÂÂÃ¬ÂÂ¼ ÃªÂ¸Â°Ã¬Â¤ÂÃ¬ÂÂ¼Ã«Â¡Â ÃªÂ°ÂÃ¬ÂÂ Ã¬ÂÂ¼Ã¬ÂÂÃªÂ°Â 50% Ã«Â¯Â¸Ã«Â§Â Ã¬ÂÂ¼ ÃªÂ²Â½Ã¬ÂÂ°',
							result : 'Ã­ÂÂÃ«Â¶Â Ã«Â¶ÂÃªÂ°Â'
						},
					],
					'<h3 class="bold">Ã¬ÂÂ´Ã«Â²Â¤Ã­ÂÂ¸ Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤(Ã¬ÂÂÃ¬ÂÂ¨Ã«Â¦Â´Ã«Â ÂÃ¬ÂÂ´) Ã­ÂÂÃ«Â¶Â Ã¬Â ÂÃ¬Â±Â</h3>',
					[
						{
							condition : 'ÃªÂ²Â°Ã¬Â Â Ã­ÂÂ 1Ã¬ÂÂÃªÂ°Â Ã¬ÂÂ´Ã«ÂÂ´ Ã¬Â·Â¨Ã¬ÂÂÃ¬ÂÂ',
							result : '100% Ã­ÂÂÃ«Â¶Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã«Â³ÂµÃ¬ÂÂ)'
						},
						{
							condition : 'Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ ÃªÂ²Â°Ã¬Â Â 1Ã¬ÂÂÃªÂ°Â Ã¬ÂÂ´Ã­ÂÂ',
							result : 'Ã­ÂÂÃ«Â¶Â Ã«Â¶ÂÃªÂ°Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã¬ÂÂÃ«Â©Â¸)'
						}
						
					],
					'<h3 class="bold">Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ Ã¬ÂÂ¤Ã¬Â¼ÂÃ¬Â¥Â´ Ã«Â³ÂÃªÂ²Â½ Ã¬ÂÂ Ã­ÂÂÃ«Â¶Â Ã¬Â ÂÃ¬Â±Â</h3>',
					[
						{
							condition : 'Ã¬ÂÂ¼Ã¬Â Â Ã«Â³ÂÃªÂ²Â½ Ã­ÂÂ Ã­ÂÂÃ«Â¶ÂÃ¬ÂÂ Ã¬Â²Â­Ã¬ÂÂ, Ã­ÂÂÃ¬ÂÂ(ÃªÂµÂ¬Ã«Â§Â¤)Ã«ÂÂÃ¬ÂÂÃ«ÂÂ ÃªÂ°ÂÃ¬ÂÂ¥ Ã«Â¹Â Ã«Â¥Â¸ Ã¬ÂÂ¼Ã¬Â ÂÃ¬ÂÂ¼Ã«Â¡Â Ã­ÂÂÃ«Â¶Â ÃªÂ·ÂÃ¬Â Â Ã¬Â ÂÃ¬ÂÂ©',
							result : null,
						},
						{
							condition : 'Ã¬ÂÂ¼Ã¬Â Â Ã«Â³ÂÃªÂ²Â½Ã¬ÂÂ Ã¬ÂÂÃ«Â¬Â´Ã¬ÂÂ¬Ã­ÂÂ­Ã¬ÂÂ´ Ã¬ÂÂÃ«ÂÂÃ«Â©Â°, Ã¬ÂÂÃªÂ°ÂÃ«ÂÂÃªÂ³Â¼ Ã­ÂÂÃ¬ÂÂ Ã«Â°Â Ã«Â³ÂÃªÂ²Â½Ã¬ÂÂ´ ÃªÂ°ÂÃ«ÂÂ¥Ã­ÂÂ ÃªÂ²Â½Ã¬ÂÂ°Ã¬ÂÂÃ«Â§Â Ã¬Â ÂÃ¬ÂÂ©Ã«ÂÂ©Ã«ÂÂÃ«ÂÂ¤',
							result : '(1Ã¬ÂÂ¼ Ã¬ÂÂ´Ã¬Â Â Ã«ÂÂ¹Ã¬ÂÂ¼ Ã«Â³ÂÃªÂ²Â½Ã¬ÂÂ Ã«Â³ÂÃªÂ²Â½Ã«Â¶ÂÃªÂ°Â)'
						}
					],
					'<span>* Ã¬ÂÂÃ¬ÂÂ Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ ÃªÂµÂ¬Ã«Â§Â¤ Ã¬ÂÂ, 7Ã¬ÂÂ¼ Ã¬ÂÂ´Ã«ÂÂ´ Ã¬ÂÂ¼Ã¬Â ÂÃ­ÂÂÃ¬ÂÂ Ã­ÂÂÃ¬ÂÂ<br>* Ã«ÂªÂ¨Ã«ÂÂ  Ã­ÂÂÃ«Â¶Â ÃªÂ±Â´Ã¬ÂÂ Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ Ã¬ÂÂ¼Ã¬Â ÂÃ¬ÂÂ ÃªÂ¸Â°Ã¬Â¤ÂÃ¬ÂÂ¼Ã«Â¡Â Ã­ÂÂÃ«Â¶ÂÃ¬Â²ÂÃ«Â¦Â¬<br>* Ã­ÂÂÃ«Â¶Â Ã¬Â ÂÃ¬Â±ÂÃ¬ÂÂ´Ã¬ÂÂ¸ ÃªÂµÂ¬Ã«Â§Â¤Ã¬ÂÂ Ã«Â°Â Ã¬ÂÂÃªÂ°Â ÃªÂ°ÂÃ¬ÂÂ¸Ã¬ÂÂ¬Ã¬Â ÂÃ¬ÂÂ¼Ã«Â¡Â Ã­ÂÂÃ«Â¶ÂÃ¬ÂÂ´ Ã­ÂÂÃ¬ÂÂÃ­ÂÂ  ÃªÂ²Â½Ã¬ÂÂ° ÃªÂµÂ¬Ã«Â§Â¤Ã¬ÂÂÃ¬ÂÂ Ã¬ÂÂÃªÂ°Â Ã¬Â§ÂÃ¬Â Â Ã­ÂÂÃ¬ÂÂ</span>',
					'<br><span>* Ã«ÂªÂ¨Ã«ÂÂ  Ã­ÂÂÃ«Â¶Â ÃªÂ±Â´Ã¬ÂÂ Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ Ã¬ÂÂ¼Ã¬Â ÂÃ¬ÂÂ ÃªÂ¸Â°Ã¬Â¤ÂÃ¬ÂÂ¼Ã«Â¡Â Ã­ÂÂÃ«Â¶ÂÃ¬Â²ÂÃ«Â¦Â¬<br>* Ã­ÂÂÃ«Â¶Â Ã¬Â ÂÃ¬Â±ÂÃ¬ÂÂ´Ã¬ÂÂ¸ Ã­ÂÂÃ«Â¶ÂÃ¬ÂÂ´ Ã­ÂÂÃ¬ÂÂÃ­ÂÂ  ÃªÂ²Â½Ã¬ÂÂ° ÃªÂµÂ¬Ã«Â§Â¤Ã¬ÂÂÃ¬ÂÂ Ã¬ÂÂÃªÂ°Â Ã¬Â§ÂÃ¬Â Â Ã­ÂÂÃ¬ÂÂ</span>',
					'<p class="bold m-t-30">Ã¬ÂÂÃ¬ÂÂ¨Ã«ÂÂ¹Ã¬ÂÂ Ã­ÂÂµÃ¬ÂÂ Ã­ÂÂÃ«Â§Â¤Ã¬Â¤ÂÃªÂ°ÂÃ¬ÂÂÃ¬ÂÂ´Ã«Â©Â°, Ã­ÂÂµÃ¬ÂÂ Ã­ÂÂÃ«Â§Â¤Ã¬ÂÂ Ã«ÂÂ¹Ã¬ÂÂ¬Ã¬ÂÂÃªÂ°Â Ã¬ÂÂÃ«ÂÂÃ«ÂÂÃ«ÂÂ¤.<br>Ã¬ÂÂÃ­ÂÂ, Ã¬ÂÂÃ­ÂÂÃ¬Â ÂÃ«Â³Â´, ÃªÂ±Â°Ã«ÂÂÃ¬ÂÂ ÃªÂ´ÂÃ­ÂÂ Ã¬ÂÂÃ«Â¬Â´Ã¬ÂÂ Ã¬Â±ÂÃ¬ÂÂÃ¬ÂÂ Ã­ÂÂÃ«Â§Â¤Ã¬ÂÂÃ¬ÂÂ Ã¬ÂÂÃ¬ÂÂµÃ«ÂÂÃ«ÂÂ¤.</p>'
				],
				'regularity' : [
					'<h3 class="bold">Ã¬Â ÂÃªÂ·ÂÃ«ÂªÂ¨Ã¬Â§Â Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ Ã­ÂÂÃ«Â¶ÂÃ¬Â ÂÃ¬Â±Â</h3>',
					'<span>Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ Ã­ÂÂÃ«Â¶ÂÃ¬ÂÂ Ã¬ÂÂÃ¬ÂÂÃ¬ÂÂÃªÂ°ÂÃ¬ÂÂ´ Ã¬ÂÂÃ«ÂÂ Ã¬ÂÂ¼Ã¬ÂÂÃ«Â¥Â¼ ÃªÂ¸Â°Ã¬Â¤ÂÃ¬ÂÂ¼Ã«Â¡Â Ã­ÂÂ©Ã«ÂÂÃ«ÂÂ¤.</span>',
					[
						{
							condition : 'ÃªÂ²Â°Ã¬Â Â Ã­ÂÂ 1Ã¬ÂÂÃªÂ°Â Ã¬ÂÂ´Ã«ÂÂ´ Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂ',
							result : '100% Ã­ÂÂÃ«Â¶Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã«Â³ÂµÃ¬ÂÂ) (Ã«ÂÂ¨, Ã«ÂÂ¹Ã¬ÂÂ¼ Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤Ã«ÂÂ 1Ã¬ÂÂ¼ Ã¬ÂÂÃªÂ°ÂÃ«Â£Â Ã«Â°Â Ã«ÂÂ¨Ã¬ÂÂ Ã¬ÂÂÃªÂ°ÂÃ«Â£ÂÃ¬ÂÂ 20% Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂÃ¬ÂÂÃ«Â£ÂÃ«Â¥Â¼ Ã¬Â ÂÃ¬ÂÂ¸Ã­ÂÂ ÃªÂ¸ÂÃ¬ÂÂ¡ Ã­ÂÂÃ«Â¶Â)'
						},
						{
							condition : 'Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ 6Ã¬ÂÂ¼ Ã¬Â Â Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂ',
							result : '100% Ã­ÂÂÃ«Â¶Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã«Â³ÂµÃ¬ÂÂ)'
						},
						{
							condition : 'Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ 5Ã¬ÂÂ¼ Ã¬Â Â Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂ',
							result : '1Ã¬ÂÂ¼ Ã¬ÂÂÃªÂ°ÂÃ«Â£Â 5% Ã¬Â ÂÃ¬ÂÂ¸Ã­ÂÂ ÃªÂ¸ÂÃ¬ÂÂ¡ Ã­ÂÂÃ«Â¶Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã¬ÂÂÃ«Â©Â¸)'
						},
						{
							condition : 'Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ 4Ã¬ÂÂ¼ Ã¬Â Â Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂ',
							result : '1Ã¬ÂÂ¼ Ã¬ÂÂÃªÂ°ÂÃ«Â£Â 10% Ã¬Â ÂÃ¬ÂÂ¸Ã­ÂÂ ÃªÂ¸ÂÃ¬ÂÂ¡ Ã­ÂÂÃ«Â¶Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã¬ÂÂÃ«Â©Â¸)'
						},
						{
							condition : 'Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ 3Ã¬ÂÂ¼ Ã¬Â Â Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂ',
							result : '1Ã¬ÂÂ¼ Ã¬ÂÂÃªÂ°ÂÃ«Â£Â 20% Ã¬Â ÂÃ¬ÂÂ¸Ã­ÂÂ ÃªÂ¸ÂÃ¬ÂÂ¡ Ã­ÂÂÃ«Â¶Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã¬ÂÂÃ«Â©Â¸)'
						},
						{
							condition : 'Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ 2Ã¬ÂÂ¼ Ã¬Â Â Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂ',
							result : '1Ã¬ÂÂ¼ Ã¬ÂÂÃªÂ°ÂÃ«Â£Â 30% Ã¬Â ÂÃ¬ÂÂ¸Ã­ÂÂ ÃªÂ¸ÂÃ¬ÂÂ¡ Ã­ÂÂÃ«Â¶Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã¬ÂÂÃ«Â©Â¸)'
						},
						{
							condition : 'Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ 1Ã¬ÂÂ¼ Ã¬Â Â Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂ',
							result : '1Ã¬ÂÂ¼ Ã¬ÂÂÃªÂ°ÂÃ«Â£ÂÃ«Â¥Â¼ Ã¬Â ÂÃ¬ÂÂ¸Ã­ÂÂ ÃªÂ¸ÂÃ¬ÂÂ¡ Ã­ÂÂÃ«Â¶Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã¬ÂÂÃ«Â©Â¸) (Ã«ÂÂ¨, ÃªÂ²Â°Ã¬Â Â Ã­ÂÂ 1Ã¬ÂÂÃªÂ°Â Ã¬ÂÂ´Ã«ÂÂ´ Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂ, Ã«Â°Â¤12Ã¬ÂÂ Ã¬ÂÂ´Ã¬Â Â 100% Ã­ÂÂÃ«Â¶Â)'
						},
						{
							condition : 'Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ Ã«ÂÂ¹Ã¬ÂÂ¼ Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂ',
							result : '1Ã¬ÂÂ¼ Ã¬ÂÂÃªÂ°ÂÃ«Â£Â Ã«Â°Â Ã«ÂÂ¨Ã¬ÂÂ Ã¬ÂÂÃªÂ°ÂÃ«Â£ÂÃ¬ÂÂ 20% Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂÃ¬ÂÂÃ«Â£ÂÃ«Â¥Â¼ Ã¬Â ÂÃ¬ÂÂ¸Ã­ÂÂ ÃªÂ¸ÂÃ¬ÂÂ¡ Ã­ÂÂÃ«Â¶Â (Ã­ÂÂ¬Ã¬ÂÂ¸Ã­ÂÂ¸, Ã¬Â¿Â Ã­ÂÂ° Ã¬ÂÂÃ«Â©Â¸)'
						},
						{
							condition : 'Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ Ã«ÂÂ¹Ã¬ÂÂ¼ Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂ Ã¬Â²Â­Ã¬ÂÂ ÃªÂ²Â°Ã¬Â ÂÃªÂ¸ÂÃ¬ÂÂ¡ ÃªÂ¸Â°Ã¬Â¤Â',
							result : '1Ã¬ÂÂ¼ Ã¬ÂÂÃªÂ°ÂÃ«Â£Â Ã«Â°Â Ã«ÂÂ¨Ã¬ÂÂ Ã¬ÂÂÃªÂ°ÂÃ«Â£ÂÃ¬ÂÂ 20% Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂÃ¬ÂÂÃ«Â£ÂÃ«Â¥Â¼ Ã¬Â ÂÃ¬ÂÂ¸Ã­ÂÂ ÃªÂ¸ÂÃ¬ÂÂ¡ Ã­ÂÂÃ«Â¶Â'
						},
						{
							condition : 'Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ Ã¬Â·Â¨Ã¬ÂÂÃ¬ÂÂ¼ ÃªÂ¸Â°Ã¬Â¤ÂÃ¬ÂÂ¼Ã«Â¡Â Ã«ÂÂ¨Ã¬ÂÂ ÃªÂ°ÂÃ¬ÂÂ Ã¬ÂÂ¼Ã¬ÂÂÃªÂ°Â 50% Ã¬ÂÂ´Ã¬ÂÂ Ã¬ÂÂ¼ ÃªÂ²Â½Ã¬ÂÂ°',
							result : 'ÃªÂ²Â°Ã¬Â ÂÃªÂ¸ÂÃ¬ÂÂ¡ ÃªÂ¸Â°Ã¬Â¤Â Ã¬ÂÂÃªÂ°ÂÃ«Â£Â Ã¬ÂÂ¼Ã­ÂÂ  ÃªÂ³ÂÃ¬ÂÂ°+ Ã«ÂÂ¨Ã¬ÂÂ Ã¬ÂÂÃªÂ°ÂÃ«Â£ÂÃ¬ÂÂ 20% Ã¬Â·Â¨Ã¬ÂÂ Ã¬ÂÂÃ¬ÂÂÃ«Â£ÂÃ«Â¥Â¼ Ã¬Â ÂÃ¬ÂÂ¸Ã­ÂÂ ÃªÂ¸ÂÃ¬ÂÂ¡ Ã­ÂÂÃ«Â¶Â'
						},
						{
							condition : 'Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ Ã¬Â·Â¨Ã¬ÂÂÃ¬ÂÂ¼ ÃªÂ¸Â°Ã¬Â¤ÂÃ¬ÂÂ¼Ã«Â¡Â ÃªÂ°ÂÃ¬ÂÂ Ã¬ÂÂ¼Ã¬ÂÂÃªÂ°Â 50% Ã«Â¯Â¸Ã«Â§Â Ã¬ÂÂ¼ ÃªÂ²Â½Ã¬ÂÂ°',
							result : 'Ã­ÂÂÃ«Â¶Â Ã«Â¶ÂÃªÂ°Â'
						},
					],
					'<span>* Ã«ÂªÂ¨Ã«ÂÂ  Ã­ÂÂÃ«Â¶Â ÃªÂ±Â´Ã¬ÂÂ Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ Ã¬ÂÂ¼Ã¬Â ÂÃ¬ÂÂ ÃªÂ¸Â°Ã¬Â¤ÂÃ¬ÂÂ¼Ã«Â¡Â Ã­ÂÂÃ«Â¶ÂÃ¬Â²ÂÃ«Â¦Â¬<br>* Ã­ÂÂÃ«Â¶Â Ã¬Â ÂÃ¬Â±ÂÃ¬ÂÂ´Ã¬ÂÂ¸ Ã­ÂÂÃ«Â¶ÂÃ¬ÂÂ´ Ã­ÂÂÃ¬ÂÂÃ­ÂÂ  ÃªÂ²Â½Ã¬ÂÂ° ÃªÂµÂ¬Ã«Â§Â¤Ã¬ÂÂÃ¬ÂÂ Ã¬ÂÂÃªÂ°Â Ã¬Â§ÂÃ¬Â Â Ã­ÂÂÃ¬ÂÂ</span>',
					'<p class="bold m-t-30">Ã¬ÂÂÃ¬ÂÂ¨Ã«ÂÂ¹Ã¬ÂÂ Ã­ÂÂµÃ¬ÂÂ Ã­ÂÂÃ«Â§Â¤Ã¬Â¤ÂÃªÂ°ÂÃ¬ÂÂÃ¬ÂÂ´Ã«Â©Â°, Ã­ÂÂµÃ¬ÂÂ Ã­ÂÂÃ«Â§Â¤Ã¬ÂÂ Ã«ÂÂ¹Ã¬ÂÂ¬Ã¬ÂÂÃªÂ°Â Ã¬ÂÂÃ«ÂÂÃ«ÂÂÃ«ÂÂ¤.<br>Ã¬ÂÂÃ­ÂÂ, Ã¬ÂÂÃ­ÂÂÃ¬Â ÂÃ«Â³Â´, ÃªÂ±Â°Ã«ÂÂÃ¬ÂÂ ÃªÂ´ÂÃ­ÂÂ Ã¬ÂÂÃ«Â¬Â´Ã¬ÂÂ Ã¬Â±ÂÃ¬ÂÂÃ¬ÂÂ Ã­ÂÂÃ«Â§Â¤Ã¬ÂÂÃ¬ÂÂ Ã¬ÂÂÃ¬ÂÂµÃ«ÂÂÃ«ÂÂ¤.</p>',
				],
			};
			
			var targetObj = $('#classCancelInfoArea .cancel_info');
			
			if(data){
				var temp = null;
				
				if(data['scheduleType'] == 1 || data['scheduleType'] == 2){
					temp = cancelRuleInfo['schedule'];
				}else if(data['scheduleType'] == 3){
					temp = cancelRuleInfo['always'];				
				}else if(data['scheduleType'] == 4){
					temp = cancelRuleInfo['regularity'];
				}
				
				if(temp){
					temp.map(function(obj){
						if(typeof obj === 'string'){
							targetObj.append(obj);
						}else if(obj && Array.isArray(obj)){
							var ol = $('<ol/>').addClass('cancel-text-list');
							obj.map(function(txt, i){
								ol.append(_getItemDom(txt, i));
							});
							targetObj.append(ol);
						}
					});
				}
				
				function _getItemDom(item, i){
					return $('<li/>').append(
						$('<div/>').addClass('num').text((i + 1))
					).append(
						$('<div/>').addClass('txt').text(item['condition'])
					).append(
						$('<div/>').addClass('sub').text(item['result'])
					);
				}
			}
		};
		
		pageObj.setCalendarSchedule = function(data){
			
			var scheduleType = data.classDetailData.scheduleType;
			
			if(scheduleType == 1 || scheduleType == 2){				
				var scheduleDayList = data.classFutureScheduleDayList 
				, blindTargetDayList = [];
				
				if(scheduleDayList.length > 0){
					// Ã«ÂªÂ¨Ã«ÂÂ  Ã¬ÂÂ¤Ã¬Â¼ÂÃ¬Â¥Â´Ã¬ÂÂ Ã«ÂÂ Ã¬Â§Â Ã¬ÂÂ¸Ã­ÂÂ
					var allScheduleDayList = scheduleDayList.map(function(day){
						return day.scheduleDay;
					});
					
					// Ã¬Â¡Â°Ã­ÂÂÃ«ÂÂ Ã¬ÂÂ¤Ã¬Â¼ÂÃ¬Â¥Â´Ã¬ÂÂ Ã¬ÂÂÃ¬ÂÂÃ¬ÂÂ¼ Ã«Â¶ÂÃ­ÂÂ° Ã«Â§Â¨ Ã«Â§ÂÃ¬Â§ÂÃ«Â§Â Ã«ÂÂ ÃªÂ¹ÂÃ¬Â§ÂÃ¬ÂÂ Ã«ÂªÂ¨Ã«ÂÂ  Ã«ÂÂ Ã¬Â§ÂÃ«Â¥Â¼ Ã¬Â¡Â°Ã­ÂÂ
					var allDayList = somssiCommonDateUtil.getDayListStartToEnd(scheduleDayList[0]['scheduleDay'], scheduleDayList[ scheduleDayList.length - 1 ]['scheduleDay']);
							
					blindTargetDayList = allDayList.filter(function(day){
						return allScheduleDayList.indexOf(day) < 0;
					});
					
					var calendarTargetDom = $('#scheduleCalendar');
					
					if(calendarTargetDom.length > 0){
						// calendar init
						calendarTargetDom.datepicker({
							datesDisabled : blindTargetDayList,
							startDate : allScheduleDayList[0],
							endDate : allScheduleDayList[ scheduleDayList.length - 1 ],
							language:'kr',
					        todayHighlight: true
						});
						
						// ÃªÂ°ÂÃ«ÂÂ¥Ã­ÂÂ Ã¬ÂÂ¤Ã¬Â¼ÂÃ¬Â¥Â´Ã¬ÂÂ Ã¬Â²Â«Ã«Â²ÂÃ¬Â§Â¸ Ã«ÂÂ Ã¬Â§Â Ã¬ÂÂ Ã­ÂÂ
						calendarTargetDom.datepicker('setDate', allScheduleDayList[0]);
						pageObj.setDetailScheduleInfo(allScheduleDayList[0], false);
						
						calendarTargetDom.datepicker().on('changeDate', function(e){							
							var selectedDate = somssiCommonDateUtil.getFormatDate($(this).datepicker('getDate'));
							pageObj.setDetailScheduleInfo(selectedDate, true);
						});
						
						$('.schedule-date-trigger a').click();
					}
				}
			}
		};
		
		pageObj.setDetailScheduleInfo = function(dt, isOpen){
			// Ã«ÂÂ Ã¬Â§ÂÃ¬ÂÂ Ã­ÂÂ´Ã«ÂÂ¹Ã­ÂÂÃ«ÂÂ Ã¬ÂÂ¤Ã¬Â¼ÂÃ¬Â¥Â´ Ã«ÂªÂ©Ã«Â¡Â Ã¬Â¡Â°Ã­ÂÂ
			if(dt){
				var targetObj = $('#scheduleList');
				targetObj.empty();
				
				util.submitAjax('/main/class/getClassDetailSchedule.json', {
					contentType: "application/json",					
					data : {
						classIdx : pageObj.classIdx,
						scheduleDay : dt,
						lessonTime : '90'
					}
				}).done(function(res){
					if(res && res.resultMsg == somssiCommonUtil.SUCCESS){
						
						var list = res.result;

						list.map(function(item){
							
							var $li = $('<li/>');
							
							if(item.state != 'Ã«ÂªÂ¨Ã¬Â§ÂÃ¬Â¤Â'){
								$li.addClass('closed')
							}
							
							$li.append(
								$('<a/>').addClass('schedule').append(
									$('<div/>').addClass('text01').append(
										$('<span/>').text('[' + item.state + ']')
									).append( item.lessonHourTime )
								).append(
									$('<div/>').addClass('text02').text( item.regNumTxt + ' ' + item.minimum )		
								)
							);
							
							targetObj.append($li);
						});
					}
				}).fail(function(e){
				}).always(function(res){
					
					if(isOpen){
						$('.schedule-time-trigger a').click();
					}
					
					targetObj.find('a.schedule').off('click').on('click', function(){
						
						targetObj.find('.choice-che2').removeClass('choice-che2');
						targetObj.find('> li').removeClass('active');
						
						$(this).parent().addClass('active');
						$(this).find('div.text01').addClass('choice-che2');							
					});
					
				});
			}			
		};
		
		pageObj.sendSms = function(){
			
			var $phoneNumObj = $(this).parent().parent().find('.app-sms-input .phone-number');
			
			if($phoneNumObj.length > 0){
				if(util.isEmpty($phoneNumObj.val())){
					alert('Ã¬Â ÂÃ­ÂÂÃ«Â²ÂÃ­ÂÂ¸Ã«Â¥Â¼ Ã¬ÂÂÃ«Â Â¥Ã­ÂÂ´Ã¬Â£Â¼Ã¬ÂÂ¸Ã¬ÂÂ.');
					return;
				}
				
				var alertMsg = null;
	            util.submitAjax('/main/sendAppLink.json', {
					contentType : 'application/json',
					data : {
		                pn :  $phoneNumObj.val(),
		            },
				}).done(function(res){
					if(res && res['resultMsg'] == somssiCommonUtil.SUCCESS){
						alertMsg = 'Ã«Â¬Â¸Ã¬ÂÂÃªÂ°Â Ã«Â°ÂÃ¬ÂÂ Ã«ÂÂÃ¬ÂÂÃ¬ÂÂµÃ«ÂÂÃ«ÂÂ¤.';
						$phoneNumObj.val('');
					}
				}).fail(function(){
				}).always(function(){
					if(alertMsg){
						alert(alertMsg);
					}
				});
			}
		};
		
		$(function() {
			pageObj = $.extend(pageObj, {
				classIdx : '7538',
				mainImgSwiperObj : {
					obj : null,
					isSettingComplete : false
				},
				gallerySwiperObj : {
					obj : null,
					isSettingComplete : false
				}, 
				mapControlObj : null
			});
			
			pageObj.init();
		});
	})(window, document, jQuery !== undefined ? jQuery : $);
</script>
</head>
<body>
	<main id="sub-wrapper" class="main-contents">
		<div class="contents">
        	<div class="detail-left">
				<div class="detail-title-img">
					<div id="title_image" class="swiper swiper-container">
						<div class="swiper-wrapper">
							<div class="swiper-slide"></div>
						</div>
					</div>
					<div class="swiper-button-next nav-btn">
						<i class="xi-angle-right-min"></i>
					</div>
					<div class="swiper-button-prev nav-btn">
						<i class="xi-angle-left-min"></i>
					</div>
					<div class="title-pagination"></div>
				</div>
				<div class="detail-title-text">
					<div class="title-text">
						<div class="title-course">
							[Ã¬ÂÂÃ«ÂÂ°Ã¬ÂÂ´]
						</div>
						<div class="title-type">
							Ã­ÂÂ¥Ã¬ÂÂ Ã¢ÂÂ Ã«ÂÂÃ­ÂÂ¨Ã¬Â Â Ã¢ÂÂ Ã­ÂÂÃ¬Â·Â¨Ã¬Â Â
							
							
								<span class="badge badge-default">1,000Ã¬ÂÂ Ã¬Â¶ÂÃªÂ°ÂÃ­ÂÂ Ã¬ÂÂ¸</span>
							
						</div>
						<div class="title-subject">[Ã«Â§ÂÃ­ÂÂ¬,Ã­ÂÂÃ«ÂÂ,Ã­ÂÂ©Ã¬Â Â,Ã¬ÂÂ°Ã«ÂÂ¨] Ã­ÂÂ¥ÃªÂ¸Â°Ã«Â¡ÂÃ¬ÂÂ´ Ã«ÂÂÃ«Â§ÂÃ¬ÂÂ Ã¬ÂÂÃªÂ°Â Ã¬Â¡Â°Ã­ÂÂ¥ÃªÂ³Â¼ Ã­ÂÂ¥Ã¬ÂÂÃ­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤</div>
					</div>
					<div class="title-btn">
						<a href="#" class="btn-bookmark app-down-show-btn">Ã¬Â¦ÂÃªÂ²Â¨Ã¬Â°Â¾ÃªÂ¸Â°</a> 
						<a href="#" class="btn-share app-down-show-btn">ÃªÂ³ÂµÃ¬ÂÂ </a>
					</div>
				</div>
				
				<div class="tab">
					<ul id="tabList">
	                    <li class="active"><a rel="classInfoArea">Ã¬ÂÂÃ¬ÂÂ¸Ã¬Â ÂÃ«Â³Â´</a></li>
	                    <li><a rel="classReviewArea">Ã­ÂÂÃªÂ¸Â° 0</a></li>
	                    <li><a rel="classQnaArea">Q&amp;A 0</a></li>
	                    <li><a rel="classCancelInfoArea">Ã«Â³ÂÃªÂ²Â½ Ã«Â°Â Ã¬Â·Â¨Ã¬ÂÂ</a></li>
	                </ul>
				</div>
				
				<div class="tab_wrap">
					<!-- Ã¬ÂÂÃ¬ÂÂ¸Ã¬Â ÂÃ«Â³Â´ -->
					<div id="classInfoArea" class="tab_content">
						<div class="class_info">
							<h4>Ã¬ÂÂÃ¬ÂÂ¸Ã¬Â ÂÃ«Â³Â´</h4>
							
							<div class="yutube-area embed-responsive embed-responsive-16by9">
			                	<div id="youtubePlayer"></div>
			                </div>
							
	                        <p id="class_introduction" style="white-space:pre-line;">
	                        	Ã¬ÂÂÃ«ÂÂÃ­ÂÂÃ¬ÂÂ¸Ã¬ÂÂ. 
Ã¬ÂÂ¤Ã­ÂÂÃ«ÂÂÃ¬ÂÂ¤ Ã«Â¯Â¸Ã¬ÂÂ¸Ã¬ÂÂ Ã¬ÂÂÃ«ÂÂÃ«ÂÂ¤.

Ã«ÂÂ¹Ã¬ÂÂ Ã¬ÂÂ Ã­ÂÂÃ­ÂÂÃ­ÂÂÃ«ÂÂ Ã«ÂÂ¹Ã¬ÂÂ Ã¬ÂÂ Ã­ÂÂ¥ÃªÂ¸Â°Ã«Â¥Â¼
Ã¬Â§ÂÃ¬Â Â Ã¬Â ÂÃ¬ÂÂÃ­ÂÂÃ«ÂÂ Ã¬Â¡Â°Ã­ÂÂ¥ Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤Ã¬ÂÂÃ«ÂÂÃ«ÂÂ¤.

Ã«ÂÂ¤Ã¬ÂÂÃ­ÂÂ Ã­ÂÂ¥Ã¬ÂÂ Ã­ÂÂµÃ­ÂÂ´
Ã«ÂÂ´ÃªÂ°Â Ã¬Â¢ÂÃ¬ÂÂÃ­ÂÂÃ«ÂÂ Ã­ÂÂ¥ÃªÂ¸Â°Ã«Â¥Â¼ Ã¬Â°Â¾Ã¬ÂÂÃ«Â³Â´Ã«ÂÂ Ã¬ÂÂÃªÂ°ÂÃ¬ÂÂÃ«ÂÂÃ«ÂÂ¤.

Ã­ÂÂÃªÂ°ÂÃ¬Â§Â Ã­ÂÂ¥Ã¬ÂÂ Ã«ÂÂÃ­ÂÂÃ«ÂÂ´Ã«ÂÂ 1Ã¬Â¢Â Ã­ÂÂ¥Ã«Â£ÂÃ¬ÂÂ
Ã«Â¸ÂÃ«ÂÂ­Ã«ÂÂ©Ã«ÂÂ Ã­ÂÂ¥ Ã«ÂÂ±Ã¬ÂÂ Ã«Â¹ÂÃ¬ÂÂ¨Ã¬ÂÂ Ã«Â§ÂÃªÂ²Â Ã¬ÂÂÃ¬ÂÂ´Ã¬Â£Â¼Ã¬ÂÂ´
ÃªÂ°ÂÃ¬ÂÂ¥ Ã¬ÂµÂÃ¬Â ÂÃ¬ÂÂ Ã­ÂÂ¥Ã¬ÂÂ Ã¬Â°Â¾Ã¬ÂÂÃ«ÂÂ´Ã«ÂÂ Ã¬ÂÂÃªÂ°ÂÃ¬ÂÂ ÃªÂ°ÂÃ¬ÂÂµÃ«ÂÂÃ«ÂÂ¤.


/ Ã«ÂÂÃ«Â¥Â¼ Ã¬ÂÂÃ­ÂÂ Ã¬ÂÂÃªÂ°Â
/ Ã«ÂÂÃ«Â¥Â¼ Ã­ÂÂÃ­ÂÂÃ­ÂÂÃ«ÂÂ Ã­ÂÂ¥ÃªÂ¸Â°


&#039;Ã«ÂÂÃ«Â§ÂÃ¬ÂÂ Ã­ÂÂ¥, Ã¬ÂÂ°Ã«Â¦Â¬Ã¬ÂÂ Ã­ÂÂ¥Ã¬ÂÂ Ã«Â§ÂÃ«ÂÂÃ«ÂÂ Ã¬Â¦ÂÃªÂ±Â°Ã¬ÂÂ&#039;

Ã¬Â²ÂÃ¬Â²ÂÃ­ÂÂ Ã­ÂÂ¥Ã¬ÂÂ Ã«Â§Â¡Ã¬ÂÂ¼Ã«Â©Â° Ã«ÂÂÃ«ÂÂÃ¬ÂÂ ÃªÂ¸Â°Ã«Â¡ÂÃ­ÂÂÃªÂ³Â 
ÃªÂ¸Â°Ã¬ÂÂµ Ã­ÂÂÃ¬Â¼Â Ã¬ÂÂ Ã«ÂÂ¨Ã¬ÂÂÃ¬ÂÂÃ«ÂÂ Ã¬Â¶ÂÃ¬ÂÂµÃ¬ÂÂ ÃªÂºÂ¼Ã«ÂÂ´Ã«Â´ÂÃ«ÂÂÃ«ÂÂ¤.

Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤Ã¬ÂÂ Ã¬ÂÂ¤Ã¬ÂÂÃ«ÂÂ Ã«Â¶ÂÃ«ÂÂ¤Ã¬ÂÂ´ Ã¬ÂÂ¬Ã«Â°ÂÃ«ÂÂ¤, Ã¬ÂÂ ÃªÂ¸Â°Ã­ÂÂÃ«ÂÂ¤,
ÃªÂ°ÂÃ­ÂÂÃ¬ÂÂ¬Ã«Â¥Â¼ Ã¬ÂÂ°Ã«Â°ÂÃ­ÂÂÃ«ÂÂ Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤Ã¬ÂÂÃ¬ÂÂ.

&#034;Ã«ÂÂÃ«Â§ÂÃ¬ÂÂ ÃªÂ°ÂÃ¬ÂÂ±Ã¬ÂÂ Ã­ÂÂ¥ÃªÂ¸Â°Ã«Â¡Â Ã­ÂÂÃ­ÂÂ Ã­ÂÂ´Ã«Â³Â´Ã¬ÂÂ¸Ã¬ÂÂ&#034;


-
Ã¬Â¤ÂÃ«Â¹Â Ã«ÂÂ 20ÃªÂ°ÂÃ¬Â§Â Ã¬ÂÂ´Ã¬ÂÂÃ¬ÂÂ Ã­ÂÂ¥Ã¬ÂÂ Ã¬ÂÂÃ­ÂÂ¥Ã­ÂÂÃ¬ÂÂÃªÂ³Â ,
Ã«Â³Â¸Ã¬ÂÂ¸Ã«Â§ÂÃ¬ÂÂ Ã¬ÂÂ¬Ã­ÂÂ©Ã¬ÂÂ Ã«ÂÂ¸Ã­ÂÂ¸Ã«Â¥Â¼ ÃªÂ¸Â°Ã«Â¡ÂÃ­ÂÂ©Ã«ÂÂÃ«ÂÂ¤.
Ã¬ÂÂÃ­ÂÂÃ¬ÂÂÃ«ÂÂ Ã¬ÂÂ¤Ã­ÂÂÃ¬ÂÂ¼Ã«Â¡Â Ã­ÂÂ¥Ã¬ÂÂ Ã«Â°Â°Ã­ÂÂ©Ã­ÂÂÃ¬ÂÂ¬
Ã«ÂÂÃ«Â§ÂÃ¬ÂÂ Ã­ÂÂ¥ÃªÂ¸Â°Ã«Â¥Â¼ Ã¬ÂÂÃ¬ÂÂ±Ã­ÂÂÃ¬ÂÂÃªÂ²Â Ã«ÂÂ©Ã«ÂÂÃ«ÂÂ¤.
-


Ã¢ÂÂ¢ Ã¬Â ÂÃ¬ÂÂÃ­ÂÂÃ«ÂÂ Ã¬ÂÂÃ­ÂÂÃ¬ÂÂ ÃªÂ°ÂÃ¬ÂÂ
Ã­ÂÂ¥Ã¬ÂÂ 1ÃªÂ°Â (30ml)
(Ã«Â¶ÂÃ­ÂÂ¥Ã«Â¥Â  20%Ã¬ÂÂ EDPÃ­ÂÂ¥Ã¬ÂÂÃ¬Â ÂÃ¬ÂÂ)

Ã¢ÂÂ¢ Ã¬ÂÂÃ¬ÂÂÃ¬ÂÂÃªÂ°Â : Ã¬ÂµÂÃ«ÂÂ 1Ã¬ÂÂÃªÂ°Â

Ã¢ÂÂ¢ Ã¬ÂÂÃªÂ°ÂÃ¬ÂÂ¸Ã¬ÂÂ : 1 ~ 4Ã«ÂªÂ

Ã¢ÂÂ¢ Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤Ã¬ÂÂÃªÂ°Â Ã­ÂÂÃ¬ÂÂÃªÂ°ÂÃ«ÂÂ¥Ã­ÂÂ©Ã«ÂÂÃ«ÂÂ¤.



Made in Italy Ã¬Â ÂÃ­ÂÂÃ¬ÂÂ ÃªÂ³Â ÃªÂ¸ÂÃ¬ÂÂ¤Ã«ÂÂ¬Ã¬ÂÂ´ Ã­ÂÂ¥Ã¬ÂÂÃ«Â³ÂÃ¬ÂÂ
Ã«Â³Â¸Ã¬ÂÂ¸Ã«Â§ÂÃ¬ÂÂ ÃªÂ°ÂÃ¬ÂÂ±Ã¬ÂÂ Ã«ÂÂÃ­ÂÂ Ã«ÂÂ¼Ã«Â²Â¨Ã«Â§Â Ã¬Â ÂÃ¬ÂÂ Ã­ÂÂ
Ã­ÂÂ¬Ã¬ÂÂ¥Ã­ÂÂÃ¬ÂÂ¬ ÃªÂ°ÂÃ¬Â Â¸ÃªÂ°ÂÃ¬ÂÂ­Ã«ÂÂÃ«ÂÂ¤.

Ã­ÂÂ¹Ã¬ÂÂ Ã¬Â¡Â°Ã­ÂÂ¥Ã¬ÂÂ´ Ã¬Â²ÂÃ¬ÂÂÃ¬ÂÂ´Ã«ÂÂ¼ ÃªÂ±Â±Ã¬Â ÂÃ«ÂÂÃ¬ÂÂ Ã«ÂÂ¤Ã«Â©Â´
Ã¬Â ÂÃªÂ°Â ÃªÂ³ÂÃ¬ÂÂÃ¬ÂÂ Ã¬Â°Â¨ÃªÂ·Â¼Ã¬Â°Â¨ÃªÂ·Â¼ Ã¬ÂÂÃ¬ÂÂ¸Ã­ÂÂ Ã¬ÂÂÃ«Â Â¤Ã«ÂÂÃ«Â¦Â´ÃªÂ»ÂÃ¬ÂÂ ^^
Ã¬ÂÂ¸Ã¬Â ÂÃ«ÂÂ Ã¬Â§Â Ã¬Â¦ÂÃªÂ±Â°Ã¬ÂÂ´ Ã«Â§ÂÃ¬ÂÂÃ«Â§Â ÃªÂ°ÂÃ¬Â§ÂÃªÂ³Â  Ã«Â°Â©Ã«Â¬Â¸ Ã­ÂÂ´Ã¬Â£Â¼Ã¬ÂÂ¸Ã¬ÂÂ!                   	
	                        </p>
	                       	<div id="classRecommandType1Area">
		                        <h4>#Ã¬ÂÂ´Ã«ÂÂ°Ã¬Â ÂÃ¬ÂÂ´ Ã¬Â¢ÂÃ¬ÂÂÃ¬ÂÂ.</h4>
		                        <ol></ol>
							</div>
							<div id="classRecommandType2Area">
		                        <h4>#Ã¬ÂÂ´Ã«ÂÂ°Ã«Â¶ÂÃ«ÂÂ¤ÃªÂ»Â Ã¬Â¶ÂÃ¬Â²ÂÃ­ÂÂ´Ã¬ÂÂ.</h4>
		                        <ol></ol>
		                    </div>
		                    <div id="classCompleteArea">
		                        <h4>#Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ Ã¬ÂÂÃ¬ÂÂ±Ã¬ÂÂ</h4>
		                        <div class="list-type-3">
		                            <ul id="completeClassImgList"></ul>
		                        </div>
	                        </div>	                        
	                        <div style="white-space:pre-line;">
	                        	Ã­ÂÂ¥Ã¬ÂÂ 30ml , 1ÃªÂ°ÂÃ«Â¥Â¼ Ã¬Â ÂÃ¬ÂÂÃ­ÂÂÃ¬ÂÂÃ«Â©Â° Ã¬Â ÂÃ¬ÂÂ©Ã«Â°ÂÃ¬ÂÂ¤Ã¬ÂÂ Ã­ÂÂ¬Ã¬ÂÂ¥Ã­ÂÂ´Ã«ÂÂÃ«Â¦Â½Ã«ÂÂÃ«ÂÂ¤.	                        	
	                       	</div>
						</div>
						<div class="class_curriculum" id="classCurriculumArea">
	                        <h4>Ã¬Â»Â¤Ã«Â¦Â¬Ã­ÂÂÃ«ÂÂ¼</h4>
	                        <div class="list-curriculum">
	                            <ul></ul>
	                        </div>
	                    </div>
	                    <div class="class_curriculum" id="classAdditionalSupportArea">
                            <h4>Ã¬Â¶ÂÃªÂ°Â Ã¬Â ÂÃªÂ³ÂµÃ¬ÂÂ¬Ã­ÂÂ­ Ã«Â°Â Ã¬ÂÂ Ã¬ÂÂÃ¬ÂÂ¬Ã­ÂÂ­</h4>                            
                        </div>
                        <div class="class_conven" id="classConvinienceArea">
	                        <h4>Ã­ÂÂ¸Ã¬ÂÂÃ¬ÂÂ¬Ã­ÂÂ­</h4>
	                        <ul class="info_text"></ul>
	                    </div>
	                    <div id="map" style="width:100%;height:400px;"></div>
	                    
	                    <div class="detail_gallery" id="classGalleryArea">
	                    	<h4>Ã¬ÂÂÃ­ÂÂÃªÂ°Â¤Ã«ÂÂ¬Ã«Â¦Â¬</h4>
                        	<div class="list-gallery">
                        		<ul></ul>
                        	</div>
	                    </div>
					</div>
					
					<!-- Ã­ÂÂÃªÂ¸Â° -->
					<div id="classReviewArea" class="tab_content" style="display:none;">
						<div class="review-header">
							<div class="review-count">0 ÃªÂ°ÂÃ¬ÂÂ Ã­ÂÂÃªÂ¸Â°</div>
							<a href="#" class="btn_write_review app-down-show-btn">
								<span class="icon_write"></span> Ã­ÂÂÃªÂ¸Â°Ã¬ÂÂÃ¬ÂÂ±Ã­ÂÂÃªÂ¸Â°
							</a>
						</div>
						<div class="review_nowrap">
							<div class="search-empty">
								<div class="empty-img"></div>
								<div class="empty-txt">Ã«ÂÂ±Ã«Â¡ÂÃ«ÂÂ Ã­ÂÂÃªÂ¸Â°ÃªÂ°Â Ã¬ÂÂÃ«ÂÂ¤Ã¬ÂÂ.</div>
							</div>
						</div>
						<div class="reply-list-area"></div>
					</div>
					
					<!-- Q&A -->
					<div id="classQnaArea" class="tab_content" style="display:none;">
						<div class="review-header">
							<div class="review-count">0 ÃªÂ°ÂÃ¬ÂÂ Ã«Â¬Â¸Ã¬ÂÂ</div>
							<a href="#" class="btn_write_review app-down-show-btn">
								<span class="icon_write"></span> Ã«Â¬Â¸Ã¬ÂÂÃ¬ÂÂÃ¬ÂÂ±Ã­ÂÂÃªÂ¸Â°
							</a>
						</div>
						<div class="review_nowrap">
							<div class="search-empty">
								<div class="empty-img"></div>
								<div class="empty-txt">Ã«ÂÂ±Ã«Â¡ÂÃ«ÂÂ Ã«Â¬Â¸Ã¬ÂÂÃªÂ°Â Ã¬ÂÂÃ«ÂÂ¤Ã¬ÂÂ.</div>
							</div>
						</div>
						<div class="qna-list-area"></div>
					</div>
					
					<!-- Ã­ÂÂÃ«Â¶Â Ã¬Â ÂÃ¬Â±Â -->
					<div id="classCancelInfoArea" class="tab_content" style="display:none;">
						<div class="cancel_info"></div>						
					</div>
				</div>
			</div>
			<div class="detail-right">
				<div class="sub-profile">
               		<div class="detail_teacher_info">
               			<div class="teacher_img" id="authorProfileImgArea">
               				<div class="img"></div>
               			</div>
               			<div class="teacher_txt">
	                        <div class="teacher_txt01">Ã¬ÂÂ¤Ã­ÂÂÃ«ÂÂÃ¬ÂÂ¤Ã«Â¯Â¸Ã¬ÂÂ¸Ã¬ÂÂ</div>
	                        <div class="teacher_txt02">Ã­ÂÂ¥Ã¬ÂÂ Ã«ÂÂÃ¬ÂÂÃ¬ÂÂ¸Ã­ÂÂÃªÂ³Â , Ã¬ÂºÂÃ«ÂÂ¤ÃªÂ³Â¼ Ã«Â¹ÂÃ«ÂÂÃ«Â¥Â¼ Ã«Â§ÂÃ«ÂÂ¤Ã¬ÂÂ´Ã¬ÂÂÃ°ÂÂ¤Â
Ã¢ÂÂªÃ¯Â¸ÂÃ¬Â¡Â°Ã­ÂÂ¥Ã¬ÂÂ¬Ã¬ÂÂÃªÂ²Â©Ã¬Â¦Â, Ã­ÂÂ¥Ã¬ÂÂÃ¬ÂÂÃ«ÂÂ°Ã¬ÂÂ´Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤
Ã¢ÂÂªÃ¯Â¸ÂÃ¬ÂºÂÃ«ÂÂ¤Ã¬ÂÂÃªÂ²Â©Ã¬Â¦Â, Ã¬ÂºÂÃ«ÂÂ¤ÃªÂ³Â¼ Ã«Â¹ÂÃ«ÂÂÃ¬ÂÂÃ«ÂÂ°Ã¬ÂÂ´Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤</div>
	                        <div class="teacher_txt03">
	                        	<a href="#" class="app-down-show-btn">Ã¬ÂÂÃªÂ°ÂÃ­ÂÂÃ«Â¡ÂÃ­ÂÂ</a>
	                        </div>
	                    </div>
               		</div>
               		<div class="detail_info01">
               			<ul class="info_text">
	                        <li class="info_location">Ã«Â§ÂÃ­ÂÂ¬ÃªÂµÂ¬ Ã«ÂÂÃªÂµÂÃ«ÂÂ</li>
	                        <li class="info_time" id="totalTime"></li>              	
	                        <li class="info_guest" id="scheduleExplainArea"></li>
	                        <li class="info_hash" id="hashTagList" style="display:none;"></li>		                        
	                    </ul>
               		</div>
               	</div>
               	<div class="sub-confirm">
               		<div class="class-confirm01">
               			<div class="text01">
	                        Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ Ã¬ÂÂ¼Ã¬Â Â 
	                        <span class="badge badge-primary">
								Ã¬ÂÂÃ«ÂÂ°Ã¬ÂÂ´
		                        
		                        
	                        </span>
	                    </div>
	                    <div class="text02">Ã¬ÂÂÃ¬ÂÂ½Ã¬ÂÂ¼Ã¬ÂÂ, Ã¬ÂÂ Ã¬Â²Â­ Ã¬ÂÂ¸Ã¬ÂÂÃ¬ÂÂ Ã¬ÂÂ Ã­ÂÂ Ã­ÂÂ Ã¬ÂÂ Ã¬Â²Â­Ã­ÂÂÃªÂ¸Â° Ã«Â²ÂÃ­ÂÂ¼Ã¬ÂÂ Ã«ÂÂÃ«ÂÂ¬Ã¬Â£Â¼Ã¬ÂÂ¸Ã¬ÂÂ.</div>
               		</div>
               				                
	                
	                	<div class="class-confirm02">
		                    <div class="btn-swip swip-date closed schedule-date-trigger">
		                        <a>Ã«ÂÂ Ã¬Â§ÂÃ¬ÂÂ Ã­ÂÂ</a>
		                    </div>
		                    <div class="class-date">
		                        <div class="calendar" id="scheduleCalendar"></div>
		                        <div class="calendar-info">
		                            <div class="c-info c-info01">Ã¬ÂÂ¤Ã«ÂÂ</div>
		                            <div class="c-info c-info02">Ã¬ÂÂ Ã­ÂÂÃªÂ°ÂÃ«ÂÂ¥Ã«ÂÂ Ã¬Â§Â</div>
		                            <div class="c-info c-info03">Ã¬ÂÂ Ã­ÂÂÃ­ÂÂ Ã«ÂÂ Ã¬Â§Â</div>
		                        </div>
		                    </div>
		                </div>
	                	<div class="class-confirm02">
		                    <div class="btn-swip swip-time schedule-time-trigger">
		                        <a>Ã¬ÂÂÃªÂ°ÂÃ¬ÂÂ Ã­ÂÂ</a>
		                    </div>
		                    <div class="class-time">
		                        <ul class="time-list" id="scheduleList"></ul>
		                    </div>
		                </div>
	                
	                
	                <div class="class-confirm03">
	                    <div class="c03-count">
	                        <a href="#" id="num-sub">-</a>
	                        <input type="text" id="quantity" value="1" class="only-number"/>
	                        <a href="#" id="num-add">+</a>
	                    </div>
	                    <input type="hidden" id="classRealPrice" value='40000'> 
	                    <div class="c03-charge" id="price"></div>
	                </div>
	                <div class="class-confirm04">
	                    <a href="#" class="app-down-show-btn">ì ì²­íê¸°</a>
	                </div>
               	</div>
			</div>
        </div>
        
        <div class="main-location"></div>
	
		<div id="classAuthorOtherClassArea" class="list-box hide">
	    	<div class="list-header">
	            <h2>Ã¬ÂÂÃªÂ°ÂÃ¬ÂÂ Ã«ÂÂ¤Ã«Â¥Â¸ Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤</h2>
	        </div>
	        <div class="list-type-1 horizontal-swipe-list-area">
	            <div class="swiper swiper-container">
	            	<div class="swiper-wrapper">
	            		<div class="list-loading"><div class="loading-img"></div></div>
	            	</div>
	            </div>
	        </div>
	    </div>
	</main>
	
<footer id="footer" class="main-footer">
	<div class="">
		<div class="contents">
			<div class="footer-info">
				<div class="box">
					<p>(Ã¬Â£Â¼)Ã¬ÂÂÃ¬ÂÂ¨Ã«ÂÂ¹ Ã¬Â»Â´Ã­ÂÂ¼Ã«ÂÂ</p>
				</div>
				<div class="box">
					<p><span>Ã¬ÂÂ¬Ã¬ÂÂÃ¬ÂÂÃ«ÂÂ±Ã«Â¡ÂÃ«Â²ÂÃ­ÂÂ¸ : 588-87-00966</span></p>
					<p><span>Ã«ÂÂÃ­ÂÂ : Ã¬Â ÂÃ«ÂªÂÃ¬ÂÂ</span></p>
				</div>
				<div class="box">
					<p><span>Ã­ÂÂµÃ¬ÂÂ Ã­ÂÂÃ«Â§Â¤Ã¬ÂÂ : Ã¬ÂÂ ÃªÂ³Â Ã«Â²ÂÃ­ÂÂ¸ Ã¬Â Â2018-Ã¬ÂÂÃ¬ÂÂ¸Ã«Â§ÂÃ­ÂÂ¬-1192Ã­ÂÂ¸</span></p>
				</div>
				<div class="box">
					<p><span>Ã¬ÂÂÃ¬ÂÂ¸Ã­ÂÂ¹Ã«Â³ÂÃ¬ÂÂ Ã«Â§ÂÃ­ÂÂ¬ÃªÂµÂ¬ Ã«ÂÂÃªÂµÂÃ«ÂÂ 203-30Ã«Â²ÂÃ¬Â§Â 3Ã¬Â¸Âµ</span></p>
				</div>
				<div class="copyright">Copyright 2018. SSSDC. All rights reserved.</div>
			</div>
		</div>
	</div>
	<div class="cs-info">
		<div class="contents">
			<ul>
				<li>
					<a href="/main/acceptTerms.do?num=2" target="_blank" rel="noopener" title="Ã¬ÂÂÃ«Â¹ÂÃ¬ÂÂ¤ Ã¬ÂÂ´Ã¬ÂÂ©Ã¬ÂÂ½ÃªÂ´Â">Ã¬ÂÂÃ«Â¹ÂÃ¬ÂÂ¤ Ã¬ÂÂ´Ã¬ÂÂ©Ã¬ÂÂ½ÃªÂ´Â</a> 
				</li>
				<li>
					<a href="/main/acceptTerms.do?num=3" target="_blank" rel="noopener" title="ÃªÂ°ÂÃ¬ÂÂ¸Ã¬Â ÂÃ«Â³Â´Ã¬Â²ÂÃ«Â¦Â¬Ã«Â°Â©Ã¬Â¹Â¨">ÃªÂ°ÂÃ¬ÂÂ¸Ã¬Â ÂÃ«Â³Â´Ã¬Â²ÂÃ«Â¦Â¬Ã«Â°Â©Ã¬Â¹Â¨</a> 
				</li>
				<li>
					<a href="//www.sssd.co.kr/m/notice/noticeList.do?idx=1" target="_blank" rel="noopener" title="ÃªÂ³ÂµÃ¬Â§ÂÃ¬ÂÂ¬Ã­ÂÂ­">ÃªÂ³ÂµÃ¬Â§ÂÃ¬ÂÂ¬Ã­ÂÂ­</a> 
				</li>
				<li>
					<div class="affiliate-toggld-dropdown dropdown">
						<button class="dropdown-toggle" type="button" id="affiliateToggleBtn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							Ã¬ÂÂ¼Ã«Â°Â / Ã¬Â ÂÃ­ÂÂ´ Ã«Â¬Â¸Ã¬ÂÂ <i class="xi-angle-down"></i>
						</button>
						<ul class="dropdown-menu" aria-labelledby="affiliateToggleBtn">
							<li class="dropdown-item">
								<a href="mailto:help@sssdc.co.kr" rel="noopener" title="Ã¬ÂÂ¼Ã«Â°ÂÃ«Â¬Â¸Ã¬ÂÂ Ã«Â©ÂÃ¬ÂÂ¼ Ã«Â³Â´Ã«ÂÂ´ÃªÂ¸Â°">Ã¬ÂÂ¼Ã«Â°ÂÃ«Â¬Â¸Ã¬ÂÂ help@sssdc.co.kr</a>
							</li>
							<li class="dropdown-item">
								<a href="mailto:yoonjae@sssdc.co.kr" rel="noopener" title="Ã¬Â ÂÃ­ÂÂ´Ã«Â¬Â¸Ã¬ÂÂ Ã«Â©ÂÃ¬ÂÂ¼ Ã«Â³Â´Ã«ÂÂ´ÃªÂ¸Â°">Ã¬Â ÂÃ­ÂÂ´Ã«Â¬Â¸Ã¬ÂÂ yoonjae@sssdc.co.kr</a>
							</li>
						</ul>
					</div>
				</li>
			</ul>
			<div>
				<div>
					<span>ÃªÂ³Â ÃªÂ°ÂÃ¬ÂÂ¼Ã­ÂÂ° <a href="tel:1800-9764" title="Ã¬ÂÂÃ¬ÂÂ¨Ã«ÂÂ¹ ÃªÂ³Â ÃªÂ°ÂÃ¬ÂÂ¼Ã­ÂÂ° Ã¬Â ÂÃ­ÂÂÃ­ÂÂÃªÂ¸Â°" rel="noopener">1800-9764</a></span>
				</div>
				<div class="ico-instagram ico">
					<a href="https://www.instagram.com/sssdc_ins" target="_blank" title="Ã¬ÂÂÃ¬ÂÂ¨Ã«ÂÂ¹ Ã¬ÂÂ¸Ã¬ÂÂ¤Ã­ÂÂÃªÂ·Â¸Ã«ÂÂ¨" rel="noopener">Ã¬ÂÂÃ¬ÂÂ¨Ã«ÂÂ¹ Ã¬ÂÂ¸Ã¬ÂÂ¤Ã­ÂÂÃªÂ·Â¸Ã«ÂÂ¨</a>
				</div>
				<div class="ico-naver-blog ico">
					<a href="https://blog.naver.com/town_class" target="_blank" title="Ã¬ÂÂÃ¬ÂÂ¨Ã«ÂÂ¹ Ã«ÂÂ¤Ã¬ÂÂ´Ã«Â²Â Ã«Â¸ÂÃ«Â¡ÂÃªÂ·Â¸" rel="noopener">Ã¬ÂÂÃ¬ÂÂ¨Ã«ÂÂ¹ Ã«ÂÂ¤Ã¬ÂÂ´Ã«Â²Â Ã«Â¸ÂÃ«Â¡ÂÃªÂ·Â¸</a>
				</div>
			</div>
		</div>
	</div>
</footer>
<script>
(function(window, document, $){
	'use strict';
	var footerObj = {}, util = somssiCommonUtil;
	
	footerObj.init = function(){
		footerObj.eventHandlerMapping();
	};
	
	footerObj.eventHandlerMapping = function(){
		$('.affiliate-toggld-dropdown').on('show.bs.dropdown', function () {
			$('#affiliateToggleBtn i').removeClass('xi-angle-up, xi-angle-down').addClass('xi-angle-up');
		});
		
		$('.affiliate-toggld-dropdown').on('hide.bs.dropdown', function () {
			$('#affiliateToggleBtn i').removeClass('xi-angle-up, xi-angle-down').addClass('xi-angle-down');
		});
	};
	
	$(function(){
		footerObj.init();
	});
})(window, document, jQuery !== undefined  ? jQuery : $);	
</script>
	
	<div class="modal fade center-scale" id="appDownModal" tabindex="-1" role="dialog" aria-labelledby="appDownModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content-wrapper">
				<div class="modal-content">
					<div class="modal-header clearfix text-left">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					</div>
					<div class="modal-body modal-appdownload">
						<div class="appdownload-text01">Ã¬ÂÂÃ¬ÂÂ¨Ã«ÂÂ¹, Ã«ÂÂ ÃªÂ°ÂÃ­ÂÂ¸Ã­ÂÂÃªÂ²Â Ã¬ÂÂ±Ã¬ÂÂ¼Ã«Â¡Â Ã«Â§ÂÃ«ÂÂÃ«Â³Â´Ã¬ÂÂ¸Ã¬ÂÂ!</div>
						<div class="appdownload-text02">Ã¬ÂÂ°Ã«Â¦Â¬Ã«ÂÂÃ«ÂÂ¤ ÃªÂ³ÂµÃ«Â°Â© Ã«Â°Â Ã­ÂÂ´Ã«ÂÂÃ¬ÂÂ¤ Ã¬Â ÂÃ«Â³Â´Ã«Â¥Â¼ Ã­ÂÂÃ«ÂÂÃ¬ÂÂ Ã«Â¹ÂÃªÂµÂÃ­ÂÂÃªÂ³Â  ÃªÂ²Â°Ã¬Â ÂÃªÂ¹ÂÃ¬Â§Â!</div>
						<div class="app-sms-box">
							<div class="app-sms-input">
								<input type="tel" class="numbers phone-number" placeholder="Ã­ÂÂ´Ã«ÂÂÃ­ÂÂ° Ã«Â²ÂÃ­ÂÂ¸Ã«Â¥Â¼ Ã¬ÂÂÃ«Â Â¥Ã­ÂÂÃ¬ÂÂ¸Ã¬ÂÂ.">
							</div>
							<div class="app-sms-btn">
								<a class="sms-send-btn">SMS Ã¬Â ÂÃ¬ÂÂ¡</a>
							</div>
						</div>
						<div class="appstore-btn-list-area">
							<a href="https://ref.ad-brix.com/v1/referrallink?ak=657514671&amp;ck=9348158" class="btn aos-btn" target="_blank" title="ÃªÂµÂ¬ÃªÂ¸ÂÃ­ÂÂÃ«Â ÂÃ¬ÂÂ´ Ã¬ÂÂ¤Ã­ÂÂ Ã¬ÂÂ´ Ã¬ÂÂ´Ã«ÂÂ" rel="noopener"></a>
							<a href="https://ref.ad-brix.com/v1/referrallink?ak=657514671&amp;ck=3498006" class="btn ios-btn" target="_blank" title="Ã¬ÂÂ±Ã¬ÂÂ¤Ã­ÂÂ Ã¬ÂÂ´ Ã¬ÂÂ´Ã«ÂÂ" rel="noopener"></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal-image" id="galleryViewModal">
		<div class="image-container swiper swiper-container">
			<div class="swiper-wrapper"></div>
		</div>
		<div class="image-pagination"></div>		
		<div class="image-button-next swiper-button-next"></div>
		<div class="image-button-prev swiper-button-prev"></div>
		<div class="image-close">
			<a class="close">Ã«ÂÂ«ÃªÂ¸Â°</a>
		</div>
	</div>
</body>
</html>
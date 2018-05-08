<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<!DOCTYPE html>
<html>
<head>
	<%@ include file="/WEB-INF/views/admin/path.jsp"%>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>${settings.title} - 字体图标</title>

    <meta name="keywords" content="${settings.keywords}">
    <meta name="description" content="${settings.keywords}">

    <link rel="shortcut icon" href="favicon.ico"> 
    <link href="static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">

    <link href="static/css/animate.min.css" rel="stylesheet">
    <link href="static/css/style.min862f.css?v=4.1.0" rel="stylesheet">

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-3">
                <div class="ibox float-e-margins">
                    <h2>Font Awesome 4.4.0</h2> 字体图标的最佳集合。提供可伸缩矢量图标，可以立即进行定制大小、颜色、阴影，所有都可以用CSS样式来完成。
                </div>
            </div>
            <div class="col-sm-9">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>所有图标 <small class="m-l-sm">所有图标集合 - <a target="_blank" href="http://fortawesome.github.io/Font-Awesome/icons/">Font Awesome</a> </small></h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="icons.html#">
                                <i class="fa fa-wrench"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content icons-box">
                        <section id="new">
                            <h2 class="page-header">4.4版新增的66个图标</h2>


                            <div class="row fontawesome-icon-list">

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#500px"><i class="fa fa-500px"></i> 500px</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#amazon"><i class="fa fa-amazon"></i> amazon</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#balance-scale"><i class="fa fa-balance-scale"></i> balance-scale</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#battery-empty"><i class="fa fa-battery-0"></i> battery-0 <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#battery-quarter"><i class="fa fa-battery-1"></i> battery-1 <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#battery-half"><i class="fa fa-battery-2"></i> battery-2 <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#battery-three-quarters"><i class="fa fa-battery-3"></i> battery-3 <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#battery-full"><i class="fa fa-battery-4"></i> battery-4 <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#battery-empty"><i class="fa fa-battery-empty"></i> battery-empty</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#battery-full"><i class="fa fa-battery-full"></i> battery-full</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#battery-half"><i class="fa fa-battery-half"></i> battery-half</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#battery-quarter"><i class="fa fa-battery-quarter"></i> battery-quarter</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#battery-three-quarters"><i class="fa fa-battery-three-quarters"></i> battery-three-quarters</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#black-tie"><i class="fa fa-black-tie"></i> black-tie</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#calendar-check-o"><i class="fa fa-calendar-check-o"></i> calendar-check-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#calendar-minus-o"><i class="fa fa-calendar-minus-o"></i> calendar-minus-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#calendar-plus-o"><i class="fa fa-calendar-plus-o"></i> calendar-plus-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#calendar-times-o"><i class="fa fa-calendar-times-o"></i> calendar-times-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#cc-diners-club"><i class="fa fa-cc-diners-club"></i> cc-diners-club</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#cc-jcb"><i class="fa fa-cc-jcb"></i> cc-jcb</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#chrome"><i class="fa fa-chrome"></i> chrome</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#clone"><i class="fa fa-clone"></i> clone</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#commenting"><i class="fa fa-commenting"></i> commenting</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#commenting-o"><i class="fa fa-commenting-o"></i> commenting-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#contao"><i class="fa fa-contao"></i> contao</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#creative-commons"><i class="fa fa-creative-commons"></i> creative-commons</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#expeditedssl"><i class="fa fa-expeditedssl"></i> expeditedssl</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#firefox"><i class="fa fa-firefox"></i> firefox</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#fonticons"><i class="fa fa-fonticons"></i> fonticons</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#genderless"><i class="fa fa-genderless"></i> genderless</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#get-pocket"><i class="fa fa-get-pocket"></i> get-pocket</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#gg"><i class="fa fa-gg"></i> gg</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#gg-circle"><i class="fa fa-gg-circle"></i> gg-circle</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hand-rock-o"><i class="fa fa-hand-grab-o"></i> hand-grab-o <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hand-lizard-o"><i class="fa fa-hand-lizard-o"></i> hand-lizard-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hand-paper-o"><i class="fa fa-hand-paper-o"></i> hand-paper-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hand-peace-o"><i class="fa fa-hand-peace-o"></i> hand-peace-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hand-pointer-o"><i class="fa fa-hand-pointer-o"></i> hand-pointer-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hand-rock-o"><i class="fa fa-hand-rock-o"></i> hand-rock-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hand-scissors-o"><i class="fa fa-hand-scissors-o"></i> hand-scissors-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hand-spock-o"><i class="fa fa-hand-spock-o"></i> hand-spock-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hand-paper-o"><i class="fa fa-hand-stop-o"></i> hand-stop-o <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hourglass"><i class="fa fa-hourglass"></i> hourglass</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hourglass-start"><i class="fa fa-hourglass-1"></i> hourglass-1 <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hourglass-half"><i class="fa fa-hourglass-2"></i> hourglass-2 <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hourglass-end"><i class="fa fa-hourglass-3"></i> hourglass-3 <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hourglass-end"><i class="fa fa-hourglass-end"></i> hourglass-end</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hourglass-half"><i class="fa fa-hourglass-half"></i> hourglass-half</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hourglass-o"><i class="fa fa-hourglass-o"></i> hourglass-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hourglass-start"><i class="fa fa-hourglass-start"></i> hourglass-start</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#houzz"><i class="fa fa-houzz"></i> houzz</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#i-cursor"><i class="fa fa-i-cursor"></i> i-cursor</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#industry"><i class="fa fa-industry"></i> industry</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#internet-explorer"><i class="fa fa-internet-explorer"></i> internet-explorer</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#map"><i class="fa fa-map"></i> map</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#map-o"><i class="fa fa-map-o"></i> map-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#map-pin"><i class="fa fa-map-pin"></i> map-pin</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#map-signs"><i class="fa fa-map-signs"></i> map-signs</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#mouse-pointer"><i class="fa fa-mouse-pointer"></i> mouse-pointer</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#object-group"><i class="fa fa-object-group"></i> object-group</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#object-ungroup"><i class="fa fa-object-ungroup"></i> object-ungroup</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#odnoklassniki"><i class="fa fa-odnoklassniki"></i> odnoklassniki</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#odnoklassniki-square"><i class="fa fa-odnoklassniki-square"></i> odnoklassniki-square</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#opencart"><i class="fa fa-opencart"></i> opencart</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#opera"><i class="fa fa-opera"></i> opera</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#optin-monster"><i class="fa fa-optin-monster"></i> optin-monster</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#registered"><i class="fa fa-registered"></i> registered</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#safari"><i class="fa fa-safari"></i> safari</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#sticky-note"><i class="fa fa-sticky-note"></i> sticky-note</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#sticky-note-o"><i class="fa fa-sticky-note-o"></i> sticky-note-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#television"><i class="fa fa-television"></i> television</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#trademark"><i class="fa fa-trademark"></i> trademark</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#tripadvisor"><i class="fa fa-tripadvisor"></i> tripadvisor</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#television"><i class="fa fa-tv"></i> tv <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#vimeo"><i class="fa fa-vimeo"></i> vimeo</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#wikipedia-w"><i class="fa fa-wikipedia-w"></i> wikipedia-w</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#y-combinator"><i class="fa fa-y-combinator"></i> y-combinator</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#y-combinator"><i class="fa fa-yc"></i> yc <span class="text-muted">(alias)</span></a></div>

                            </div>

                        </section>
                        <section id="web-application">
                            <h2 class="page-header">Web应用程序图标</h2>

                            <div class="row fontawesome-icon-list">



                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#adjust"><i class="fa fa-adjust"></i> adjust</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#anchor"><i class="fa fa-anchor"></i> anchor</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#archive"><i class="fa fa-archive"></i> archive</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#area-chart"><i class="fa fa-area-chart"></i> area-chart</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#arrows"><i class="fa fa-arrows"></i> arrows</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#arrows-h"><i class="fa fa-arrows-h"></i> arrows-h</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#arrows-v"><i class="fa fa-arrows-v"></i> arrows-v</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#asterisk"><i class="fa fa-asterisk"></i> asterisk</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#at"><i class="fa fa-at"></i> at</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#car"><i class="fa fa-automobile"></i> automobile <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#balance-scale"><i class="fa fa-balance-scale"></i> balance-scale</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#ban"><i class="fa fa-ban"></i> ban</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#university"><i class="fa fa-bank"></i> bank <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#bar-chart"><i class="fa fa-bar-chart"></i> bar-chart</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#bar-chart"><i class="fa fa-bar-chart-o"></i> bar-chart-o <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#barcode"><i class="fa fa-barcode"></i> barcode</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#bars"><i class="fa fa-bars"></i> bars</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#battery-empty"><i class="fa fa-battery-0"></i> battery-0 <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#battery-quarter"><i class="fa fa-battery-1"></i> battery-1 <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#battery-half"><i class="fa fa-battery-2"></i> battery-2 <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#battery-three-quarters"><i class="fa fa-battery-3"></i> battery-3 <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#battery-full"><i class="fa fa-battery-4"></i> battery-4 <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#battery-empty"><i class="fa fa-battery-empty"></i> battery-empty</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#battery-full"><i class="fa fa-battery-full"></i> battery-full</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#battery-half"><i class="fa fa-battery-half"></i> battery-half</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#battery-quarter"><i class="fa fa-battery-quarter"></i> battery-quarter</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#battery-three-quarters"><i class="fa fa-battery-three-quarters"></i> battery-three-quarters</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#bed"><i class="fa fa-bed"></i> bed</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#beer"><i class="fa fa-beer"></i> beer</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#bell"><i class="fa fa-bell"></i> bell</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#bell-o"><i class="fa fa-bell-o"></i> bell-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#bell-slash"><i class="fa fa-bell-slash"></i> bell-slash</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#bell-slash-o"><i class="fa fa-bell-slash-o"></i> bell-slash-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#bicycle"><i class="fa fa-bicycle"></i> bicycle</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#binoculars"><i class="fa fa-binoculars"></i> binoculars</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#birthday-cake"><i class="fa fa-birthday-cake"></i> birthday-cake</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#bolt"><i class="fa fa-bolt"></i> bolt</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#bomb"><i class="fa fa-bomb"></i> bomb</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#book"><i class="fa fa-book"></i> book</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#bookmark"><i class="fa fa-bookmark"></i> bookmark</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#bookmark-o"><i class="fa fa-bookmark-o"></i> bookmark-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#briefcase"><i class="fa fa-briefcase"></i> briefcase</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#bug"><i class="fa fa-bug"></i> bug</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#building"><i class="fa fa-building"></i> building</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#building-o"><i class="fa fa-building-o"></i> building-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#bullhorn"><i class="fa fa-bullhorn"></i> bullhorn</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#bullseye"><i class="fa fa-bullseye"></i> bullseye</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#bus"><i class="fa fa-bus"></i> bus</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#taxi"><i class="fa fa-cab"></i> cab <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#calculator"><i class="fa fa-calculator"></i> calculator</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#calendar"><i class="fa fa-calendar"></i> calendar</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#calendar-check-o"><i class="fa fa-calendar-check-o"></i> calendar-check-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#calendar-minus-o"><i class="fa fa-calendar-minus-o"></i> calendar-minus-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#calendar-o"><i class="fa fa-calendar-o"></i> calendar-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#calendar-plus-o"><i class="fa fa-calendar-plus-o"></i> calendar-plus-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#calendar-times-o"><i class="fa fa-calendar-times-o"></i> calendar-times-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#camera"><i class="fa fa-camera"></i> camera</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#camera-retro"><i class="fa fa-camera-retro"></i> camera-retro</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#car"><i class="fa fa-car"></i> car</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#caret-square-o-down"><i class="fa fa-caret-square-o-down"></i> caret-square-o-down</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#caret-square-o-left"><i class="fa fa-caret-square-o-left"></i> caret-square-o-left</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#caret-square-o-right"><i class="fa fa-caret-square-o-right"></i> caret-square-o-right</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#caret-square-o-up"><i class="fa fa-caret-square-o-up"></i> caret-square-o-up</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#cart-arrow-down"><i class="fa fa-cart-arrow-down"></i> cart-arrow-down</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#cart-plus"><i class="fa fa-cart-plus"></i> cart-plus</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#cc"><i class="fa fa-cc"></i> cc</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#certificate"><i class="fa fa-certificate"></i> certificate</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#check"><i class="fa fa-check"></i> check</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#check-circle"><i class="fa fa-check-circle"></i> check-circle</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#check-circle-o"><i class="fa fa-check-circle-o"></i> check-circle-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#check-square"><i class="fa fa-check-square"></i> check-square</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#check-square-o"><i class="fa fa-check-square-o"></i> check-square-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#child"><i class="fa fa-child"></i> child</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#circle"><i class="fa fa-circle"></i> circle</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#circle-o"><i class="fa fa-circle-o"></i> circle-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#circle-o-notch"><i class="fa fa-circle-o-notch"></i> circle-o-notch</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#circle-thin"><i class="fa fa-circle-thin"></i> circle-thin</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#clock-o"><i class="fa fa-clock-o"></i> clock-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#clone"><i class="fa fa-clone"></i> clone</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#times"><i class="fa fa-close"></i> close <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#cloud"><i class="fa fa-cloud"></i> cloud</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#cloud-download"><i class="fa fa-cloud-download"></i> cloud-download</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#cloud-upload"><i class="fa fa-cloud-upload"></i> cloud-upload</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#code"><i class="fa fa-code"></i> code</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#code-fork"><i class="fa fa-code-fork"></i> code-fork</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#coffee"><i class="fa fa-coffee"></i> coffee</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#cog"><i class="fa fa-cog"></i> cog</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#cogs"><i class="fa fa-cogs"></i> cogs</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#comment"><i class="fa fa-comment"></i> comment</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#comment-o"><i class="fa fa-comment-o"></i> comment-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#commenting"><i class="fa fa-commenting"></i> commenting</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#commenting-o"><i class="fa fa-commenting-o"></i> commenting-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#comments"><i class="fa fa-comments"></i> comments</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#comments-o"><i class="fa fa-comments-o"></i> comments-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#compass"><i class="fa fa-compass"></i> compass</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#copyright"><i class="fa fa-copyright"></i> copyright</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#creative-commons"><i class="fa fa-creative-commons"></i> creative-commons</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#credit-card"><i class="fa fa-credit-card"></i> credit-card</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#crop"><i class="fa fa-crop"></i> crop</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#crosshairs"><i class="fa fa-crosshairs"></i> crosshairs</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#cube"><i class="fa fa-cube"></i> cube</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#cubes"><i class="fa fa-cubes"></i> cubes</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#cutlery"><i class="fa fa-cutlery"></i> cutlery</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#tachometer"><i class="fa fa-dashboard"></i> dashboard <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#database"><i class="fa fa-database"></i> database</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#desktop"><i class="fa fa-desktop"></i> desktop</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#diamond"><i class="fa fa-diamond"></i> diamond</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#dot-circle-o"><i class="fa fa-dot-circle-o"></i> dot-circle-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#download"><i class="fa fa-download"></i> download</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#pencil-square-o"><i class="fa fa-edit"></i> edit <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#ellipsis-h"><i class="fa fa-ellipsis-h"></i> ellipsis-h</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#ellipsis-v"><i class="fa fa-ellipsis-v"></i> ellipsis-v</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#envelope"><i class="fa fa-envelope"></i> envelope</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#envelope-o"><i class="fa fa-envelope-o"></i> envelope-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#envelope-square"><i class="fa fa-envelope-square"></i> envelope-square</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#eraser"><i class="fa fa-eraser"></i> eraser</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#exchange"><i class="fa fa-exchange"></i> exchange</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#exclamation"><i class="fa fa-exclamation"></i> exclamation</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#exclamation-circle"><i class="fa fa-exclamation-circle"></i> exclamation-circle</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#exclamation-triangle"><i class="fa fa-exclamation-triangle"></i> exclamation-triangle</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#external-link"><i class="fa fa-external-link"></i> external-link</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#external-link-square"><i class="fa fa-external-link-square"></i> external-link-square</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#eye"><i class="fa fa-eye"></i> eye</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#eye-slash"><i class="fa fa-eye-slash"></i> eye-slash</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#eyedropper"><i class="fa fa-eyedropper"></i> eyedropper</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#fax"><i class="fa fa-fax"></i> fax</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#rss"><i class="fa fa-feed"></i> feed <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#female"><i class="fa fa-female"></i> female</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#fighter-jet"><i class="fa fa-fighter-jet"></i> fighter-jet</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#file-archive-o"><i class="fa fa-file-archive-o"></i> file-archive-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#file-audio-o"><i class="fa fa-file-audio-o"></i> file-audio-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#file-code-o"><i class="fa fa-file-code-o"></i> file-code-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#file-excel-o"><i class="fa fa-file-excel-o"></i> file-excel-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#file-image-o"><i class="fa fa-file-image-o"></i> file-image-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#file-video-o"><i class="fa fa-file-movie-o"></i> file-movie-o <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#file-pdf-o"><i class="fa fa-file-pdf-o"></i> file-pdf-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#file-image-o"><i class="fa fa-file-photo-o"></i> file-photo-o <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#file-image-o"><i class="fa fa-file-picture-o"></i> file-picture-o <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#file-powerpoint-o"><i class="fa fa-file-powerpoint-o"></i> file-powerpoint-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#file-audio-o"><i class="fa fa-file-sound-o"></i> file-sound-o <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#file-video-o"><i class="fa fa-file-video-o"></i> file-video-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#file-word-o"><i class="fa fa-file-word-o"></i> file-word-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#file-archive-o"><i class="fa fa-file-zip-o"></i> file-zip-o <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#film"><i class="fa fa-film"></i> film</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#filter"><i class="fa fa-filter"></i> filter</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#fire"><i class="fa fa-fire"></i> fire</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#fire-extinguisher"><i class="fa fa-fire-extinguisher"></i> fire-extinguisher</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#flag"><i class="fa fa-flag"></i> flag</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#flag-checkered"><i class="fa fa-flag-checkered"></i> flag-checkered</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#flag-o"><i class="fa fa-flag-o"></i> flag-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#bolt"><i class="fa fa-flash"></i> flash <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#flask"><i class="fa fa-flask"></i> flask</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#folder"><i class="fa fa-folder"></i> folder</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#folder-o"><i class="fa fa-folder-o"></i> folder-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#folder-open"><i class="fa fa-folder-open"></i> folder-open</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#folder-open-o"><i class="fa fa-folder-open-o"></i> folder-open-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#frown-o"><i class="fa fa-frown-o"></i> frown-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#futbol-o"><i class="fa fa-futbol-o"></i> futbol-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#gamepad"><i class="fa fa-gamepad"></i> gamepad</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#gavel"><i class="fa fa-gavel"></i> gavel</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#cog"><i class="fa fa-gear"></i> gear <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#cogs"><i class="fa fa-gears"></i> gears <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#gift"><i class="fa fa-gift"></i> gift</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#glass"><i class="fa fa-glass"></i> glass</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#globe"><i class="fa fa-globe"></i> globe</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#graduation-cap"><i class="fa fa-graduation-cap"></i> graduation-cap</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#users"><i class="fa fa-group"></i> group <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hand-rock-o"><i class="fa fa-hand-grab-o"></i> hand-grab-o <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hand-lizard-o"><i class="fa fa-hand-lizard-o"></i> hand-lizard-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hand-paper-o"><i class="fa fa-hand-paper-o"></i> hand-paper-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hand-peace-o"><i class="fa fa-hand-peace-o"></i> hand-peace-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hand-pointer-o"><i class="fa fa-hand-pointer-o"></i> hand-pointer-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hand-rock-o"><i class="fa fa-hand-rock-o"></i> hand-rock-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hand-scissors-o"><i class="fa fa-hand-scissors-o"></i> hand-scissors-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hand-spock-o"><i class="fa fa-hand-spock-o"></i> hand-spock-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hand-paper-o"><i class="fa fa-hand-stop-o"></i> hand-stop-o <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hdd-o"><i class="fa fa-hdd-o"></i> hdd-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#headphones"><i class="fa fa-headphones"></i> headphones</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#heart"><i class="fa fa-heart"></i> heart</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#heart-o"><i class="fa fa-heart-o"></i> heart-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#heartbeat"><i class="fa fa-heartbeat"></i> heartbeat</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#history"><i class="fa fa-history"></i> history</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#home"><i class="fa fa-home"></i> home</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#bed"><i class="fa fa-hotel"></i> hotel <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hourglass"><i class="fa fa-hourglass"></i> hourglass</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hourglass-start"><i class="fa fa-hourglass-1"></i> hourglass-1 <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hourglass-half"><i class="fa fa-hourglass-2"></i> hourglass-2 <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hourglass-end"><i class="fa fa-hourglass-3"></i> hourglass-3 <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hourglass-end"><i class="fa fa-hourglass-end"></i> hourglass-end</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hourglass-half"><i class="fa fa-hourglass-half"></i> hourglass-half</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hourglass-o"><i class="fa fa-hourglass-o"></i> hourglass-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hourglass-start"><i class="fa fa-hourglass-start"></i> hourglass-start</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#i-cursor"><i class="fa fa-i-cursor"></i> i-cursor</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#picture-o"><i class="fa fa-image"></i> image <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#inbox"><i class="fa fa-inbox"></i> inbox</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#industry"><i class="fa fa-industry"></i> industry</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#info"><i class="fa fa-info"></i> info</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#info-circle"><i class="fa fa-info-circle"></i> info-circle</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#university"><i class="fa fa-institution"></i> institution <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#key"><i class="fa fa-key"></i> key</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#keyboard-o"><i class="fa fa-keyboard-o"></i> keyboard-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#language"><i class="fa fa-language"></i> language</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#laptop"><i class="fa fa-laptop"></i> laptop</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#leaf"><i class="fa fa-leaf"></i> leaf</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#gavel"><i class="fa fa-legal"></i> legal <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#lemon-o"><i class="fa fa-lemon-o"></i> lemon-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#level-down"><i class="fa fa-level-down"></i> level-down</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#level-up"><i class="fa fa-level-up"></i> level-up</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#life-ring"><i class="fa fa-life-bouy"></i> life-bouy <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#life-ring"><i class="fa fa-life-buoy"></i> life-buoy <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#life-ring"><i class="fa fa-life-ring"></i> life-ring</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#life-ring"><i class="fa fa-life-saver"></i> life-saver <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#lightbulb-o"><i class="fa fa-lightbulb-o"></i> lightbulb-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#line-chart"><i class="fa fa-line-chart"></i> line-chart</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#location-arrow"><i class="fa fa-location-arrow"></i> location-arrow</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#lock"><i class="fa fa-lock"></i> lock</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#magic"><i class="fa fa-magic"></i> magic</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#magnet"><i class="fa fa-magnet"></i> magnet</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#share"><i class="fa fa-mail-forward"></i> mail-forward <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#reply"><i class="fa fa-mail-reply"></i> mail-reply <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#reply-all"><i class="fa fa-mail-reply-all"></i> mail-reply-all <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#male"><i class="fa fa-male"></i> male</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#map"><i class="fa fa-map"></i> map</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#map-marker"><i class="fa fa-map-marker"></i> map-marker</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#map-o"><i class="fa fa-map-o"></i> map-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#map-pin"><i class="fa fa-map-pin"></i> map-pin</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#map-signs"><i class="fa fa-map-signs"></i> map-signs</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#meh-o"><i class="fa fa-meh-o"></i> meh-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#microphone"><i class="fa fa-microphone"></i> microphone</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#microphone-slash"><i class="fa fa-microphone-slash"></i> microphone-slash</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#minus"><i class="fa fa-minus"></i> minus</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#minus-circle"><i class="fa fa-minus-circle"></i> minus-circle</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#minus-square"><i class="fa fa-minus-square"></i> minus-square</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#minus-square-o"><i class="fa fa-minus-square-o"></i> minus-square-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#mobile"><i class="fa fa-mobile"></i> mobile</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#mobile"><i class="fa fa-mobile-phone"></i> mobile-phone <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#money"><i class="fa fa-money"></i> money</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#moon-o"><i class="fa fa-moon-o"></i> moon-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#graduation-cap"><i class="fa fa-mortar-board"></i> mortar-board <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#motorcycle"><i class="fa fa-motorcycle"></i> motorcycle</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#mouse-pointer"><i class="fa fa-mouse-pointer"></i> mouse-pointer</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#music"><i class="fa fa-music"></i> music</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#bars"><i class="fa fa-navicon"></i> navicon <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#newspaper-o"><i class="fa fa-newspaper-o"></i> newspaper-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#object-group"><i class="fa fa-object-group"></i> object-group</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#object-ungroup"><i class="fa fa-object-ungroup"></i> object-ungroup</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#paint-brush"><i class="fa fa-paint-brush"></i> paint-brush</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#paper-plane"><i class="fa fa-paper-plane"></i> paper-plane</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#paper-plane-o"><i class="fa fa-paper-plane-o"></i> paper-plane-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#paw"><i class="fa fa-paw"></i> paw</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#pencil"><i class="fa fa-pencil"></i> pencil</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#pencil-square"><i class="fa fa-pencil-square"></i> pencil-square</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#pencil-square-o"><i class="fa fa-pencil-square-o"></i> pencil-square-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#phone"><i class="fa fa-phone"></i> phone</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#phone-square"><i class="fa fa-phone-square"></i> phone-square</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#picture-o"><i class="fa fa-photo"></i> photo <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#picture-o"><i class="fa fa-picture-o"></i> picture-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#pie-chart"><i class="fa fa-pie-chart"></i> pie-chart</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#plane"><i class="fa fa-plane"></i> plane</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#plug"><i class="fa fa-plug"></i> plug</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#plus"><i class="fa fa-plus"></i> plus</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#plus-circle"><i class="fa fa-plus-circle"></i> plus-circle</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#plus-square"><i class="fa fa-plus-square"></i> plus-square</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#plus-square-o"><i class="fa fa-plus-square-o"></i> plus-square-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#power-off"><i class="fa fa-power-off"></i> power-off</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#print"><i class="fa fa-print"></i> print</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#puzzle-piece"><i class="fa fa-puzzle-piece"></i> puzzle-piece</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#qrcode"><i class="fa fa-qrcode"></i> qrcode</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#question"><i class="fa fa-question"></i> question</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#question-circle"><i class="fa fa-question-circle"></i> question-circle</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#quote-left"><i class="fa fa-quote-left"></i> quote-left</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#quote-right"><i class="fa fa-quote-right"></i> quote-right</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#random"><i class="fa fa-random"></i> random</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#recycle"><i class="fa fa-recycle"></i> recycle</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#refresh"><i class="fa fa-refresh"></i> refresh</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#registered"><i class="fa fa-registered"></i> registered</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#times"><i class="fa fa-remove"></i> remove <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#bars"><i class="fa fa-reorder"></i> reorder <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#reply"><i class="fa fa-reply"></i> reply</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#reply-all"><i class="fa fa-reply-all"></i> reply-all</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#retweet"><i class="fa fa-retweet"></i> retweet</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#road"><i class="fa fa-road"></i> road</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#rocket"><i class="fa fa-rocket"></i> rocket</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#rss"><i class="fa fa-rss"></i> rss</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#rss-square"><i class="fa fa-rss-square"></i> rss-square</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#search"><i class="fa fa-search"></i> search</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#search-minus"><i class="fa fa-search-minus"></i> search-minus</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#search-plus"><i class="fa fa-search-plus"></i> search-plus</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#paper-plane"><i class="fa fa-send"></i> send <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#paper-plane-o"><i class="fa fa-send-o"></i> send-o <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#server"><i class="fa fa-server"></i> server</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#share"><i class="fa fa-share"></i> share</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#share-alt"><i class="fa fa-share-alt"></i> share-alt</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#share-alt-square"><i class="fa fa-share-alt-square"></i> share-alt-square</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#share-square"><i class="fa fa-share-square"></i> share-square</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#share-square-o"><i class="fa fa-share-square-o"></i> share-square-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#shield"><i class="fa fa-shield"></i> shield</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#ship"><i class="fa fa-ship"></i> ship</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#shopping-cart"><i class="fa fa-shopping-cart"></i> shopping-cart</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#sign-in"><i class="fa fa-sign-in"></i> sign-in</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#sign-out"><i class="fa fa-sign-out"></i> sign-out</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#signal"><i class="fa fa-signal"></i> signal</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#sitemap"><i class="fa fa-sitemap"></i> sitemap</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#sliders"><i class="fa fa-sliders"></i> sliders</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#smile-o"><i class="fa fa-smile-o"></i> smile-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#futbol-o"><i class="fa fa-soccer-ball-o"></i> soccer-ball-o <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#sort"><i class="fa fa-sort"></i> sort</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#sort-alpha-asc"><i class="fa fa-sort-alpha-asc"></i> sort-alpha-asc</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#sort-alpha-desc"><i class="fa fa-sort-alpha-desc"></i> sort-alpha-desc</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#sort-amount-asc"><i class="fa fa-sort-amount-asc"></i> sort-amount-asc</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#sort-amount-desc"><i class="fa fa-sort-amount-desc"></i> sort-amount-desc</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#sort-asc"><i class="fa fa-sort-asc"></i> sort-asc</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#sort-desc"><i class="fa fa-sort-desc"></i> sort-desc</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#sort-desc"><i class="fa fa-sort-down"></i> sort-down <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#sort-numeric-asc"><i class="fa fa-sort-numeric-asc"></i> sort-numeric-asc</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#sort-numeric-desc"><i class="fa fa-sort-numeric-desc"></i> sort-numeric-desc</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#sort-asc"><i class="fa fa-sort-up"></i> sort-up <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#space-shuttle"><i class="fa fa-space-shuttle"></i> space-shuttle</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#spinner"><i class="fa fa-spinner"></i> spinner</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#spoon"><i class="fa fa-spoon"></i> spoon</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#square"><i class="fa fa-square"></i> square</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#square-o"><i class="fa fa-square-o"></i> square-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#star"><i class="fa fa-star"></i> star</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#star-half"><i class="fa fa-star-half"></i> star-half</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#star-half-o"><i class="fa fa-star-half-empty"></i> star-half-empty <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#star-half-o"><i class="fa fa-star-half-full"></i> star-half-full <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#star-half-o"><i class="fa fa-star-half-o"></i> star-half-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#star-o"><i class="fa fa-star-o"></i> star-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#sticky-note"><i class="fa fa-sticky-note"></i> sticky-note</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#sticky-note-o"><i class="fa fa-sticky-note-o"></i> sticky-note-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#street-view"><i class="fa fa-street-view"></i> street-view</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#suitcase"><i class="fa fa-suitcase"></i> suitcase</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#sun-o"><i class="fa fa-sun-o"></i> sun-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#life-ring"><i class="fa fa-support"></i> support <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#tablet"><i class="fa fa-tablet"></i> tablet</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#tachometer"><i class="fa fa-tachometer"></i> tachometer</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#tag"><i class="fa fa-tag"></i> tag</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#tags"><i class="fa fa-tags"></i> tags</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#tasks"><i class="fa fa-tasks"></i> tasks</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#taxi"><i class="fa fa-taxi"></i> taxi</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#television"><i class="fa fa-television"></i> television</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#terminal"><i class="fa fa-terminal"></i> terminal</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#thumb-tack"><i class="fa fa-thumb-tack"></i> thumb-tack</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#thumbs-down"><i class="fa fa-thumbs-down"></i> thumbs-down</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#thumbs-o-down"><i class="fa fa-thumbs-o-down"></i> thumbs-o-down</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#thumbs-o-up"><i class="fa fa-thumbs-o-up"></i> thumbs-o-up</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#thumbs-up"><i class="fa fa-thumbs-up"></i> thumbs-up</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#ticket"><i class="fa fa-ticket"></i> ticket</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#times"><i class="fa fa-times"></i> times</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#times-circle"><i class="fa fa-times-circle"></i> times-circle</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#times-circle-o"><i class="fa fa-times-circle-o"></i> times-circle-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#tint"><i class="fa fa-tint"></i> tint</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#caret-square-o-down"><i class="fa fa-toggle-down"></i> toggle-down <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#caret-square-o-left"><i class="fa fa-toggle-left"></i> toggle-left <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#toggle-off"><i class="fa fa-toggle-off"></i> toggle-off</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#toggle-on"><i class="fa fa-toggle-on"></i> toggle-on</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#caret-square-o-right"><i class="fa fa-toggle-right"></i> toggle-right <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#caret-square-o-up"><i class="fa fa-toggle-up"></i> toggle-up <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#trademark"><i class="fa fa-trademark"></i> trademark</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#trash"><i class="fa fa-trash"></i> trash</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#trash-o"><i class="fa fa-trash-o"></i> trash-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#tree"><i class="fa fa-tree"></i> tree</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#trophy"><i class="fa fa-trophy"></i> trophy</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#truck"><i class="fa fa-truck"></i> truck</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#tty"><i class="fa fa-tty"></i> tty</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#television"><i class="fa fa-tv"></i> tv <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#umbrella"><i class="fa fa-umbrella"></i> umbrella</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#university"><i class="fa fa-university"></i> university</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#unlock"><i class="fa fa-unlock"></i> unlock</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#unlock-alt"><i class="fa fa-unlock-alt"></i> unlock-alt</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#sort"><i class="fa fa-unsorted"></i> unsorted <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#upload"><i class="fa fa-upload"></i> upload</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#user"><i class="fa fa-user"></i> user</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#user-plus"><i class="fa fa-user-plus"></i> user-plus</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#user-secret"><i class="fa fa-user-secret"></i> user-secret</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#user-times"><i class="fa fa-user-times"></i> user-times</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#users"><i class="fa fa-users"></i> users</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#video-camera"><i class="fa fa-video-camera"></i> video-camera</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#volume-down"><i class="fa fa-volume-down"></i> volume-down</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#volume-off"><i class="fa fa-volume-off"></i> volume-off</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#volume-up"><i class="fa fa-volume-up"></i> volume-up</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#exclamation-triangle"><i class="fa fa-warning"></i> warning <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#wheelchair"><i class="fa fa-wheelchair"></i> wheelchair</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#wifi"><i class="fa fa-wifi"></i> wifi</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#wrench"><i class="fa fa-wrench"></i> wrench</a></div>

                            </div>

                        </section>
                        <section id="hand">
                            <h2 class="page-header">手型图标</h2>

                            <div class="row fontawesome-icon-list">



                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hand-rock-o"><i class="fa fa-hand-grab-o"></i> hand-grab-o <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hand-lizard-o"><i class="fa fa-hand-lizard-o"></i> hand-lizard-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hand-o-down"><i class="fa fa-hand-o-down"></i> hand-o-down</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hand-o-left"><i class="fa fa-hand-o-left"></i> hand-o-left</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hand-o-right"><i class="fa fa-hand-o-right"></i> hand-o-right</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hand-o-up"><i class="fa fa-hand-o-up"></i> hand-o-up</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hand-paper-o"><i class="fa fa-hand-paper-o"></i> hand-paper-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hand-peace-o"><i class="fa fa-hand-peace-o"></i> hand-peace-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hand-pointer-o"><i class="fa fa-hand-pointer-o"></i> hand-pointer-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hand-rock-o"><i class="fa fa-hand-rock-o"></i> hand-rock-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hand-scissors-o"><i class="fa fa-hand-scissors-o"></i> hand-scissors-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hand-spock-o"><i class="fa fa-hand-spock-o"></i> hand-spock-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hand-paper-o"><i class="fa fa-hand-stop-o"></i> hand-stop-o <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#thumbs-down"><i class="fa fa-thumbs-down"></i> thumbs-down</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#thumbs-o-down"><i class="fa fa-thumbs-o-down"></i> thumbs-o-down</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#thumbs-o-up"><i class="fa fa-thumbs-o-up"></i> thumbs-o-up</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#thumbs-up"><i class="fa fa-thumbs-up"></i> thumbs-up</a></div>

                            </div>

                        </section>

                        <section id="transportation">
                            <h2 class="page-header">交通运输图标</h2>

                            <div class="row fontawesome-icon-list">



                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#ambulance"><i class="fa fa-ambulance"></i> ambulance</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#car"><i class="fa fa-automobile"></i> automobile <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#bicycle"><i class="fa fa-bicycle"></i> bicycle</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#bus"><i class="fa fa-bus"></i> bus</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#taxi"><i class="fa fa-cab"></i> cab <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#car"><i class="fa fa-car"></i> car</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#fighter-jet"><i class="fa fa-fighter-jet"></i> fighter-jet</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#motorcycle"><i class="fa fa-motorcycle"></i> motorcycle</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#plane"><i class="fa fa-plane"></i> plane</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#rocket"><i class="fa fa-rocket"></i> rocket</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#ship"><i class="fa fa-ship"></i> ship</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#space-shuttle"><i class="fa fa-space-shuttle"></i> space-shuttle</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#subway"><i class="fa fa-subway"></i> subway</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#taxi"><i class="fa fa-taxi"></i> taxi</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#train"><i class="fa fa-train"></i> train</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#truck"><i class="fa fa-truck"></i> truck</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#wheelchair"><i class="fa fa-wheelchair"></i> wheelchair</a></div>

                            </div>

                        </section>
                        <section id="gender">
                            <h2 class="page-header">性别图标</h2>

                            <div class="row fontawesome-icon-list">



                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#genderless"><i class="fa fa-genderless"></i> genderless</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#transgender"><i class="fa fa-intersex"></i> intersex <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#mars"><i class="fa fa-mars"></i> mars</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#mars-double"><i class="fa fa-mars-double"></i> mars-double</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#mars-stroke"><i class="fa fa-mars-stroke"></i> mars-stroke</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#mars-stroke-h"><i class="fa fa-mars-stroke-h"></i> mars-stroke-h</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#mars-stroke-v"><i class="fa fa-mars-stroke-v"></i> mars-stroke-v</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#mercury"><i class="fa fa-mercury"></i> mercury</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#neuter"><i class="fa fa-neuter"></i> neuter</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#transgender"><i class="fa fa-transgender"></i> transgender</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#transgender-alt"><i class="fa fa-transgender-alt"></i> transgender-alt</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#venus"><i class="fa fa-venus"></i> venus</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#venus-double"><i class="fa fa-venus-double"></i> venus-double</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#venus-mars"><i class="fa fa-venus-mars"></i> venus-mars</a></div>

                            </div>

                        </section>
                        <section id="file-type">
                            <h2 class="page-header">文件类型图标</h2>

                            <div class="row fontawesome-icon-list">



                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#file"><i class="fa fa-file"></i> file</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#file-archive-o"><i class="fa fa-file-archive-o"></i> file-archive-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#file-audio-o"><i class="fa fa-file-audio-o"></i> file-audio-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#file-code-o"><i class="fa fa-file-code-o"></i> file-code-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#file-excel-o"><i class="fa fa-file-excel-o"></i> file-excel-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#file-image-o"><i class="fa fa-file-image-o"></i> file-image-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#file-video-o"><i class="fa fa-file-movie-o"></i> file-movie-o <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#file-o"><i class="fa fa-file-o"></i> file-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#file-pdf-o"><i class="fa fa-file-pdf-o"></i> file-pdf-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#file-image-o"><i class="fa fa-file-photo-o"></i> file-photo-o <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#file-image-o"><i class="fa fa-file-picture-o"></i> file-picture-o <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#file-powerpoint-o"><i class="fa fa-file-powerpoint-o"></i> file-powerpoint-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#file-audio-o"><i class="fa fa-file-sound-o"></i> file-sound-o <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#file-text"><i class="fa fa-file-text"></i> file-text</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#file-text-o"><i class="fa fa-file-text-o"></i> file-text-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#file-video-o"><i class="fa fa-file-video-o"></i> file-video-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#file-word-o"><i class="fa fa-file-word-o"></i> file-word-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#file-archive-o"><i class="fa fa-file-zip-o"></i> file-zip-o <span class="text-muted">(alias)</span></a></div>

                            </div>

                        </section>
                        <section id="spinner">
                            <h2 class="page-header">加载动画图标</h2>

                            <div class="alert alert-success">
                                <ul class="fa-ul">
                                    <li>
                                        <i class="fa fa-info-circle fa-lg fa-li"></i> 给这些图标加上
                                        <code>fa-spin</code> class，就可以表现出加载动画了
                                    </li>
                                </ul>
                            </div>

                            <div class="row fontawesome-icon-list">



                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#circle-o-notch"><i class="fa fa-circle-o-notch"></i> circle-o-notch</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#cog"><i class="fa fa-cog"></i> cog</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#cog"><i class="fa fa-gear"></i> gear <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#refresh"><i class="fa fa-refresh"></i> refresh</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#spinner"><i class="fa fa-spinner"></i> spinner</a></div>

                            </div>
                        </section>
                        <section id="form-control">
                            <h2 class="page-header">表单图标</h2>

                            <div class="row fontawesome-icon-list">



                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#check-square"><i class="fa fa-check-square"></i> check-square</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#check-square-o"><i class="fa fa-check-square-o"></i> check-square-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#circle"><i class="fa fa-circle"></i> circle</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#circle-o"><i class="fa fa-circle-o"></i> circle-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#dot-circle-o"><i class="fa fa-dot-circle-o"></i> dot-circle-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#minus-square"><i class="fa fa-minus-square"></i> minus-square</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#minus-square-o"><i class="fa fa-minus-square-o"></i> minus-square-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#plus-square"><i class="fa fa-plus-square"></i> plus-square</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#plus-square-o"><i class="fa fa-plus-square-o"></i> plus-square-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#square"><i class="fa fa-square"></i> square</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#square-o"><i class="fa fa-square-o"></i> square-o</a></div>

                            </div>
                        </section>
                        <section id="payment">
                            <h2 class="page-header">支付图标</h2>

                            <div class="row fontawesome-icon-list">



                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#cc-amex"><i class="fa fa-cc-amex"></i> cc-amex</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#cc-diners-club"><i class="fa fa-cc-diners-club"></i> cc-diners-club</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#cc-discover"><i class="fa fa-cc-discover"></i> cc-discover</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#cc-jcb"><i class="fa fa-cc-jcb"></i> cc-jcb</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#cc-mastercard"><i class="fa fa-cc-mastercard"></i> cc-mastercard</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#cc-paypal"><i class="fa fa-cc-paypal"></i> cc-paypal</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#cc-stripe"><i class="fa fa-cc-stripe"></i> cc-stripe</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#cc-visa"><i class="fa fa-cc-visa"></i> cc-visa</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#credit-card"><i class="fa fa-credit-card"></i> credit-card</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#google-wallet"><i class="fa fa-google-wallet"></i> google-wallet</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#paypal"><i class="fa fa-paypal"></i> paypal</a></div>

                            </div>

                        </section>
                        <section id="chart">
                            <h2 class="page-header">统计图标</h2>

                            <div class="row fontawesome-icon-list">



                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#area-chart"><i class="fa fa-area-chart"></i> area-chart</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#bar-chart"><i class="fa fa-bar-chart"></i> bar-chart</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#bar-chart"><i class="fa fa-bar-chart-o"></i> bar-chart-o <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#line-chart"><i class="fa fa-line-chart"></i> line-chart</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#pie-chart"><i class="fa fa-pie-chart"></i> pie-chart</a></div>

                            </div>

                        </section>
                        <section id="currency">
                            <h2 class="page-header">货币图标</h2>

                            <div class="row fontawesome-icon-list">



                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#btc"><i class="fa fa-bitcoin"></i> bitcoin <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#btc"><i class="fa fa-btc"></i> btc</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#jpy"><i class="fa fa-cny"></i> cny <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#usd"><i class="fa fa-dollar"></i> dollar <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#eur"><i class="fa fa-eur"></i> eur</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#eur"><i class="fa fa-euro"></i> euro <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#gbp"><i class="fa fa-gbp"></i> gbp</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#gg"><i class="fa fa-gg"></i> gg</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#gg-circle"><i class="fa fa-gg-circle"></i> gg-circle</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#ils"><i class="fa fa-ils"></i> ils</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#inr"><i class="fa fa-inr"></i> inr</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#jpy"><i class="fa fa-jpy"></i> jpy</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#krw"><i class="fa fa-krw"></i> krw</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#money"><i class="fa fa-money"></i> money</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#jpy"><i class="fa fa-rmb"></i> rmb <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#rub"><i class="fa fa-rouble"></i> rouble <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#rub"><i class="fa fa-rub"></i> rub</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#rub"><i class="fa fa-ruble"></i> ruble <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#inr"><i class="fa fa-rupee"></i> rupee <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#ils"><i class="fa fa-shekel"></i> shekel <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#ils"><i class="fa fa-sheqel"></i> sheqel <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#try"><i class="fa fa-try"></i> try</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#try"><i class="fa fa-turkish-lira"></i> turkish-lira <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#usd"><i class="fa fa-usd"></i> usd</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#krw"><i class="fa fa-won"></i> won <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#jpy"><i class="fa fa-yen"></i> yen <span class="text-muted">(alias)</span></a></div>

                            </div>

                        </section>
                        <section id="text-editor">
                            <h2 class="page-header">文本编辑器图标</h2>

                            <div class="row fontawesome-icon-list">



                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#align-center"><i class="fa fa-align-center"></i> align-center</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#align-justify"><i class="fa fa-align-justify"></i> align-justify</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#align-left"><i class="fa fa-align-left"></i> align-left</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#align-right"><i class="fa fa-align-right"></i> align-right</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#bold"><i class="fa fa-bold"></i> bold</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#link"><i class="fa fa-chain"></i> chain <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#chain-broken"><i class="fa fa-chain-broken"></i> chain-broken</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#clipboard"><i class="fa fa-clipboard"></i> clipboard</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#columns"><i class="fa fa-columns"></i> columns</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#files-o"><i class="fa fa-copy"></i> copy <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#scissors"><i class="fa fa-cut"></i> cut <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#outdent"><i class="fa fa-dedent"></i> dedent <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#eraser"><i class="fa fa-eraser"></i> eraser</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#file"><i class="fa fa-file"></i> file</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#file-o"><i class="fa fa-file-o"></i> file-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#file-text"><i class="fa fa-file-text"></i> file-text</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#file-text-o"><i class="fa fa-file-text-o"></i> file-text-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#files-o"><i class="fa fa-files-o"></i> files-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#floppy-o"><i class="fa fa-floppy-o"></i> floppy-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#font"><i class="fa fa-font"></i> font</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#header"><i class="fa fa-header"></i> header</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#indent"><i class="fa fa-indent"></i> indent</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#italic"><i class="fa fa-italic"></i> italic</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#link"><i class="fa fa-link"></i> link</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#list"><i class="fa fa-list"></i> list</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#list-alt"><i class="fa fa-list-alt"></i> list-alt</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#list-ol"><i class="fa fa-list-ol"></i> list-ol</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#list-ul"><i class="fa fa-list-ul"></i> list-ul</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#outdent"><i class="fa fa-outdent"></i> outdent</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#paperclip"><i class="fa fa-paperclip"></i> paperclip</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#paragraph"><i class="fa fa-paragraph"></i> paragraph</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#clipboard"><i class="fa fa-paste"></i> paste <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#repeat"><i class="fa fa-repeat"></i> repeat</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#undo"><i class="fa fa-rotate-left"></i> rotate-left <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#repeat"><i class="fa fa-rotate-right"></i> rotate-right <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#floppy-o"><i class="fa fa-save"></i> save <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#scissors"><i class="fa fa-scissors"></i> scissors</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#strikethrough"><i class="fa fa-strikethrough"></i> strikethrough</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#subscript"><i class="fa fa-subscript"></i> subscript</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#superscript"><i class="fa fa-superscript"></i> superscript</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#table"><i class="fa fa-table"></i> table</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#text-height"><i class="fa fa-text-height"></i> text-height</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#text-width"><i class="fa fa-text-width"></i> text-width</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#th"><i class="fa fa-th"></i> th</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#th-large"><i class="fa fa-th-large"></i> th-large</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#th-list"><i class="fa fa-th-list"></i> th-list</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#underline"><i class="fa fa-underline"></i> underline</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#undo"><i class="fa fa-undo"></i> undo</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#chain-broken"><i class="fa fa-unlink"></i> unlink <span class="text-muted">(alias)</span></a></div>

                            </div>

                        </section>
                        <section id="directional">
                            <h2 class="page-header">方向图标</h2>

                            <div class="row fontawesome-icon-list">



                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#angle-double-down"><i class="fa fa-angle-double-down"></i> angle-double-down</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#angle-double-left"><i class="fa fa-angle-double-left"></i> angle-double-left</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#angle-double-right"><i class="fa fa-angle-double-right"></i> angle-double-right</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#angle-double-up"><i class="fa fa-angle-double-up"></i> angle-double-up</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#angle-down"><i class="fa fa-angle-down"></i> angle-down</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#angle-left"><i class="fa fa-angle-left"></i> angle-left</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#angle-right"><i class="fa fa-angle-right"></i> angle-right</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#angle-up"><i class="fa fa-angle-up"></i> angle-up</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#arrow-circle-down"><i class="fa fa-arrow-circle-down"></i> arrow-circle-down</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#arrow-circle-left"><i class="fa fa-arrow-circle-left"></i> arrow-circle-left</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#arrow-circle-o-down"><i class="fa fa-arrow-circle-o-down"></i> arrow-circle-o-down</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#arrow-circle-o-left"><i class="fa fa-arrow-circle-o-left"></i> arrow-circle-o-left</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#arrow-circle-o-right"><i class="fa fa-arrow-circle-o-right"></i> arrow-circle-o-right</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#arrow-circle-o-up"><i class="fa fa-arrow-circle-o-up"></i> arrow-circle-o-up</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#arrow-circle-right"><i class="fa fa-arrow-circle-right"></i> arrow-circle-right</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#arrow-circle-up"><i class="fa fa-arrow-circle-up"></i> arrow-circle-up</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#arrow-down"><i class="fa fa-arrow-down"></i> arrow-down</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#arrow-left"><i class="fa fa-arrow-left"></i> arrow-left</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#arrow-right"><i class="fa fa-arrow-right"></i> arrow-right</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#arrow-up"><i class="fa fa-arrow-up"></i> arrow-up</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#arrows"><i class="fa fa-arrows"></i> arrows</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#arrows-alt"><i class="fa fa-arrows-alt"></i> arrows-alt</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#arrows-h"><i class="fa fa-arrows-h"></i> arrows-h</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#arrows-v"><i class="fa fa-arrows-v"></i> arrows-v</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#caret-down"><i class="fa fa-caret-down"></i> caret-down</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#caret-left"><i class="fa fa-caret-left"></i> caret-left</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#caret-right"><i class="fa fa-caret-right"></i> caret-right</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#caret-square-o-down"><i class="fa fa-caret-square-o-down"></i> caret-square-o-down</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#caret-square-o-left"><i class="fa fa-caret-square-o-left"></i> caret-square-o-left</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#caret-square-o-right"><i class="fa fa-caret-square-o-right"></i> caret-square-o-right</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#caret-square-o-up"><i class="fa fa-caret-square-o-up"></i> caret-square-o-up</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#caret-up"><i class="fa fa-caret-up"></i> caret-up</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#chevron-circle-down"><i class="fa fa-chevron-circle-down"></i> chevron-circle-down</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#chevron-circle-left"><i class="fa fa-chevron-circle-left"></i> chevron-circle-left</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#chevron-circle-right"><i class="fa fa-chevron-circle-right"></i> chevron-circle-right</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#chevron-circle-up"><i class="fa fa-chevron-circle-up"></i> chevron-circle-up</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#chevron-down"><i class="fa fa-chevron-down"></i> chevron-down</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#chevron-left"><i class="fa fa-chevron-left"></i> chevron-left</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#chevron-right"><i class="fa fa-chevron-right"></i> chevron-right</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#chevron-up"><i class="fa fa-chevron-up"></i> chevron-up</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#exchange"><i class="fa fa-exchange"></i> exchange</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hand-o-down"><i class="fa fa-hand-o-down"></i> hand-o-down</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hand-o-left"><i class="fa fa-hand-o-left"></i> hand-o-left</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hand-o-right"><i class="fa fa-hand-o-right"></i> hand-o-right</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hand-o-up"><i class="fa fa-hand-o-up"></i> hand-o-up</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#long-arrow-down"><i class="fa fa-long-arrow-down"></i> long-arrow-down</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#long-arrow-left"><i class="fa fa-long-arrow-left"></i> long-arrow-left</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#long-arrow-right"><i class="fa fa-long-arrow-right"></i> long-arrow-right</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#long-arrow-up"><i class="fa fa-long-arrow-up"></i> long-arrow-up</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#caret-square-o-down"><i class="fa fa-toggle-down"></i> toggle-down <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#caret-square-o-left"><i class="fa fa-toggle-left"></i> toggle-left <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#caret-square-o-right"><i class="fa fa-toggle-right"></i> toggle-right <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#caret-square-o-up"><i class="fa fa-toggle-up"></i> toggle-up <span class="text-muted">(alias)</span></a></div>

                            </div>

                        </section>
                        <section id="video-player">
                            <h2 class="page-header">视频播放图标</h2>

                            <div class="row fontawesome-icon-list">



                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#arrows-alt"><i class="fa fa-arrows-alt"></i> arrows-alt</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#backward"><i class="fa fa-backward"></i> backward</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#compress"><i class="fa fa-compress"></i> compress</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#eject"><i class="fa fa-eject"></i> eject</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#expand"><i class="fa fa-expand"></i> expand</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#fast-backward"><i class="fa fa-fast-backward"></i> fast-backward</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#fast-forward"><i class="fa fa-fast-forward"></i> fast-forward</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#forward"><i class="fa fa-forward"></i> forward</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#pause"><i class="fa fa-pause"></i> pause</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#play"><i class="fa fa-play"></i> play</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#play-circle"><i class="fa fa-play-circle"></i> play-circle</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#play-circle-o"><i class="fa fa-play-circle-o"></i> play-circle-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#random"><i class="fa fa-random"></i> random</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#step-backward"><i class="fa fa-step-backward"></i> step-backward</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#step-forward"><i class="fa fa-step-forward"></i> step-forward</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#stop"><i class="fa fa-stop"></i> stop</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#youtube-play"><i class="fa fa-youtube-play"></i> youtube-play</a></div>

                            </div>

                        </section>
                        <section id="brand">
                            <h2 class="page-header">品牌图标</h2>

                            <div class="row fontawesome-icon-list margin-bottom-lg">



                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#500px"><i class="fa fa-500px"></i> 500px</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#adn"><i class="fa fa-adn"></i> adn</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#amazon"><i class="fa fa-amazon"></i> amazon</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#android"><i class="fa fa-android"></i> android</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#angellist"><i class="fa fa-angellist"></i> angellist</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#apple"><i class="fa fa-apple"></i> apple</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#behance"><i class="fa fa-behance"></i> behance</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#behance-square"><i class="fa fa-behance-square"></i> behance-square</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#bitbucket"><i class="fa fa-bitbucket"></i> bitbucket</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#bitbucket-square"><i class="fa fa-bitbucket-square"></i> bitbucket-square</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#btc"><i class="fa fa-bitcoin"></i> bitcoin <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#black-tie"><i class="fa fa-black-tie"></i> black-tie</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#btc"><i class="fa fa-btc"></i> btc</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#buysellads"><i class="fa fa-buysellads"></i> buysellads</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#cc-amex"><i class="fa fa-cc-amex"></i> cc-amex</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#cc-diners-club"><i class="fa fa-cc-diners-club"></i> cc-diners-club</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#cc-discover"><i class="fa fa-cc-discover"></i> cc-discover</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#cc-jcb"><i class="fa fa-cc-jcb"></i> cc-jcb</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#cc-mastercard"><i class="fa fa-cc-mastercard"></i> cc-mastercard</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#cc-paypal"><i class="fa fa-cc-paypal"></i> cc-paypal</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#cc-stripe"><i class="fa fa-cc-stripe"></i> cc-stripe</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#cc-visa"><i class="fa fa-cc-visa"></i> cc-visa</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#chrome"><i class="fa fa-chrome"></i> chrome</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#codepen"><i class="fa fa-codepen"></i> codepen</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#connectdevelop"><i class="fa fa-connectdevelop"></i> connectdevelop</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#contao"><i class="fa fa-contao"></i> contao</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#css3"><i class="fa fa-css3"></i> css3</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#dashcube"><i class="fa fa-dashcube"></i> dashcube</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#delicious"><i class="fa fa-delicious"></i> delicious</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#deviantart"><i class="fa fa-deviantart"></i> deviantart</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#digg"><i class="fa fa-digg"></i> digg</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#dribbble"><i class="fa fa-dribbble"></i> dribbble</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#dropbox"><i class="fa fa-dropbox"></i> dropbox</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#drupal"><i class="fa fa-drupal"></i> drupal</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#empire"><i class="fa fa-empire"></i> empire</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#expeditedssl"><i class="fa fa-expeditedssl"></i> expeditedssl</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#facebook"><i class="fa fa-facebook"></i> facebook</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#facebook"><i class="fa fa-facebook-f"></i> facebook-f <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#facebook-official"><i class="fa fa-facebook-official"></i> facebook-official</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#facebook-square"><i class="fa fa-facebook-square"></i> facebook-square</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#firefox"><i class="fa fa-firefox"></i> firefox</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#flickr"><i class="fa fa-flickr"></i> flickr</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#fonticons"><i class="fa fa-fonticons"></i> fonticons</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#forumbee"><i class="fa fa-forumbee"></i> forumbee</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#foursquare"><i class="fa fa-foursquare"></i> foursquare</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#empire"><i class="fa fa-ge"></i> ge <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#get-pocket"><i class="fa fa-get-pocket"></i> get-pocket</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#gg"><i class="fa fa-gg"></i> gg</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#gg-circle"><i class="fa fa-gg-circle"></i> gg-circle</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#git"><i class="fa fa-git"></i> git</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#git-square"><i class="fa fa-git-square"></i> git-square</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#github"><i class="fa fa-github"></i> github</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#github-alt"><i class="fa fa-github-alt"></i> github-alt</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#github-square"><i class="fa fa-github-square"></i> github-square</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#gratipay"><i class="fa fa-gittip"></i> gittip <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#google"><i class="fa fa-google"></i> google</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#google-plus"><i class="fa fa-google-plus"></i> google-plus</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#google-plus-square"><i class="fa fa-google-plus-square"></i> google-plus-square</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#google-wallet"><i class="fa fa-google-wallet"></i> google-wallet</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#gratipay"><i class="fa fa-gratipay"></i> gratipay</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hacker-news"><i class="fa fa-hacker-news"></i> hacker-news</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#houzz"><i class="fa fa-houzz"></i> houzz</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#html5"><i class="fa fa-html5"></i> html5</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#instagram"><i class="fa fa-instagram"></i> instagram</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#internet-explorer"><i class="fa fa-internet-explorer"></i> internet-explorer</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#ioxhost"><i class="fa fa-ioxhost"></i> ioxhost</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#joomla"><i class="fa fa-joomla"></i> joomla</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#jsfiddle"><i class="fa fa-jsfiddle"></i> jsfiddle</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#lastfm"><i class="fa fa-lastfm"></i> lastfm</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#lastfm-square"><i class="fa fa-lastfm-square"></i> lastfm-square</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#leanpub"><i class="fa fa-leanpub"></i> leanpub</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#linkedin"><i class="fa fa-linkedin"></i> linkedin</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#linkedin-square"><i class="fa fa-linkedin-square"></i> linkedin-square</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#linux"><i class="fa fa-linux"></i> linux</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#maxcdn"><i class="fa fa-maxcdn"></i> maxcdn</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#meanpath"><i class="fa fa-meanpath"></i> meanpath</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#medium"><i class="fa fa-medium"></i> medium</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#odnoklassniki"><i class="fa fa-odnoklassniki"></i> odnoklassniki</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#odnoklassniki-square"><i class="fa fa-odnoklassniki-square"></i> odnoklassniki-square</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#opencart"><i class="fa fa-opencart"></i> opencart</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#openid"><i class="fa fa-openid"></i> openid</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#opera"><i class="fa fa-opera"></i> opera</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#optin-monster"><i class="fa fa-optin-monster"></i> optin-monster</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#pagelines"><i class="fa fa-pagelines"></i> pagelines</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#paypal"><i class="fa fa-paypal"></i> paypal</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#pied-piper"><i class="fa fa-pied-piper"></i> pied-piper</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#pied-piper-alt"><i class="fa fa-pied-piper-alt"></i> pied-piper-alt</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#pinterest"><i class="fa fa-pinterest"></i> pinterest</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#pinterest-p"><i class="fa fa-pinterest-p"></i> pinterest-p</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#pinterest-square"><i class="fa fa-pinterest-square"></i> pinterest-square</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#qq"><i class="fa fa-qq"></i> qq</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#rebel"><i class="fa fa-ra"></i> ra <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#rebel"><i class="fa fa-rebel"></i> rebel</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#reddit"><i class="fa fa-reddit"></i> reddit</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#reddit-square"><i class="fa fa-reddit-square"></i> reddit-square</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#renren"><i class="fa fa-renren"></i> renren</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#safari"><i class="fa fa-safari"></i> safari</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#sellsy"><i class="fa fa-sellsy"></i> sellsy</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#share-alt"><i class="fa fa-share-alt"></i> share-alt</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#share-alt-square"><i class="fa fa-share-alt-square"></i> share-alt-square</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#shirtsinbulk"><i class="fa fa-shirtsinbulk"></i> shirtsinbulk</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#simplybuilt"><i class="fa fa-simplybuilt"></i> simplybuilt</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#skyatlas"><i class="fa fa-skyatlas"></i> skyatlas</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#skype"><i class="fa fa-skype"></i> skype</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#slack"><i class="fa fa-slack"></i> slack</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#slideshare"><i class="fa fa-slideshare"></i> slideshare</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#soundcloud"><i class="fa fa-soundcloud"></i> soundcloud</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#spotify"><i class="fa fa-spotify"></i> spotify</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#stack-exchange"><i class="fa fa-stack-exchange"></i> stack-exchange</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#stack-overflow"><i class="fa fa-stack-overflow"></i> stack-overflow</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#steam"><i class="fa fa-steam"></i> steam</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#steam-square"><i class="fa fa-steam-square"></i> steam-square</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#stumbleupon"><i class="fa fa-stumbleupon"></i> stumbleupon</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#stumbleupon-circle"><i class="fa fa-stumbleupon-circle"></i> stumbleupon-circle</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#tencent-weibo"><i class="fa fa-tencent-weibo"></i> tencent-weibo</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#trello"><i class="fa fa-trello"></i> trello</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#tripadvisor"><i class="fa fa-tripadvisor"></i> tripadvisor</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#tumblr"><i class="fa fa-tumblr"></i> tumblr</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#tumblr-square"><i class="fa fa-tumblr-square"></i> tumblr-square</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#twitch"><i class="fa fa-twitch"></i> twitch</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#twitter"><i class="fa fa-twitter"></i> twitter</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#twitter-square"><i class="fa fa-twitter-square"></i> twitter-square</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#viacoin"><i class="fa fa-viacoin"></i> viacoin</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#vimeo"><i class="fa fa-vimeo"></i> vimeo</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#vimeo-square"><i class="fa fa-vimeo-square"></i> vimeo-square</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#vine"><i class="fa fa-vine"></i> vine</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#vk"><i class="fa fa-vk"></i> vk</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#weixin"><i class="fa fa-wechat"></i> wechat <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#weibo"><i class="fa fa-weibo"></i> weibo</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#weixin"><i class="fa fa-weixin"></i> weixin</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#whatsapp"><i class="fa fa-whatsapp"></i> whatsapp</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#wikipedia-w"><i class="fa fa-wikipedia-w"></i> wikipedia-w</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#windows"><i class="fa fa-windows"></i> windows</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#wordpress"><i class="fa fa-wordpress"></i> wordpress</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#xing"><i class="fa fa-xing"></i> xing</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#xing-square"><i class="fa fa-xing-square"></i> xing-square</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#y-combinator"><i class="fa fa-y-combinator"></i> y-combinator</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hacker-news"><i class="fa fa-y-combinator-square"></i> y-combinator-square <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#yahoo"><i class="fa fa-yahoo"></i> yahoo</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#y-combinator"><i class="fa fa-yc"></i> yc <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hacker-news"><i class="fa fa-yc-square"></i> yc-square <span class="text-muted">(alias)</span></a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#yelp"><i class="fa fa-yelp"></i> yelp</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#youtube"><i class="fa fa-youtube"></i> youtube</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#youtube-play"><i class="fa fa-youtube-play"></i> youtube-play</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#youtube-square"><i class="fa fa-youtube-square"></i> youtube-square</a></div>

                            </div>

                            <div class="alert alert-success">
                                <ul class="margin-bottom-none padding-left-lg">
                                    <li>所有品牌图标均为其各自所有者的商标</li>
                                    <li>使用这些商标并不表示该商标持有人的认可，反之亦然</li>
                                </ul>

                            </div>
                        </section>
                        <section id="medical">
                            <h2 class="page-header">医疗图标</h2>

                            <div class="row fontawesome-icon-list">



                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#ambulance"><i class="fa fa-ambulance"></i> ambulance</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#h-square"><i class="fa fa-h-square"></i> h-square</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#heart"><i class="fa fa-heart"></i> heart</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#heart-o"><i class="fa fa-heart-o"></i> heart-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#heartbeat"><i class="fa fa-heartbeat"></i> heartbeat</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#hospital-o"><i class="fa fa-hospital-o"></i> hospital-o</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#medkit"><i class="fa fa-medkit"></i> medkit</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#plus-square"><i class="fa fa-plus-square"></i> plus-square</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#stethoscope"><i class="fa fa-stethoscope"></i> stethoscope</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#user-md"><i class="fa fa-user-md"></i> user-md</a></div>

                                <div class="fa-hover col-md-3 col-sm-4"><a href="${pageContext.request.contextPath}/admin/system/menu/fontawesome.html#wheelchair"><i class="fa fa-wheelchair"></i> wheelchair</a></div>

                            </div>

                        </section>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <script src="static/js/jquery.min.js?v=2.1.4"></script>
	<script src="static/js/jquery.form.js"></script>
	<script src="static/js/bootstrap.min.js?v=3.3.6"></script>
	<script src="static/js/content.min.js?v=1.0.0"></script>
	<script src="static/js/plugins/layer/layer.js" type="text/javascript"></script>
	<script src="static/js/layerutil.js" type="text/javascript"></script>
    
    
    
    
</body>
</html>
<script>
$("i").dblclick(function(){
	var a= "<i class=\""+$(this).attr('class')+"\"></i>";
	window.parent.$("#iconName").html(a);
	window.parent.$("#icon").val($(this).attr('class'));
	layer_close();
});
</script>
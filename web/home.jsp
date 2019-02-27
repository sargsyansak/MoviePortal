<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>Cinema A Entertainment Category Flat Bootstarp Resposive Website Template | Home :: w3layouts</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel='stylesheet' type='text/css'/>
    <!-- Custom Theme files -->
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- Custom Theme files -->
    <script src="js/jquery.min.js"></script>
    <!-- Custom Theme files -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Cinema Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!--webfont-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
          rel='stylesheet' type='text/css'>
</head>
<body>
<!-- header-section-starts -->
<div class="full">
    <div class="menu">
        <ul>
            <li><a class="active" href="/home"><i class="home"></i></a></li>
            <li><a href="#">
                <div class="video"><i class="videos"></i><i class="videos1"></i></div>
            </a></li>
            <li><a href="#">
                <div class="cat"><i class="watching"></i><i class="watching1"></i></div>
            </a></li>
            <li><a href="#">
                <div class="bk"><i class="booking"></i><i class="booking1"></i></div>
            </a></li>
            <li><a href="#">
                <div class="cnt"><i class="contact"></i><i class="contact1"></i></div>
            </a></li>
        </ul>
    </div>
    <div class="main">
        <div class="header">
            <div class="top-header">
                <div class="logo">
                    <a href="index.html"><img src="images/logo.png" alt=""/></a>
                    <p>Movie Theater</p>
                </div>
                <div class="search">
                    <form>
                        <input type="text" value="Search.." onfocus="this.value = '';"
                               onblur="if (this.value == '') {this.value = 'Search..';}"/>
                        <%--<input type="submit" value="">--%>
                    </form>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="header-info">
                <h1>ALL GENRES</h1>


                <c:forEach var="genres" items="${allGenres}"><br>
                    <a class="b-home" href="/detailGenre?Id=${genres.id}" style="color: white">


                        <br>${genres.name}<br>

                    </a>
                </c:forEach>

            </div>
        </div>
        <div class="review-slider">
            <ul id="flexiselDemo1">
                <c:forEach var="film" items="${allMovies}">
                    <a href="/detailMovie?Id=${film.id}">
                        <li><img src="/getImage?picName=${film.picUrl}"/></li>
                        name: ${film.name}
                        description: ${film.description}

                        MOVIE DETAIL</a>
                </c:forEach>
            </ul>
            <script type="text/javascript">
                $(window).load(function () {

                    $("#flexiselDemo1").flexisel({
                        visibleItems: 6,
                        animationSpeed: 1000,
                        autoPlay: true,
                        autoPlaySpeed: 3000,
                        pauseOnHover: false,
                        enableResponsiveBreakpoints: true,
                        responsiveBreakpoints: {
                            portrait: {
                                changePoint: 480,
                                visibleItems: 2
                            },
                            landscape: {
                                changePoint: 640,
                                visibleItems: 3
                            },
                            tablet: {
                                changePoint: 768,
                                visibleItems: 4
                            }
                        }
                    });
                });
            </script>
            <script type="text/javascript" src="js/jquery.flexisel.js"></script>
        </div>
        <div class="video">
            <iframe src="https://www.youtube.com/embed/2LqzF5WauAw" frameborder="0" allowfullscreen></iframe>
        </div>
        <div class="news">
            <div class="col-md-6 news-left-grid">
                <h3>Don’t be late,</h3>
                <h2>Book your ticket now!</h2>
                <h4>Easy, simple & fast.</h4>
                <a href="#"><i class="book"></i>BOOK TICKET</a>
                <p>Get Discount up to <strong>10%</strong> if you are a member!</p>
            </div>
            <div class="col-md-6 news-right-grid">
                <h3>News</h3>
                <div class="news-grid">
                    <h5>Lorem Ipsum Dolor Sit Amet</h5>
                    <label>Nov 11 2014</label>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                        labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                        laboris nisi ut aliquip ex ea commodo.</p>
                </div>
                <div class="news-grid">
                    <h5>Lorem Ipsum Dolor Sit Amet</h5>
                    <label>Nov 11 2014</label>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                        labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                        laboris nisi ut aliquip ex ea commodo.</p>
                </div>
                <a class="more" href="#">MORE</a>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="more-reviews">
            <ul id="flexiselDemo2">
                <c:forEach var="film" items="${allMovies}">
                    <a href="/detailMovie?Id=${film.id}">
                        <li><img src="/getImage?picName=${film.picUrl}"/></li>
                        name: ${film.name}
                        description: ${film.description}

                        MOVIE DETAIL</a>
                </c:forEach>

            </ul>
            <script type="text/javascript">
                $(window).load(function () {

                    $("#flexiselDemo2").flexisel({
                        visibleItems: 4,
                        animationSpeed: 1000,
                        autoPlay: true,
                        autoPlaySpeed: 3000,
                        pauseOnHover: false,
                        enableResponsiveBreakpoints: true,
                        responsiveBreakpoints: {
                            portrait: {
                                changePoint: 480,
                                visibleItems: 2
                            },
                            landscape: {
                                changePoint: 640,
                                visibleItems: 3
                            },
                            tablet: {
                                changePoint: 768,
                                visibleItems: 3
                            }
                        }
                    });
                });
            </script>
            <script type="text/javascript" src="js/jquery.flexisel.js"></script>
        </div>
        <div class="footer">
            <h6>Disclaimer : </h6>
            <p class="claim">This is a freebies and not an official website, I have no intention of disclose any movie,
                brand, news.My goal here is to train or excercise my skill and share this freebies.</p>
            <a href="example@mail.com">example@mail.com</a>
            <div class="copyright">
                <p> Template by <a href="http://w3layouts.com"> W3layouts</a></p>
            </div>
        </div>
    </div>
</div>
<div class="clearfix"></div>
</body>
</html>

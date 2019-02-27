<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>Cinema A Entertainment Category Flat Bootstarp Resposive Website Template | Single :: w3layouts</title>
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
    <!-- Custom Theme files -->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- Custom Theme files -->
    <script src="js/jquery.min.js"></script>
    <!-- Custom Theme files -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Cinema Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!--webfont-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
</head>
<body>
<!-- header-section-starts -->
<div class="full">
    <div class="menu">
        <ul>
            <li><a href="/home"><div class="hm"><i class="home1"></i><i class="home2"></i></div></a></li>
            <li><a href="#"><div class="video"><i class="videos"></i><i class="videos1"></i></div></a></li>
            <li><a class="active" href="#"><div class="cat"><i class="watching"></i><i class="watching1"></i></div></a></li>
            <li><a href="#"><div class="bk"><i class="booking"></i><i class="booking1"></i></div></a></li>
            <li><a href="#"><div class="cnt"><i class="contact"></i><i class="contact1"></i></div></a></li>
        </ul>
    </div>
    <div class="main">
        <div class="single-content">
            <div class="top-header span_top">
                <div class="logo">
                    <a href="#"><img src="images/logo.png" alt="" /></a>
                    <p>Movie Theater</p>
                </div>
                <div class="search v-search">
                    <form>
                        <input type="text" value="Search.." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search..';}"/>
                        <input type="submit" value="">
                    </form>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="reviews-section">
                <h3 class="head">Movie Reviews</h3>
                <div class="col-md-9 reviews-grids">
                    <div class="review">
                        <div class="movie-pic">
                            <a href="single.html"><img src="/getImage?picName=${movieDetail.picUrl}" alt="" /></a>
                        </div>
                        <div class="review-info">
                            <a class="span" href="single.html">${movieDetail.name}</a>



                            <p class="info">DESCRIPTION:&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${movieDetail.description}</p>
                            <p class="info">YEAR: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${movieDetail.year}</p>
                            <p class="info">GENRE:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <c:forEach var="genre" items="${movieDetail.genre}">&nbsp;&nbsp;&nbsp;${genre.name}</c:forEach> </p>
                            <%--<p class="info">DURATION:&nbsp;&nbsp;&nbsp; &nbsp; 1 hour 45 minutes</p>--%>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="single">

                    </div>
                    <div class="best-review">
                        <h4>Best Reader's Review</h4>
                        <p>Excellent Movie and great performance by Lorem, one of the finest thriller of recent  like Aldus PageMaker including versions of Lorem Ipsum.</p>
                        <p><span>Neeraj Upadhyay (Noida)</span> 16/03/2015 at 12:14 PM</p>
                    </div>
                    <div class="story-review">
                        <h4>REVIEW:</h4>
                        <p>So,Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                    </div>
                    <!-- comments-section-starts -->
                    <div class="comments-section">
                        <div class="comments-section-head">
                            <div class="comments-section-head-text">
                                <h3>25 Comments</h3>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="comments-section-grids">
                            <div class="comments-section-grid">
                                <div class="col-md-2 comments-section-grid-image">
                                    <img src="images/eye-brow.jpg" class="img-responsive" alt="" />
                                </div>
                                <div class="col-md-10 comments-section-grid-text">
                                    <h4><a href="#">MARWA ELGENDY</a></h4>
                                    <label>5/4/2014 at 22:00   </label>
                                    <p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound but because those who do not know how to pursue pleasure rationally encounter consequences.</p>
                                    <span><a href="#">Reply</a></span>
                                    <i class="rply-arrow"></i>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="comments-section-grid comments-section-middle-grid">
                                <div class="col-md-2 comments-section-grid-image">
                                    <img src="images/beauty.jpg" class="img-responsive" alt="" />
                                </div>
                                <div class="col-md-10 comments-section-grid-text">
                                    <h4><a href="#">MARWA ELGENDY</a></h4>
                                    <label>5/4/2014 at 22:00   </label>
                                    <p>But I must explain to you how all this idea denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound but because those who do not know how to pursue pleasure rationally encounter consequences.</p>
                                    <span><a href="#">Reply</a></span>
                                    <i class="rply-arrow"></i>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="comments-section-grid">
                                <div class="col-md-2 comments-section-grid-image">
                                    <img src="images/stylish.jpg" class="img-responsive" alt="" />
                                </div>
                                <div class="col-md-10 comments-section-grid-text">
                                    <h4><a href="#">MARWA ELGENDY</a></h4>
                                    <label>5/4/2014 at 22:00   </label>
                                    <p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound but because those who do not know how to pursue pleasure rationally encounter consequences.</p>
                                    <span><a href="#">Reply</a></span>
                                    <i class="rply-arrow"></i>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <!-- comments-section-ends -->
                    <div class="reply-section">
                        <div class="reply-section-head">
                            <div class="reply-section-head-text">
                                <h3>Leave Reply</h3>
                            </div>
                        </div>
                        <div class="blog-form">
                            <form>
                                <input type="text" class="text" value="Enter Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Name';}">
                                <input type="text" class="text" value="Enter Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Email';}">
                                <input type="text" class="text" value="Subject" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Subject';}">
                                <textarea></textarea>
                                <input type="button" value="SUBMIT COMMENT">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 side-bar">
                    <div class="featured">
                        <h3>Featured Today in Movie Reviews</h3>
                        <ul>
                            <li>
                                <a href="#"><img src="images/f1.jpg" alt="" /></a>
                                <p>lorem movie review</p>
                            </li>
                            <li>
                                <a href="#"><img src="images/f2.jpg" alt="" /></a>
                                <p>lorem movie review</p>
                            </li>
                            <li>
                                <a href="#"><img src="images/f3.jpg" alt="" /></a>
                                <p>lorem movie review</p>
                            </li>
                            <li>
                                <a href="#"><img src="images/f4.jpg" alt="" /></a>
                                <p>lorem movie review</p>
                            </li>
                            <li>
                                <a href="#"><img src="images/f5.jpg" alt="" /></a>
                                <p>lorem movie review</p>
                            </li>
                            <li>
                                <a href="#"><img src="images/f6.jpg" alt="" /></a>
                                <p>lorem movie review</p>
                            </li>
                            <div class="clearfix"></div>
                        </ul>
                    </div>

                    <div class="entertainment">
                        <h3>Featured Today in Entertainment</h3>
                        <ul>
                            <li class="ent">
                                <a href="#"><img src="images/f6.jpg" alt="" /></a>
                            </li>
                            <li>
                                <a href="#">Watch ‘Bombay Velvet’ trailer during WC match</a>

                            </li>
                            <div class="clearfix"></div>
                        </ul>
                        <ul>
                            <li class="ent">
                                <a href="#"><img src="images/f5.jpg" alt="" /></a>
                            </li>
                            <li>
                                <a href="#">Watch ‘Bombay Velvet’ trailer during WC match</a>

                            </li>
                            <div class="clearfix"></div>
                        </ul>
                        <ul>
                            <li class="ent">
                                <a href="#"><img src="images/f3.jpg" alt="" /></a>
                            </li>
                            <li>
                                <a href="#">Watch ‘Bombay Velvet’ trailer during WC match</a>

                            </li>
                            <div class="clearfix"></div>
                        </ul>
                        <ul>
                            <li class="ent">
                                <a href="#"><img src="images/f4.jpg" alt="" /></a>
                            </li>
                            <li>
                                <a href="#">Watch ‘Bombay Velvet’ trailer during WC match</a>

                            </li>
                            <div class="clearfix"></div>
                        </ul>
                        <ul>
                            <li class="ent">
                                <a href="#"><img src="images/f2.jpg" alt="" /></a>
                            </li>
                            <li>
                                <a href="#">Watch ‘Bombay Velvet’ trailer during WC match</a>

                            </li>
                            <div class="clearfix"></div>
                        </ul>
                        <ul>
                            <li class="ent">
                                <a href="#"><img src="images/f1.jpg" alt="" /></a>
                            </li>
                            <li>
                                <a href="#">Watch ‘Bombay Velvet’ trailer during WC match</a>

                            </li>
                            <div class="clearfix"></div>
                        </ul>
                    </div>
                    <div class="might">
                        <h4>You might also like</h4>
                        <div class="might-grid">
                            <div class="grid-might">
                                <a href="#"><img src="images/mi.jpg" class="img-responsive" alt=""> </a>
                            </div>
                            <div class="might-top">
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                <a href="#">Lorem Ipsum <i> </i></a>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="might-grid">
                            <div class="grid-might">
                                <a href="#"><img src="images/mi1.jpg" class="img-responsive" alt=""> </a>
                            </div>
                            <div class="might-top">
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                <a href="#">Lorem Ipsum <i> </i></a>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="might-grid">
                            <div class="grid-might">
                                <a href="#"><img src="images/mi2.jpg" class="img-responsive" alt=""> </a>
                            </div>
                            <div class="might-top">
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                <a href="#">Lorem Ipsum <i> </i></a>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="might-grid">
                            <div class="grid-might">
                                <a href="#"><img src="images/mi3.jpg" class="img-responsive" alt=""> </a>
                            </div>
                            <div class="might-top">
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                <a href="#">Lorem Ipsum <i> </i></a>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <!---->
                    <div class="grid-top">
                        <h4>Archives</h4>
                        <ul>
                            <li><a href="#">Lorem Ipsum is simply dummy text of the printing and typesetting industry. </a></li>
                            <li><a href="#">Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</a></li>
                            <li><a href="#">When an unknown printer took a galley of type and scrambled it to make a type specimen book. </a> </li>
                            <li><a href="#">It has survived not only five centuries, but also the leap into electronic typesetting</a> </li>
                            <li><a href="#">Remaining essentially unchanged. It was popularised in the 1960s with the release of </a> </li>
                            <li><a href="#">Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing </a> </li>
                            <li><a href="#">Software like Aldus PageMaker including versionsof Lorem Ipsum.</a> </li>
                        </ul>
                    </div>
                    <!---->

                </div>

                <div class="clearfix"></div>
            </div>
        </div>
        <div class="review-slider">
            <ul id="flexiselDemo1">
                <%--<li><img src="images/r1.jpg" alt=""/></li>--%>
                <%--<li><img src="images/r2.jpg" alt=""/></li>--%>
                <%--<li><img src="images/r3.jpg" alt=""/></li>--%>
                <%--<li><img src="images/r4.jpg" alt=""/></li>--%>
                <%--<li><img src="images/r5.jpg" alt=""/></li>--%>
                <%--<li><img src="images/r6.jpg" alt=""/></li>--%>
            </ul>
            <script type="text/javascript">
                $(window).load(function() {

                    $("#flexiselDemo1").flexisel({
                        visibleItems: 6,
                        animationSpeed: 1000,
                        autoPlay: true,
                        autoPlaySpeed: 3000,
                        pauseOnHover: false,
                        enableResponsiveBreakpoints: true,
                        responsiveBreakpoints: {
                            portrait: {
                                changePoint:480,
                                visibleItems: 1
                            },
                            landscape: {
                                changePoint:640,
                                visibleItems: 2
                            },
                            tablet: {
                                changePoint:768,
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
            <p class="claim">This is a freebies and not an official website, I have no intention of disclose any movie, brand, news.My goal here is to train or excercise my skill and share this freebies.</p>
            <a href="#">example@mail.com</a>
            <div class="copyright">
                <p> Template by  <a href="http://w3layouts.com">  W3layouts</a></p>
            </div>
        </div>
    </div>
    <div class="clearfix"></div>
</div>
</body>
</html>
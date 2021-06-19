<?php
include("admin/dbconnect.php");
include("pagefunction.php");
if(isset($_GET['page'])){
$pid = $_GET['page'];
$datappage = getPageContentById($pid);
}

?>
 
                              


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Chhar Gongma Mashik Patrika</title>
<meta name="keywords" content="News Layout, free css template, free website, CSS, HTML" />
<meta name="description" content="News Website Layout - free HTML CSS template provided by templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="tabcontent.css" />
<script type="text/javascript" src="tabcontent.js">
/***********************************************
* Tab Content script v2.2- © Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
***********************************************/
</script>

<link href="css/svwp_style.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-1.3.2.min.js" type="text/javascript"></script>
<script src="js/jquery.slideViewerPro.1.0.js" type="text/javascript"></script>
<script src="js/jquery.timers.js" type="text/javascript"></script>

<!-- jquery section -->
<link rel="stylesheet" id="camera-css" href="css/camera.css" type="text/css" media="all">
    
    <style>
		body {
			margin: 0;
			padding: 0;
		}
		a {
			color: #09f;
		}
		a:hover {
			text-decoration: none;
		}
		#back_to_camera {
			clear: both;
			display: block;
			line-height: 40px;
			padding: 20px;
		}
		.fluid_container {
			margin:0px;
			max-width:1050px;
			width: 100%;
			height:100px;
		}
	</style>

 
   <script type="text/javascript" src="scripts/jquery.min.js"></script>
   <script type="text/javascript" src="scripts/jquery.mobile.customized.min.js"></script>
   <script type="text/javascript" src="scripts/jquery.easing.1.3.js"></script>
   <script type="text/javascript" src="scripts/camera.min.js"></script> 
   
   
    
    <script>
		jQuery(function(){
			
			jQuery('#camera_wrap_1').camera({
				thumbnails: true
			});

			
		});
	</script>
    
    <!-- Skitter Styles -->
	<link href="css/skitter.styles.css" type="text/css" media="all" rel="stylesheet" />
 
 <!-- Skitter JS -->
	<script type="text/javascript" language="javascript" src="js/jquery-1.6.3.min.js"></script>
	<script type="text/javascript" language="javascript" src="js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" language="javascript" src="js/jquery.animate-colors-min.js"></script>
	<script type="text/javascript" language="javascript" src="js/jquery.skitter.min.js"></script>
	
	<!-- Init Skitter -->
    <!-- Init Skitter -->
	<script type="text/javascript" language="javascript">
		$(document).ready(function(){
			$('.box_skitter_large').skitter({label: false, numbers: false, theme: 'square'});
			$('.box_skitter_small').skitter({label: false, numbers: false, interval: 1000, theme: 'clean'});
			$('.box_skitter_medium').css({width: 500, height: 200}).skitter({show_randomly: true, dots: true, interval: 4000, numbers_align: 'center', theme: 'round'});
			$('.box_skitter_normal').css({width: 400, height: 300}).skitter({animation: 'blind', interval: 2000, hideTools: true, theme: 'minimalist'});
		});
	</script>


<!--  HTML CSS Template Designed by w w w . t e m p l a t e m o . c o m  --> 
</head>
<body>
<div id="templatemo_container">

	<div id="templatemo_top_panel">
        <div id="templatemo_sitetitle">
            CHHAR GONGMA MASHIK
      </div>
                <div id="templatemo_currentdate">
			<script type="text/javascript">
				<!--
				var m_names = new Array("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December");
				var d_names = new Array("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday");
				
				var currentTime = new Date()
				var day = currentTime.getDay()
				var month = currentTime.getMonth() + 1
				var date = currentTime.getDate()
				var year = currentTime.getFullYear()
				document.write( d_names[day] + ", " + date + " " + m_names[month] + " " + year + ", ")
				var currentTime = new Date()
				var hours = currentTime.getHours()
				var minutes = currentTime.getMinutes()
				if (minutes < 10){
				minutes = "0" + minutes
				}
				document.write(hours + ":" + minutes + " ")
				if(hours > 11){
				document.write("PM")
				} else {
				document.write("AM")
				}
				//-->
			</script>
        </div>
    </div> <!-- end of top panel -->
    
    <?php include('header.php') ?>
   
   
    
	<div id="templatemo_content">
   
    
    

  <div id="templatemo_main_leftcol">
        	<div class="templatemo_leftcol_subcol">
            
           	  <div id="templatemo_topnews">
                    <img src="images/7-unique-facts-about-south-indian-movies-focus.jpg" alt="image" width="285" height="264" />
                <h1>Tamang Information :</h1>
                  <p align="justify">
                    sdfkjsl;dfk sdlkflsdk flkl;sd l;skdf ;lkdsf lsd;lfskd skdjfk s ksdfj sdkjf skadjf skdajf ksdajf sdkfj ksdf ksjdf sadkfjs sdfkjsda fsdkjfds sdkjfskdlfj sdkfjsd fskda sdkfjsd sadkfjsadk fsdkfjsadk f kjsdf sdkjfksdfj sdkfjsd fksdjf ksdjfk sdfkjsa kdfsjksad <a href="#">full story</a></p>
              </div> 
                
<div id="templatemo_gallery_section">
                	<h2>Recent Picture Gallaries</h2>
                    <div id="image_section">
                        <a href="#"><img src="images/templatemo_image_02.jpg" alt="image" /></a>
                        <a href="#"><img src="images/templatemo_image_03.jpg" alt="image" /></a>
                        <a href="#"><img src="images/templatemo_image_04.jpg" alt="image" /></a>
                        <a href="#"><img src="images/templatemo_image_05.jpg" alt="image" /></a>
                        <a href="#"><img src="images/templatemo_image_06.jpg" alt="image" /></a>
                        <a href="#"><img src="images/templatemo_image_07.jpg" alt="image" /></a>
					</div>
                    <div class="view_all"><a href="#">View All Photos</a></div>
              </div>
            </div> <!-- end of left column -->
        	
    <div class="templatemo_leftcol_subcol">
				<div class="regular_section">
                    <h2>Hot News</h2>
					<div class="newsbox"><img src="images/Koala.jpg" alt="image" width="126" height="70" /><span class="newstitle">News Title 01</span><br />
                        <p>
                        sdkfj sdklfjklsd ksdjfk k ksjadf sadkjfsd ksd fkjds kjdf ksdjf kjsdkfjsd fkjd f kjd. <a href="#">full story</a>                        </p>
				  </div>
                        
<ul>
                        <li><a href="#">Tamsaling ko lagi Tamag sanghgathan</a></li>
                        <li><a href="#">Tamang bhasha ra sanskriti</a></li>
                        <li><a href="#">Tamang Bijyanka kura</a></li>
                        <li><a href="#">Rajya Starma Tamang ko Adhikar.</a></li>
                        <li><a href="#">Bidesh ma Tamang sanghgathan</a></li>
                        <li><a href="#">Nepal tamang sanghko jari Bigyapti</a></li>
                    </ul>
                    <a href="#">Read all news for the last 24 hrs</a>
                </div>
                
                <div class="regular_section">

                    <h2>General News</h2>
					<div class="newsbox"><img  src="images/Penguins.jpg" alt="image" width="106" height="71" /><span class="newstitle">News Title 02</span><br />
                        <p>
                        sjdjfka skdjflskd sdkjdskj sdkskjdskfj sdkdsjk sdkjfds kjsd ksjsdfkjkjdsf kjdf kt <a href="#">full story</a>                        </p>
				  </div>
                        
                    <ul>
                    	<li><a href="#">Prachandako abako Rajneeti</a></li>
                        <li><a href="#">Jhal Nath ko support Madhav Nepal Lai</a></li>
                        <li><a href="#">KP sharma oli nepal phirta</a></li>
                        <li><a href="#">Upendra yadav Party Eakata bata bahiriyo</a></li>
                        <li><a href="#">Nunc blandit orci sit amet risus</a></li>
                        <li><a href="#">Tamang haruko Lhoshar</a></li>
                    </ul>
                    <a href="#">Read All Latest News</a>
                </div>
                
                <p>Advertise Here</p>
                <img src="images/templatemo_image_02.jpg" width="226" height="120" />    </div>
           
            <div class="tab_section">
                <!-- start -->
                  <ul id="countrytabs" class="shadetabs">
                    <li><a href="#" rel="health" class="selected">Sport</a></li>
                    <li><a href="#" rel="entertainment">Entertainment</a></li>
                    <li><a href="#" rel="politics">Politics</a></li>
                    <li><a href="#" rel="business">Economis</a></li>
                    <li><a href="#" rel="tech_science">Technologies</a></li>
				</ul>
				
                <div class="tabcontent_section">
                    <div id="health" class="tabcontent">
                        <div class="topnews">
                            <img src="images/templatemo_image_08.jpg" alt="image" />
                            <h4>Health News</h4>
                            <p>
                            Nunc quis sem nec tincidunt. Lorem ipsum dolor sit amet, adipiscing elit. Duis vitae velit sed dui malesuada dignissim. <a href="#">Full Story</a>
                            </p>
                        </div>
                        <div class="newslist">
                            <ul>
                            	<li><a href="#">Nunc blandit orci sit amet risus</a></li>
                                <li><a href="#">Cum sociis natoque penatibus et magnis dis</a></li>
                                <li><a href="#">Lorem ipsum dolor sit amet</a></li>
                                <li><a href="#">Duis mollis aliquet ligula</a></li>
                                <li><a href="#">Maecenas adipiscing elementum ipsum.</a></li>
                                <li><a href="#">Quisque in diam a justo condimentum.</a></li>
                                <li><a href="#">Proin vel libero id erat venenatis accumsan</a></li>
                            </ul>
                            <a href="#">Read All Latest News</a>
                        </div>
			    	</div>
    
                    <div id="entertainment" class="tabcontent">
	                    <div class="topnews">
                            <img src="images/templatemo_image_12.jpg" alt="image" />
                            <h4>Entertainment News</h4>
                            <p>
                            Duis vitae velit sed dui malesuada dignissim. Lorem ipsum dolor sit amet, adipiscing elit. Nunc quis sem nec tincidunt. <a href="#">Full Story</a>
                            </p>
                        </div>
                        <div class="newslist">
                            <ul>
                                <li><a href="#">Lorem ipsum dolor sit amet</a></li>
                                <li><a href="#">Duis mollis aliquet ligula</a></li>
                                <li><a href="#">Maecenas adipiscing elementum ipsum</a></li>
                                <li><a href="#">Quisque in diam a justo condimentum</a></li>
                                <li><a href="#">Proin vel libero id erat venenatis accumsan</a></li>
                                <li><a href="#">Nunc blandit orci sit amet risus</a></li>
                                <li><a href="#">Cum sociis natoque penatibus et magnis dis</a></li>
                            </ul>
                            <a href="#">Read All Latest News</a>
                        </div>
                    </div>
                    
                    <div id="politics" class="tabcontent">
	                    <div class="topnews">
                            <img src="images/templatemo_image_08.jpg" alt="image" />
                            <h4>Politics News</h4>
                            <p>
                            Fusce sollicitudin nisl a lectus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. <a href="#">Full Story</a>
                            </p>
                        </div>
                        <div class="newslist">
                            <ul>
                           		<li><a href="#">Duis mollis aliquet ligula</a></li>
                                <li><a href="#">Lorem ipsum dolor sit amet</a></li>
                                <li><a href="#">Nunc blandit orci sit amet risus</a></li>
                                <li><a href="#">Cum sociis natoque penatibus et magnis dis</a></li>
                                <li><a href="#">Maecenas adipiscing elementum ipsum</a></li>
                                <li><a href="#">Quisque in diam a justo condimentum</a></li>
                                <li><a href="#">Proin vel libero id erat venenatis accumsan</a></li>
                            </ul>
                            <a href="#">Read All Latest News</a>
                        </div>
                    </div>
                    
                    <div id="business" class="tabcontent">
    	                <div class="topnews">
                            <img src="images/templatemo_image_12.jpg" alt="image" />
                            <h4>Business News</h4>
                            <p>
                           Pellentesque odio. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed leo. <a href="#">Full Story</a>
                            </p>
                        </div>
                        <div class="newslist">
                            <ul>
                            	<li><a href="#">Cum sociis natoque penatibus et magnis dis</a></li>
                                <li><a href="#">Quisque in diam a justo condimentum</a></li>
                                <li><a href="#">Proin vel libero id erat venenatis accumsan</a></li>
                                <li><a href="#">Lorem ipsum dolor sit amet</a></li>
                                <li><a href="#">Duis mollis aliquet ligula</a></li>
                                <li><a href="#">Maecenas adipiscing elementum ipsum</a></li>
                                <li><a href="#">Nunc blandit orci sit amet risus</a></li>
                            </ul>
                            <a href="#">Read All Latest News</a>
                        </div>
                    </div>
                    <div id="tech_science" class="tabcontent">
    	                <div class="topnews">
                            <img src="images/templatemo_image_08.jpg" alt="image" />
                            <h4>Tech &amp; Science News</h4>
                            <p>
                            Fusce sollicitudin nisl a lectus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. <a href="#">Full Story</a>
                            </p>
                        </div>
                        <div class="newslist">
                            <ul>
                                <li><a href="#">Maecenas adipiscing elementum ipsum</a></li>
                                <li><a href="#">Nunc blandit orci sit amet risus</a></li>
                                <li><a href="#">Cum sociis natoque penatibus et magnis dis</a></li>
                                <li><a href="#">Lorem ipsum dolor sit amet</a></li>
                                <li><a href="#">Duis mollis aliquet ligula</a></li>
                                <li><a href="#">Quisque in diam a justo condimentum</a></li>
                                <li><a href="#">Proin vel libero id erat venenatis accumsan</a></li>
                            </ul>
                            <a href="#">Read All Latest News</a>
                        </div>
                    </div>
				    <div>
                    
                    </div>
                    
                </div>

			<script type="text/javascript">
            
            var countries=new ddtabcontent("countrytabs")
            countries.setpersist(true)
            countries.setselectedClassTarget("link") //"link" or "linkparent"
            countries.init()
            
            </script>
            <!-- end -->

            </div>
            
            
            
    	</div> <!-- end of left column -->
        
        
        
        <div id="templatemo_main_rightcol">
        	<div class="templatemo_rcol_sectionwithborder">
            	 <div class="fluid_container">
    	
        <div class="camera_wrap camera_azure_skin" id="camera_wrap_1">
            <div data-thumb="images/slides/thumbs/bridge.jpg" data-src="images/slides/bridge.jpg">
                <div class="camera_caption fadeFromBottom">
                    Camera is a responsive/adaptive slideshow. <em>Try to resize the browser window</em>
                </div>
            </div>
            <div data-thumb="../images/slides/thumbs/leaf.jpg" data-src="images/slides/leaf.jpg">
                <div class="camera_caption fadeFromBottom">
                    It uses a light version of jQuery mobile, <em>navigate the slides by swiping with your fingers</em>
                </div>
            </div>
            <div data-thumb="images/slides/thumbs/road.jpg" data-src="images/slides/road.jpg">
                <div class="camera_caption fadeFromBottom">
                    <em>It's completely free</em> (even if a donation is appreciated)
                </div>
            </div>
            <div data-thumb="images/slides/thumbs/sea.jpg" data-src="images/slides/sea.jpg">
                <div class="camera_caption fadeFromBottom">
                    Camera slideshow provides many options <em>to customize your project</em> as more as possible
                </div>
            </div>
            <div data-thumb="images/slides/thumbs/shelter.jpg" data-src="images/slides/shelter.jpg">
                <div class="camera_caption fadeFromBottom">
                    It supports captions, HTML elements and videos and <em>it's validated in HTML5</em> (<a href="http://validator.w3.org/check?uri=http%3A%2F%2Fwww.pixedelic.com%2Fplugins%2Fcamera%2F&amp;charset=%28detect+automatically%29&amp;doctype=Inline&amp;group=0&amp;user-agent=W3C_Validator%2F1.2" target="_blank">have a look</a>)
                </div>
            </div>
            <div data-thumb="images/slides/thumbs/tree.jpg" data-src="images/slides/tree.jpg">
                <div class="camera_caption fadeFromBottom">
                    Different color skins and layouts available, <em>fullscreen ready too</em>
                </div>
            </div>
        </div><!-- #camera_wrap_1 -->

        <div class="camera_wrap camera_magenta_skin" id="camera_wrap_2">
            <div data-thumb="images/slides/thumbs/bridge.jpg" data-src="images/slides/bridge.jpg">
                <div class="camera_caption fadeFromBottom">
                    Camera is a responsive/adaptive slideshow. <em>Try to resize the browser window</em>
                </div>
            </div>
            <div data-thumb="images/slides/thumbs/leaf.jpg" data-src="images/slides/leaf.jpg">
                <div class="camera_caption fadeFromBottom">
                    It uses a light version of jQuery mobile, <em>navigate the slides by swiping with your fingers</em>
                </div>
            </div>
            <div data-thumb="images/slides/thumbs/road.jpg" data-src="images/slides/road.jpg">
                <div class="camera_caption fadeFromBottom">
                    <em>It's completely free</em> (even if a donation is appreciated)
                </div>
            </div>
            <div data-thumb="images/slides/thumbs/sea.jpg" data-src="images/slides/sea.jpg">
                <div class="camera_caption fadeFromBottom">
                    Camera slideshow provides many options <em>to customize your project</em> as more as possible
                </div>
            </div>
            <div data-thumb="images/slides/thumbs/shelter.jpg" data-src="images/slides/shelter.jpg">
                <div class="camera_caption fadeFromBottom">
                    It supports captions, HTML elements and videos and <em>it's validated in HTML5</em> (<a href="http://validator.w3.org/check?uri=http%3A%2F%2Fwww.pixedelic.com%2Fplugins%2Fcamera%2F&amp;charset=%28detect+automatically%29&amp;doctype=Inline&amp;group=0&amp;user-agent=W3C_Validator%2F1.2" target="_blank">have a look</a>)
                </div>
            </div>
            <div data-thumb="images/slides/thumbs/tree.jpg" data-src="images/slides/tree.jpg">
                <div class="camera_caption fadeFromBottom">
                    Different color skins and layouts available, <em>fullscreen ready too</em>
                </div>
            </div>
        </div>
            	<div id="templatemo_video_section">
                    <h2>&nbsp;</h2>
                    <div class="video_box">
                        <img src="images/facebook.gif" alt="image" />
                        <a href="#"><span>Play:</span>video 1</a>                    </div>
                    <div class="video_box">
                        <img src="images/twitter.gif" alt="image" />
                        <a href="#"><span>Play:</span> Video 2</a>                    </div> 
                    <div class="video_box">
                        <img src="images/google.png" alt="image" width="125" height="108" />
                        <a href="#"><span>
                        <h3><a href="#">Adevertise here</a><br />
                        </h3>
                        <div class="datetime">15:00 January 25th, 2048</div>
                    </span>Video 3</a>                    </div>
                    <div class="view_all"><a href="#">View All</a></div>
				</div>
          </div>
            
            <div class="templatemo_rcol_sectionwithborder">
           	  <div id="templatemo_newsletter_section">
                    <h1>Mashik News</h1>
                <h2><a href="epaper/january/index.html"><img src="images/Epaper.jpg" /></a></h2>
                  <img src="images/117.jpg" width="271" height="253" /> 
              </div>
            </div> 
            
            <div class="templatemo_rcol_sectionwithborder">
            	<div class="templatemo_rcol_sectionwithborder">
            	<div id="templatemo_blog_section">
                <div class="blog_box" style="height:50px;">
                <a href="https://www.facebook.com"><h3>Find Us On facebook</h3></a>
                </div>
                    <h3>Advertisement</h3>
                    
                 <?php /*?>   <div class="blog_box">
                        <h3><a href="#">Quisque rhoncus nulla quis sem</a></h3>
                        Posted by <a href="#"><span>Dolor Sit Amet</span></a> in <a href="#"><span>Duis vitae</span></a><br />
                        Aliquam tristique lacus in sapien. Suspendisse potenti. Ut sed pede.<br />
                        <div class="datetime">15:00 January 25th, 2048</div>
                    </div><?php */?>
                    
                    <div class="blog_box">
                   <?php /*?> <img width="210" style="margin-bottom:5px;" src="images/honda6.gif">
                         </a><?php */?>
                    <a style="display:block; margin-bottom:5px;" target="_blank" href="">
                          <img width="350" src="images/hiremee1.gif">
</a>     
                         
                         
                         
                    <a style="display:block; margin-bottom:5px; margin-top:5px;" target="_blank" href="">
                 <img src="images/mlb.gif" width="350px">
                 </a>
                 
                   <a style="display:block; margin-bottom:5px; margin-top:5px;" target="_blank" href="">
               <img src="images/landmark.gif" width="350px" />
                 </a>
                 
                 
                 <a  target="_blank" href="http://sumerugroup.org.np/">
<img width="350" src="images/sumeru.gif">
</a>
                   
                      <?php /*?>  <h3><a href="#">Lorem ipsum dolor sit amet</a></h3>
                        Posted by <a href="#"><span>Dolor Sit Amet</span></a> in <a href="#"><span>Duis vitae</span></a><br />
                        Integer imperdiet odio ac eros. Ut id massa. Nullam nunc. Vivamus sagittis varius lorem.<br />
                        <div class="datetime">13:00 January 21st, 2048</div><?php */?>
                    </div>   
                                       
                   <?php /*?> <div class="more_button"><a href="#">View All</a></div><?php */?>
                    
				</div>                                                              
            </div>                                                              
            </div> 
            
            <div class="templatemo_rcol_sectionwithborder">
            	<div id="templatemo_poll_section">
                    <h2>Facebook </h2>
                    <p>&nbsp;</p>
                </div>
            </div>
        </div>
    </div>
  <div>  
    <div class="interview_section">
                    <h2>Interviews</h2>
					<div class="newsbox"><img  src="images/Penguins.jpg" alt="image" width="106" height="71" /><span class="newstitle">	News Title 02</span><br />
                        <p>
                        sjdjfka skdjflskd sdkjdskj sdkskjdskfj sdkdsjk sdkjfds kjsd ksjsdfkjkjdsf kjdf kt <a href="#">full story</a>                        </p>
				  </div>
                        
                    <ul>
                    	<li><a href="#">Prachandako abako Rajneeti</a></li>
                        <li><a href="#">Jhal Nath ko support Madhav Nepal Lai</a></li>
                        <li><a href="#">KP sharma oli nepal phirta</a></li>
                        <li><a href="#">Upendra yadav Party Eakata bata bahiriyo</a></li>
                        <li><a href="#">Nunc blandit orci sit amet risus</a></li>
                        <li><a href="#">Tamang haruko Lhoshar</a></li>
                    </ul>
                    <a href="#">Read All Latest News</a>
                </div>
<div>
  
  <div class="prabash_section">
                    <h2>Prabas</h2>
                    <h2>Prabasg\</h2>
			<div class="newsbox"><img  src="images/Penguins.jpg" alt="image" width="106" height="71" /><span class="newstitle">	News Title 02</span><br />
                        <p>
                        sjdjfka skdjflskd sdkjdskj sdkskjdskfj sdkdsjk sdkjfds kjsd ksjsdfkjkjdsf kjdf kt <a href="#">full story</a>                        </p>
				  </div>
                        
                    <ul>
                    	<li><a href="#">Prachandako abako Rajneeti</a></li>
                        <li><a href="#">Jhal Nath ko support Madhav Nepal Lai</a></li>
                        <li><a href="#">KP sharma oli nepal phirta</a></li>
                        <li><a href="#">Upendra yadav Party Eakata bata bahiriyo</a></li>
                        <li><a href="#">Nunc blandit orci sit amet risus</a></li>
                        <li><a href="#">Tamang haruko Lhoshar</a></li>
                    </ul>
                    <a href="#">Read All Latest News</a>
                </div>
  </div>

  
  <div> 
    <div class="news10">
    
                        <h1>Other News</h1>
                        
					<ul>
                        <li><a href="#">Politics</a></li>
                        <li><a href="#">History</a></li>
                        <li><a href="#">Cultures</a></li>
                        <li><a href="#">Sports</a></li>
                        <li><a href="#">Language and Poetry</a></li>
                        <li><a href="#">Kala and Sangit</a></li>
                         <li><a href="#">Sangh-Sanghstha</a></li>
                        <li><a href="#">Tamang Gaun</a></li>
                    </ul>
                    
                </div>
                
               
                
                </div>
                </div>
  
  
   
    
    
<div id="templatemo_footer">
<div class="footer_leftcol">
	        Chhar Gongma Mashik Patrika<a href="http://www.templatemo.com" target="_parent"></a><br />
<br />
            <p>copyright @ 2014 chhar gongma mashik patrika. </p>
        </div>
  </div> 

</body>
</html>
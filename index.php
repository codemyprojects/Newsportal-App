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
    
    <?php include('header.php');?>
       
   
    
	<div id="templatemo_content">
   
    
    
<div class="currentphoto"><h2><marquee behavior="scroll">Recent News and Photos</marquee></h2></div>
  <div id="templatemo_main_leftcol">
  <div class="camera_wrap camera_azure_skin" id="camera_wrap_1">
  
		<?php 
		echo $sql="SELECT * FROM news_imgage_slider";
		$result=mysql_query($sql);
		while($data=mysql_fetch_assoc($result)){//print_r($data); //die();?>
            <div data-thumb="images/slides/thumbs/<?php echo $data['imgslidername']; //die();?>" data-src="images/slides/<?php echo $data['imgslidername'];  //die();?>">
			
                <div class="camera_caption fadeFromBottom">
                    <?php echo $data['caption']; ?>
                </div>
            </div>
            <?php }?>
			<?php /*
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
       
               */?>
    </div><!-- #camera_wrap_1 -->

      <?php /*?>  <div class="camera_wrap camera_magenta_skin" id="camera_wrap_2">
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
        </div><br /><?php */?>


        	<div class="templatemo_leftcol_subcol">
            
<div class="subprabash"><h1> समाचार</h1></div>
<div class="prabash_section">
                    <?php 
				
				  $sql="SELECT * FROM news_category_entertainment";
				  $res=mysql_query($sql);
				  while($data=mysql_fetch_assoc($res))
				  { ?>
                  <ul>       
                  <a href="news_lekhbichar_articles.php?catid=<?php echo $data['catid'];?>"><font color="#FF0000"><b><?php echo $data['catname'];?></b></font></a>
                  <br />
                  			<div class="newsdesc"><p align="justify"><?php echo $data['catdesc']; echo "<br />"?></p></div>
                          <?php if($data['image']!=""){?>  <img src="admin/images/<?php echo $data['image']; ?>" height="100px" width="100px" /><?php }?>
                            <a href="news_lekhbichar_articles?catid=<?php echo $data['catid'];?>">Read more</a>	                  
                  </ul> 
        <?php } ?>
              </div>
       	  
            </div> <!-- end of left column -->
        	
    <div class="templatemo_leftcol_subcol">
	  <div class="regular_section">
                  
                <div class="subnews"><h1>प्रवास</h1></div>
                
<?php 
				
				  $sql="SELECT * FROM news_category";
				  $res=mysql_query($sql);
				  while($data=mysql_fetch_assoc($res))
				  { ?>
                  <ul>       
                  <a href="news_contents1.php#?catid=<?php echo $data['catid'];?>"><h2><font color="#003399"><?php echo $data['catname'];?></font></h2></a>
                  			<?php if($data['image']!=""){?>  <img style="float:left; padding:5px" src="admin/images/<?php echo $data['image']; ?>" height="90px" width="120px" /><?php }?>
                            <p align="justify"><?php echo $data['catdesc']; echo "<br />"?></p>
                          
                            <a href="news_contents1.php?catid=<?php echo $data['catid'];?>">Read more</a>                  
                  </ul> 
        <?php } ?>
	  </div>
                
    </div>
    <div class="tab_section">
                <!-- start -->
                  
				
                <div class="tabcontent_section">
                    <div id="health" class="tabcontent">
                        <div class="topnews">
                           
                            </p>
                        </div>
                        <div class="newslist">
                            
                        </div>
			    	</div>
    
                    <div id="entertainment" class="tabcontent">
	                    <div class="topnews">
                            
                        </div>
                        <div class="newslist">
                            
                           
                        </div>
                    </div>
                    
                    <div id="politics" class="tabcontent">
	                    <div class="topnews">
                            
                           
                            </p>
                        </div>
                        <div class="newslist">
                      </div>
                    </div>
                    
                    <div id="business" class="tabcontent">
    	                <div class="topnews">
                      </div>
                        <div class="newslist">
                      </div>
                    </div>
                    <div id="tech_science" class="tabcontent">
    	                <div class="topnews">
                          
                        </div>
                        <div class="newslist">
                          
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
        
        
<!--  start of jquery slider-->
        
        <div id="templatemo_main_rightcol">
        	<div class="templatemo_rcol_sectionwithborder">
            	 <div class="fluid_container">
    	
        
<!--  end of jquery slider-->

            	<div id="templatemo_video_section">
                <h2><a href="epaper/january/index.html"><img src="images/Epaper.jpg" /></a></h2>
                   </div>
				
          </div>
            
            <div class="templatemo_rcol_sectionwithborder">
           	  <div id="templatemo_newsletter_section">
                    
               
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
                <div class="socialmedia">
               <a href="www.facebook.com"><a href="www.twitter.com"><img src="images/twitter.gif" height="100px" /></a> <img src="images/facebook.gif" height="100px" /></a></div>
                    
                    
                </div>
            </div>
        </div>
    </div>
</div>  
  
  
  
  	<div id="templatemo_content1">
   
    
    
  <div id="templatemo_main_leftcol">
  <div class="camera_wrap camera_azure_skin" id="camera_wrap_1">
  
		<?php 
		echo $sql="SELECT * FROM news_imgage_slider";
		$result=mysql_query($sql);
		while($data=mysql_fetch_assoc($result)){//print_r($data); //die();?>
            <div data-thumb="images/slides/thumbs/<?php echo $data['imgslidername']; //die();?>" data-src="images/slides/<?php echo $data['imgslidername'];  //die();?>">
			
                <div class="camera_caption fadeFromBottom">
                    <?php echo $data['caption']; ?>
                </div>
            </div>
            <?php }?>
			<?php /*
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
       
               */?>
    </div><!-- #camera_wrap_1 -->

      <?php /*?>  <div class="camera_wrap camera_magenta_skin" id="camera_wrap_2">
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
        </div><br /><?php */?>


        	<div class="templatemo_leftcol_subcol">
            
<div class="subprabash"><h1> लेख विचार</h1></div>
<div class="prabash_section">
                    <?php 
				
				  $sql="SELECT * FROM news_category_entertainment";
				  $res=mysql_query($sql);
				  while($data=mysql_fetch_assoc($res))
				  { ?>
                  <ul>       
                  <a href="news_lekhbichar_articles.php?catid=<?php echo $data['catid'];?>"><font color="#FF0000"><b><?php echo $data['catname'];?></b></font></a>
                  <br />
                  			<div class="newsdesc"><p align="justify"><?php echo $data['catdesc']; echo "<br />"?></p></div>
                          <?php if($data['image']!=""){?>  <img src="admin/images/<?php echo $data['image']; ?>" height="100px" width="100px" /><?php }?>
                            <a href="news_lekhbichar_articles?catid=<?php echo $data['catid'];?>">Read more</a>	                  
                  </ul> 
        <?php } ?>
              </div>
       	  
            </div> <!-- end of left column -->
        	
    <div class="templatemo_leftcol_subcol">
	  <div class="regular_section">
                  
                <div class="subnews"><h1>अन्तर्वार्ता</h1></div>
                
<?php 
				
				  $sql="SELECT * FROM news_category";
				  $res=mysql_query($sql);
				  while($data=mysql_fetch_assoc($res))
				  { ?>
                  <ul>       
                  <a href="news_contents1.php?catid=<?php echo $data['catid'];?>"><h2><font color="#003399"><?php echo $data['catname'];?></font></h2></a>
                  			<p align="justify"><?php echo $data['catdesc']; echo "<br />"?></p>
                          <?php if($data['image']!=""){?>  <img src="admin/images/<?php echo $data['image']; ?>" height="100px" width="100px" /><?php }?>
                            <a href="news_contets1.php?catid=<?php echo $data['catid'];?>">Read more</a>	                  
                  </ul> 
        <?php } ?>
	  </div>
                
    </div>
    <div class="tab_section">
                <!-- start -->
                  
				
                <div class="tabcontent_section">
                    <div id="health" class="tabcontent">
                        <div class="topnews">
                           
                            </p>
                        </div>
                        <div class="newslist">
                            
                        </div>
			    	</div>
    
                    <div id="entertainment" class="tabcontent">
	                    <div class="topnews">
                            
                        </div>
                        <div class="newslist">
                            
                           
                        </div>
                    </div>
                    
                    <div id="politics" class="tabcontent">
	                    <div class="topnews">
                            
                           
                            </p>
                        </div>
                        <div class="newslist">
                      </div>
                    </div>
                    
                    <div id="business" class="tabcontent">
    	                <div class="topnews">
                      </div>

                        <div class="newslist">
                      </div>
                    </div>
                    <div id="tech_science" class="tabcontent">
    	                <div class="topnews">
                          
                        </div>
                        <div class="newslist">
                          
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
        
        
<!--  start of jquery slider-->
        
        <div id="templatemo_main_rightcol">
        	<div class="templatemo_rcol_sectionwithborder">
            	 <div class="fluid_container">
    	
        
<!--  end of jquery slider-->

            	<div id="templatemo_video_section">
                <h2><a href="epaper/january/index.html"><img src="images/Epaper.jpg" /></a></h2>
                   </div>
				
          </div>
            
            <div class="templatemo_rcol_sectionwithborder">
           	  <div id="templatemo_newsletter_section">
                    
               
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
            
           
                    
                    
                </div>
                        	<div class="templatemo_leftcol_subcol1">
            
<div class="subprabash"><h1>संस्कृति</h1></div>
<div class="prabash_section">
                    <?php 
				
				  $sql="SELECT * FROM news_category_entertainment";
				  $res=mysql_query($sql);
				  while($data=mysql_fetch_assoc($res))
				  { ?>
                  <ul>       
                  <a href="news_lekhbichar_articles.php?catid=<?php echo $data['catid'];?>"><font color="#FF0000"><b><?php echo $data['catname'];?></b></font></a>
                  <br />
                  			<div class="newsdesc"><p align="justify"><?php echo $data['catdesc']; echo "<br />"?></p></div>
                          <?php if($data['image']!=""){?>  <img src="admin/images/<?php echo $data['image']; ?>" height="100px" width="100px" /><?php }?>
                            <a href="news_lekhbichar_articles?catid=<?php echo $data['catid'];?>">Read more</a>	                  
                  </ul> 
        <?php } ?>
              </div>
       	  
            </div> <!-- end of left column -->
            
            </div>
                    	<div class="templatemo_leftcol_subcol">
            
<div class="subprabash"><h1> धर्म र दर्शन</h1></div>
<div class="prabash_section">
                    <?php 
				
				  $sql="SELECT * FROM news_category_entertainment";
				  $res=mysql_query($sql);
				  while($data=mysql_fetch_assoc($res))
				  { ?>
                  <ul>       
                  <a href="news_lekhbichar_articles.php?catid=<?php echo $data['catid'];?>"><font color="#FF0000"><b><?php echo $data['catname'];?></b></font></a>
                  <br />
                  			<div class="newsdesc"><p align="justify"><?php echo $data['catdesc']; echo "<br />"?></p></div>
                          <?php if($data['image']!=""){?>  <img src="admin/images/<?php echo $data['image']; ?>" height="100px" width="100px" /><?php }?>
                            <a href="news_lekhbichar_articles?catid=<?php echo $data['catid'];?>">Read more</a>	                  
                  </ul> 
        <?php } ?>
              </div>
       	  
            </div> <!-- end of left column -->
                    	<div class="templatemo_leftcol_subcol">
            
<div class="subprabash"><h1>मनोरञ्जन</h1></div>
<div class="prabash_section">
                    <?php 
				
				  $sql="SELECT * FROM news_category_entertainment";
				  $res=mysql_query($sql);
				  while($data=mysql_fetch_assoc($res))
				  { ?>
                  <ul>       
                  <a href="news_lekhbichar_articles.php?catid=<?php echo $data['catid'];?>"><font color="#FF0000"><b><?php echo $data['catname'];?></b></font></a>
                  <br />
                  			<div class="newsdesc"><p align="justify"><?php echo $data['catdesc']; echo "<br />"?></p></div>
                          <?php if($data['image']!=""){?>  <img src="admin/images/<?php echo $data['image']; ?>" height="100px" width="100px" /><?php }?>
                            <a href="news_lekhbichar_articles?catid=<?php echo $data['catid'];?>">Read more</a>	                  
                  </ul> 
        <?php } ?>
              </div>
       	  
            </div> <!-- end of left column -->
        </div>
        
        
    </div>
    
</div> 
</div>
  
  
   
<?php include("footer.php"); ?>
    


</body>
</html>
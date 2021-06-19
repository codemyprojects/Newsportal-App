<div id="templatemo_menu">
        <ul>
           <li><a href="index.php"  class="current">गृहपृष्ठ</a></li>
           <!-- 
            <li><a href="#">News</a></li>
            <li><a href="#">Article</a></li>
            <li><a href="#">Politics</a></li> 
            <li><a href="#">Entertainment</a></li>
            <li><a href="#">Videos</a></li>  
            <li><a href="#">Audio</a></li> 
            <li><a href="#">Contact US</a></li>
            <li><a href="#">Publication</a></li>  -->
           
                 <?php      
				             mysql_query ("set character_set_client='utf8'"); 
                             mysql_query ("set character_set_results='utf8'"); 
							 $sql="select * from news_pages_headers where status=1";
							//mysql_real_escape($sql);
							$respage = executequery($sql);
							while($datapage = mysql_fetch_assoc($respage)) { 
							
							
							
							
							?>  
								<li>
                                <?php if($datapage['pagetitle']==utf8_encode("home")){?>
                                <a href="index.php?page=<?php echo $datapage['pagetitle'];?>"><?php echo $datapage['pagetitle'];?></a>								
                                <?php  } else{?>
                                <a href="news_contents.php?page=<?php echo $datapage['pid']; ?>"><?php echo $datapage['pagetitle'];?></a>								
                                <?php } ?>
				
									
                                   
									<?php } //end of while?>	
                           
                      		 
					
								

						
                               
                  
        </ul> 
	</div>
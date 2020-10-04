<?php




	/*
	** Get All Function v2.0
	** Function To Get All Records From Any Database Table
	*/

	function getAllFrom($field, $table, $where = NULL, $and = NULL, $orderfield, $ordering = "DESC") {

		global $con;

		$getAll = $con->prepare("SELECT $field FROM $table $where $and ORDER BY $orderfield $ordering");

		$getAll->execute();

		$all = $getAll->fetchAll();

		return $all;

	}


	/*
	** Sidebar Function v1.0
	** Sidebar Function That Echo The Page Sidebar In Case The Page
	*/

	function getSidebar($anie_list = 0, ...$pram) {
		global $tpl;
		global $_GET;
		
		if($anie_list != 0){
			// $anie_list = true;
		}
		global $con;
		global $actual_link;
		include $tpl . 'sidebar.php';
		
	}





	/*
	** Check Items Function v1.0
	** Function to Check Item In Database [ Function Accept Parameters ]
	** $select = The Item To Select [ Example: user, item, category ]
	** $from = The Table To Select From [ Example: users, items, categories ]
	** $value = The Value Of Select [ Example: ghamdan, Box, Electronics ]
	*/

	function checkItem($select, $from, $value) {

		global $con;

		$statement = $con->prepare("SELECT $select FROM $from WHERE $select = ?");

		$statement->execute(array($value));

		$count = $statement->rowCount();

		return $count;

	}




	/*
	** Check evaluation ItemFunction v1.0
	** Function to Check evaluation return 5 star
	** 
	*/


function evaluation($eval) {
	
	if ($eval <= 20 ) {
		echo '<i class=" active fa fa-star "></i>';
		echo '<i class="  fa fa-star "></i>';
		echo '<i class="  fa fa-star "></i>';
		echo '<i class="  fa fa-star "></i>';
		echo '<i class="  fa fa-star "></i>';
		
	}else if ($eval <= 40) {
		echo '<i class=" active fa fa-star "></i>';
		echo '<i class=" active fa fa-star "></i>';
		echo '<i class="  fa fa-star "></i>';
		echo '<i class="  fa fa-star "></i>';
		echo '<i class="  fa fa-star "></i>';
	}else if ($eval <= 60) {
		echo '<i class=" active fa fa-star "></i>';
		echo '<i class=" active fa fa-star "></i>';
		echo '<i class=" active fa fa-star "></i>';
		
		echo '<i class="  fa fa-star "></i>';
		echo '<i class="  fa fa-star "></i>';
	}else if ($eval <= 80) {
		echo '<i class=" active fa fa-star "></i>';
		echo '<i class=" active fa fa-star "></i>';
		echo '<i class=" active fa fa-star "></i>';
		echo '<i class=" active fa fa-star "></i>';
		echo '<i class="  fa fa-star "></i>';
	}else if ($eval > 80) {
		echo '<i class=" active fa fa-star "></i>';
		echo '<i class=" active fa fa-star "></i>';
		echo '<i class=" active fa fa-star "></i>';
		echo '<i class=" active fa fa-star "></i>';
		echo '<i class=" active fa fa-star "></i>';
	}
	
	
}
















	/*
	** Title Function v1.0
	** Title Function That Echo The Page Title In Case The Page
	** Has The Variable $pageTitle And Echo Defult Title For Other Pages
	*/

	function getTitle() {
		global $con;
		$getUser = $con->prepare("SELECT * FROM settings");
		$getUser->execute(array());
		$info = $getUser->fetch();
		

		global $pageTitle;

		if (isset($pageTitle)) {

			echo  $info['name'] . ' | ' . $pageTitle;

		} else {

			echo $info['name'] ;

		}
	}



	/*
	** Slider Function v1.0
	** Slider Function That Set The Slider In Page 
	** Has The Variable $pageSlider And false Not Set The Slider In Page
	*/

	function getSlider() {

		global $pageSlider;

		if (isset($pageSlider)) {

			echo $pageSlider;

		} else {

			echo 'false';

		}
	}

	/*
	** Trust Status Function v1.0
	** TrustStatus Function That Set The Trust In Echo  
	** Has The Variable $TrustStatus 
	*/

	function setTrustStaus($TrustStatus = 0) {

		//global $TrustStatus;

			
			if ($TrustStatus == 0) {
				return ' مشترك FREE ';
			}else if ($TrustStatus == 1) {
				return ' مشترك VIP فضي ';
			}else if ($TrustStatus == 2) {
				return ' مشترك VIP برنز';
			}else if ($TrustStatus == 3) {
				return ' مشترك VIP دهبي';
			}else if ($TrustStatus == 4) {
				return ' مشترك VIP الماسي';
			}
		
	}


	/*
	** Trust Status Function v1.0
	** TrustStatus Function That Set The Trust In Echo  
	** Has The Variable $TrustStatus 
	*/

	function supportType($TrustStatus = 0) {

		//global $TrustStatus;

			
			if ($TrustStatus == 0) {
				return ' مجاني';
			}else if ($TrustStatus == 1) {
				return ' قوي';
			}else if ($TrustStatus == 2) {
				return ' مميز';
			}else if ($TrustStatus == 3) {
				return ' VIIP';
			}else if ($TrustStatus == 4) {
				return ' VIP خرافي';
			}
		
	}







	/*
	** Home Redirect Function v3.0
	** This Function Accept Parameters
	** $theMsg = Echo The Message [ Error | Success | Warning ]
	** $url = The Link You Want To Redirect To
	** $seconds = Seconds Before Redirecting
	*/

	function redirectHome($theMsg = "", $url = null, $bakurl = null, $seconds = 3) {
		global  $actual_link;
		if ($url === null && $bakurl === null) {

			$url = $actual_link;

			$link = 'الصفحة الرئيسة';

		} else if(!$bakurl == null ){
			
		$url = $bakurl;
		$link = ' ';
		
		} else {

			if (isset($_SERVER['HTTP_REFERER']) && $_SERVER['HTTP_REFERER'] !== '') {

				$url = $_SERVER['HTTP_REFERER'];

				$link = 'الصفحة السابقة';

			} else {

				$url = $actual_link;

				$link = 'الصفحة الرئيسة';

			}

		}

		echo $theMsg;

		echo "<div class='alert alert-info'>سيتم تخويلك الي $link خلال  $seconds ثانية.</div>";

		header("refresh:$seconds;url=$url");

		exit();

	}

	/*
	** Page Redirect Function v1.0
	** This Function Accept Parameters
	** $url = The Link You Want To Redirect To
	*/

	function redirectPages() {
		global $actual_link;
	

			if (isset($_SERVER['HTTP_REFERER']) && $_SERVER['HTTP_REFERER'] !== '') {

				$url = $_SERVER['HTTP_REFERER'];


			} else {

				$url = $actual_link;


			}
return $url;

	}

	/*
	** Count Number Of anime Function v1.0
	** Function To Count Number Of anime Rows
	** $item = The Item To Count
	** $table = The Table To Choose From
	*/

	function countanime($item, $table) {

		global $con;

		$stmt2 = $con->prepare("SELECT COUNT($item) FROM $table");

		$stmt2->execute();

		return $stmt2->fetchColumn();

	}

	/*
	** Get Latest Records Function v1.0
	** Function To Get Latest anime From Database [ Users, anime, Comments ]
	** $select = Field To Select
	** $table = The Table To Choose From
	** $order = The Desc Ordering
	** $limit = Number Of Records To Get
	*/

	function getLatest($select, $table, $order, $limit = 5) {

		global $con;

		$getStmt = $con->prepare("SELECT $select FROM $table ORDER BY $order DESC LIMIT $limit");

		$getStmt->execute();

		$rows = $getStmt->fetchAll();

		return $rows;

	}


/*
Converting timestamp to time ago in PHP e.g 1 day ago, 2 days ago…

time_elapsed_string();

*/
	// echo time_elapsed_string('2013-05-01 00:22:35');
// echo time_elapsed_string('@1367367755'); # timestamp input
// echo time_elapsed_string('2013-05-01 00:22:35', true);
function time_elapsed_string($datetime, $full = false) {
    $now = new DateTime;
    $ago = new DateTime($datetime);
    $diff = $now->diff($ago);

    $diff->w = floor($diff->d / 7);
    $diff->d -= $diff->w * 7;

    $string = array(
        'y' => 'سنة',
        'm' => 'شهر',
        'w' => 'أسبوع',
        'd' => 'يوما',
        'h' => 'ساعة',
        'i' => 'دقيقة',
        's' => 'ثانية',
    );
    foreach ($string as $k => &$v) {
        if ($diff->$k) {
          
            if($diff->$k == 1){
               
                    $v =   ($diff->$k > 1 ? ' ' : '') . $v;
                
                

            }else {
                if($k == "s" && $diff->$k == 2){

                    $v = 'ثانيتان';

               }else if($k == "s" && $diff->$k <=10){

                $v = $diff->$k . '  ' .  ($diff->$k > 1 ? ' ' : '') . 'ثواني';

                 }else if($k == "i" && $diff->$k == 2){
                    $v = 'دقيقتان';

                 }else if($k == "i" && $diff->$k <=10){

                    $v = $diff->$k . '  ' .  ($diff->$k > 1 ? ' ' : '') . 'دقائق';
    
                     }else if($k == "h" && $diff->$k == 2){
                        $v = 'ساعتان';
    
                     }else if($k == "h" && $diff->$k <=10){

                        $v = $diff->$k . '  ' .  ($diff->$k > 1 ? ' ' : '') . 'ساعات ';
        
                         }else if($k == "d" && $diff->$k == 2){
                            $v = 'يومين ';
        
                         }else if($k == "d" && $diff->$k <=10){

                            $v = $diff->$k . '  ' .  ($diff->$k > 1 ? ' ' : '') . ' أيام';
            
                         }else if($k == "w" && $diff->$k == 2){
                            $v = 'أسبوعين ';
        
                         }else if($k == "w" && $diff->$k <=10){

                            $v = $diff->$k . '  ' .  ($diff->$k > 1 ? ' ' : '') . 'أسابيع';
            
                         }else if($k == "m" && $diff->$k == 2){
                            $v = 'شهرين ';
        
                         }else if($k == "m" && $diff->$k <=10){

                            $v = $diff->$k . '  ' .  ($diff->$k > 1 ? ' ' : '') . 'أشهر';
            
                         }else if($k == "y" && $diff->$k == 2){
                            $v = 'سنتين ';
        
                         }else if($k == "y" && $diff->$k <=10){

                            $v = $diff->$k . '  ' .  ($diff->$k > 1 ? ' ' : '') . 'سنوات';
            
                         }
                 
                 
                 else {

                    $v = $diff->$k . '  ' .  ($diff->$k > 1 ? ' ' : '') . $v;
                }
            }
            
        } else {
            unset($string[$k]);
        }
    }

    

    if (!$full) $string = array_slice($string, 0, 1);
  

    if($string){
        return ' منذ  ' . implode(', ', $string);
    }else {
        return 'الان ';
    }
}

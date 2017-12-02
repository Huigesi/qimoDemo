<?php
    header("Content-type:text/html;charset=utf-8");
		include("conn.php");
		include("init.inc.php");
		$xh = $_POST['xh'];
		$cj = $_POST['cj'];
		$km = $_POST['km'];
	
		$sql = "insert into tb_grade (xh,km,cj) values ('$xh','$km','$cj')";
			
		if($r = mysql_query($sql)){
			echo '<script>alert("增加成功");location.href="showgrade.php";</script>';
		    
		}else{
			echo '<script>alert("增加失败，可能存在同名的学号");history.go(-1);</script>';
			//echo mysql_error();
		}
		
		
?>
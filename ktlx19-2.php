<?php
  include("conn.php");
   if(isset($_POST['xh'])){
		
		include("init.inc.php");
		$xh = $_POST['xh'];
		$sql = "select g.xh,s.xm,g.km,g.cj from tb_grade g,tb_stuinf s where g.xh='$xh' and g.xh=s.xh";
		$r = mysql_query($sql);
		if($row = mysql_fetch_array($r)){
		while($row = mysql_fetch_array($r)){
			$array[]=$row;
		}

			$ary = $array;
			//var_dump($ary);
			$smarty->assign("ary",$ary);
			$smarty->display("grade.html");
		}else{
			echo '<script>alert("没有此学号的学生");location.href="showgrade.php";</script>';	
		}
		
   }else{
	   echo '<script>alert("请先输入要查询的学生的学号");location.href="showgrade.php";</script>';	
   }

	
?>
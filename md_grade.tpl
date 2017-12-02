<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>显示学生信息</title>
</head>

<body>
<h1 align="center">修改学生成绩</h1>
<div style="margin:0 auto; width:300px; margin-top:20px; border:inset #000 medium; padding:20px;">
<form action="md_studo.php" method="post" >
     <input type="hidden" name="oldxh" value="<{$stu.xh}>"/>
     <input type="hidden" name="km" value="<{$stu.km}>"/><!--把学号放在隐藏区域，万一修改了学号还可以知道原来的学号是什么-->
	学号:<{$stu.xh}><br/>
    科目:<{$stu.km}><br/>
    成绩<input type="text" name="cj" value="<{$stu.cj}>"/><br/>
    <input type="submit" name="sub" value="确定"/>
</form>
</div>
</body>
</html>

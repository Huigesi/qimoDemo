<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>显示学生信息-课堂练习二</title>
</head>

<body>
    <a href="goindex.html">返回</a>
    <hr/>
<h1 align="center">学生信息表</h1>
<center><a href="add_stu.html">添加学生</a></center>
<table border="1" style="border-collapse:collapse" align="center">
	<tr><td>学号</td><td>姓名</td><td>性别</td><td>班级</td><td>修改</td><td>删除</td></tr>
    
    <{foreach from=$stu item=s}>
    <tr>
    	<td><{$s.xh}></td>
        <td><{$s.xm}></td>
        <td><{if ($s.sex==0)}>男<{else}>女<{/if}></td>
        <td><{$s.s_class}></td>
        <td><a href="md_stu.php?xh=<{$s.xh}>">修改</a></td><td><a href="del_stu.php?xh=<{$s.xh}>">删除</a></td>
     </tr>
    <{/foreach}>
    
</table>
<hr/>
</body>
</html>

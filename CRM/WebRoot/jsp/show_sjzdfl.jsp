<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>录入字典分类</title>
  </head>
  <body>
<form action="updateSjzdfl.action" method="post">
<center><img src="image/user.gif"><font size="2">录入数据字典分类</font></center>
	<table align="center" border="1" cellspacing="0">
		<tr bgcolor="#666666" height="27">
			<td align="center"><font color="#FFFFFF" size="2">序号</font></td>
			<td align="center"><font color="#FFFFFF" size="2">启用</font></td>
			<td align="center"><font color="#FFFFFF" size="2">选项</font></td>
		</tr>
		
		<s:iterator value="#request.allSjzdfl" id="sjzdfl">
			<tr bgcolor="#E3E3E3" >
				<td align="center"><s:property value="#sjzdfl.sjzdflId"/></td>
				<s:hidden name="sjzdflIds" value="%{#sjzdfl.sjzdflId}"></s:hidden>
				<td align="center"><input type="checkbox" 
				<s:if test="#sjzdfl.enable == 'yes' ">
				 checked="checked"
				</s:if>
				name="checks" value='qiyong<s:property value="#sjzdfl.sjzdflId"/>'
				> </td>
				<td align="center"><input type="text" name="sjzdflmcs"  value='<s:property value="#sjzdfl.sjzdflmc"/>'> </td>
		    </tr>
		</s:iterator>
	</table>
	<br>
	<center><input type="submit" value="提交">  </center>
</form>
  </body>
</html>

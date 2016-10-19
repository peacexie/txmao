﻿<!--#include file="_config.asp"-->
<html>
<head>
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><%=Config_Name%>后台管理中心</title>
<link href="../inc/spub.css" rel="stylesheet" type="text/css">
<script src="../func1/Func_JS.js" type="text/javascript"></script>
<style type="text/css">
table.f09 td {
	font-size:12px;
	line-height:110%;
	letter-spacing:0px;
	word-wrap:break-word;
	word-break:break-all;
}
</style>
</head>
<body>
<%

KW = RequestS("KW","C",48)
KT = RequestS("KT","C",48) 'Tels;Cont;Result;IP;User
TM  = RequestS("TM","C",255)

yAct = Request("yAct") 
Page = RequestS("Page","N",1) 

sqlK = ""
if KW&"" <> "" then
  If KT="Tels" Then
    sqlK = sqlK& " AND ( LogTels LIKE '%"&KW&"%' ) " 
  ElseIf KT="Cont" Then
    sqlK = sqlK& " AND ( LogCont LIKE '%"&KW&"%' ) "
  ElseIf KT="Result" Then
    sqlK = sqlK& " AND ( LogRes LIKE '%"&KW&"%' ) "
  ElseIf KT="IP" Then
    sqlK = sqlK& " AND ( LogAddIP LIKE '%"&KW&"%' ) "
  ElseIf KT="User" Then
    sqlK = sqlK& " AND ( LogAUser LIKE '%"&KW&"%' ) "
  Else
    sqlK = sqlK& " AND ( LogCont LIKE '%"&KW&"%' ) " 
  End If
end if

If Left(yAct,5)="del_M" Then

  nTime = Int(Mid(yAct,6,1))*-1
  sTime = DateAdd("m",nTime,Now())
  sql = " DELETE FROM [SmsSend] WHERE LogATime<="&cfgTimeC&sTime&cfgTimeC
  Call rs_DoSql(conn,sql)
  Msg = "删除成功["&yAct&"]!"
  sqlK = "" 
  'Response.Write sql 

ElseIf yAct = "dReset" Then
	  Call Chk_Perm1("{Admin}","del") 
	  sql = " DELETE FROM [SmsSend] "
	  Call rs_DoSql(conn,sql)
	  Call Add_Log(conn,Session("UsrID"),"Reset Sms Logs！","Tools","Tools")
	  Msg = "Reset删除成功!"
	  
End If 

   sql = " SELECT * FROM SmsSend "
   sql =sql& " WHERE 1=1 "&sqlK
   sql =sql&" ORDER BY LogID DESC "  
   Set rs=Server.Createobject("Adodb.Recordset")      
   rs.Open Sql,conn,1,1
   rs.PageSize = 50
if int(Page)>rs.PageCount or int(Page)<0 Then
  Page = 1
End If

%>
<table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
  <form action="?" method="post" name="fsch9">
    <tr bgcolor="#FFFFFF">
      <td width="20%" align="center" nowrap bgcolor="#FFFFFF"><strong>发送记录 LOG管理</strong></td>
      <td align="left" nowrap bgcolor="#FFFFFF"><font color="#FF0000"><%=MSG%></font></td>
      <td width="30%" align="right" nowrap bgcolor="#FFFFFF"><select name="KT" id="KT">
          <%=Get_SOpt("Tels;Cont;Result;IP;User","Tels(电话);Cont(内容);Result(结果);IP(IP);User(帐号)",KT,"")%>
        </select>
        <input name="KW" type="text" id="KW" value="<%=KW%>" size="8" maxlength="12">
        <input type="submit" name="Submit" value="查询"></td>
    </tr>
  </form>
</table>
<table width="100%"  border="0" cellpadding="1" cellspacing="1" class="f09">
  <tr bgcolor="f4f4f4">
    <td height="23" colspan="7"><%=RS_Page(rs,Page,"?send=pag&KT="&KT&"&KW="&KW&"",1)%></td>
  </tr>
  <tr bgcolor="e0e0e0">
    <td height="21" align="right" nowrap>No</td>
    <td width="35%" nowrap bgcolor="e0e0e0">Tels</td>
    <td width="35%" nowrap bgcolor="e0e0e0">Cont</td>
    <td align="center" nowrap>Fee</td>
    <td align="center" nowrap>Result</td>
    <td align="center" nowrap>Time/IP/User</td>
  </tr>
  <tr bgcolor="909090">
    <td colspan="6" align="right"></td>
  </tr>
  <%
  'Response.Write(chr(127)&chr(128))
  if not rs.eof then
  rs.AbsolutePage = Page
  for i = 1 to rs.PageSize
  
		if i mod 2 = 1 then
		  col = "#ffffff"
		else
		  col = "#f0f0f0"
		end if

  LogID   = rs("LogID")
  LogTels = rs("LogTels")
  LogCont = smpShowCont(rs("LogCont"))
  LogRes  = Replace(rs("LogRes"),";","<br>")
  LogRCnt = rs("LogRCnt")
  LogAddIP = rs("LogAddIP")
  LogAUser = rs("LogAUser")
  LogATime = rs("LogATime")
  %>
  <tr bgcolor="<%=col%>">
    <td align="right" valign="top"><%=(Page-1)*rs.PageSize+i%></td>
    <td valign="top"><%=LogTels%></td>
    <td valign="top"><%=LogCont%></td>
    <td align="center" valign="top" nowrap><%=LogRCnt%></td>
    <td align="center" valign="top" nowrap><%=LogRes%></td>
    <td align="center" valign="top" nowrap><%=LogATime%><br>
      <%=LogAddIP%><br>
    <%=LogAUser%></td>
  </tr>
  <%
  rs.movenext
  if rs.eof then exit for
  next
  %>
  <tr bgcolor="909090">
    <td colspan="6" align="right"></td>
  </tr>
  <form action="?" method="post" name="fdel8">
  <tr bgcolor="e0e0e0">
    <td colspan="7" align="right" style="padding-right:50px"><select name="yAct" id="yAct" >
        <option value="del_M1">删除.1个月前</option>
        <option value="del_M2">删除.2个月前</option>
        <option value="del_M3">删除.3个月前</option>
      </select>
      <input type="submit" name="Submit2" value="执行"></td>
  </tr>
  </form>
  <%
  else
%>
  <tr align="center">
    <td colspan="6">无记录</td>
  </tr>
  <tr bgcolor="909090">
    <td colspan="6" align="right"></td>
  </tr>
  <%
  end if
rs.close()
set rs = nothing  
%>
</table>

</body>
</html>

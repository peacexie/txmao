﻿<!--#include file="../../sadm/func1/func1.asp"-->
<!--#include file="../../sadm/func2/Func2.asp"-->
<!--#include file="../../sadm/func1/func_opt.asp"-->
<!--#include file="../../sadm/func1/func_file.asp"-->
<!--#include file="config.asp"-->
<script src="/sadm/func1/Func_JS.js" type="text/javascript"></script>
<html>
<head>
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><%=Config_Name%>后台管理中心</title>
<link href="../../inc/adm_inc/adm_style.css" rel="stylesheet" type="text/css">
</head>
<body>

<%

yAct = Request("yAct") 
Page = RequestS("Page","N",1)
KW = RequestS("KW",3,24)
TP = RequestS("TP",3,255)

	If KW&"" <> "" Then
	  sqlK = sqlK & " AND ( InfSubj LIKE '%"&KW&"%' "
	  'sqlK = sqlK & " OR InfCont LIKE '%"&KW&"%' "
	  sqlK = sqlK & " ) " 
	End If
	If TP&"" <> "" then
	  sqlK = sqlK & " AND (InfType LIKE '"&TP&"%') " 
	End If

cID = 0
sID = ""
  yVal = RequestS("yVal","C",24)
  For iy = 1 To Request.Form("yID").Count
    iID = RequestSafe(Request.Form("yID").item(iy),3,96) 
    If iID<>"" Then
	  sID = sID&"'"&iID&"',"
	  cID = cID + 1
	End If
  Next

If yAct="del_sel" then
	Call rs_DelImg("VoteInfo",sID,"../../upfile/vote/")
	'Call rs_DelFile("VoteInfo",sID,"../../web/vote/","../../upfile/vote/","")
    Msg = cID&" 条记录删除成功!"
End If
    sql = " SELECT VoteInfo.* FROM [VoteInfo] "
	sql =sql& " WHERE KeyMod='"&ModID&"' "&sqlK
	sql =sql& " ORDER BY KeyID DESC" ': Response.Write sqlk'SetTop,
   Set rs=Server.Createobject("Adodb.Recordset")
   rs.Open Sql,conn,1,1
   rs.PageSize = 15 
If Int(Page)>rs.PageCount Or Int(Page)<1 Then
  Page = 1
End If

'Call rs_DoSql(conn,"UPDATE VoteInfo SET SetShow='Y' ")

%>
<table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" bgcolor="E0E0E0">
  <tr align="center" bgcolor="E0E0E0">
    <td height="27" colspan="10" align="center" bgcolor="f8f8f8"><table width="100%" border="0" cellpadding="3" cellspacing="0">
        <tr align="center" bgcolor="#FFFFFF">
          <td width="30%" align="center" bgcolor="#FFFFFF"><strong>[投票项目]管理<br>
</strong> <a href="../../vote/index.asp" target="_blank">演示</a> | <a href="info_add.asp?TPU=<%=ModID%>">新增&gt;&gt;</a></td>
          <td width="30%" align="center" bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<font color="#FF0000"><%=msg%></font></td>
          <form name="fm01" method="post" action="?">
            <td align="right" nowrap><input name="send" type="hidden" id="send" value="sch">
              信息类别:
              <select class=form id=select name=TP style="width:150px; ">
			  <%=Get_rsTree(conn,"SELECT * FROM WebTyps WHERE TypMod='"&ModID&"' ORDER BY TypLayer ",InfType,"Lay") %>
              </select>
              关键字:
              <input name="KW" type="text" id="KW" value="<%=KW%>" size="12">
              <input type="submit" name="Submit" value="搜索">            </td>
          </form>
        </tr>
      </table></td>
  </tr>
  <tr align="center" bgcolor="E0E0E0">
    <td height="27" colspan="10" align="center" bgcolor="f8f8f8"><%= RS_Page(rs,Page,"?send=pag&TP="&TP&"&KW="&KW&"&TP2="&TP2&"",1)%></td>
  </tr>
  <tr align="center" bgcolor="E0E0E0">
    <td width="5%" height="27" align="center" nowrap>NO</td>
    <td width="40%" height="27" align="center">主题</td>
    <td height="27" align="center" nowrap>类别</td>
    <td align="center" nowrap>贺奖通知</td>
    <td align="center" nowrap>&nbsp;</td>
    <td align="center" nowrap><A href="vote_logs.asp" target="mainFrame">投票记录</A></td>
    <td align="center" nowrap>发布</td>
    <td align="center" nowrap>选项设置</td>
    <td height="27" align="center" nowrap>修改</td>
  <td align="center" nowrap>&nbsp;</td>
  </tr>
  <tr bgcolor="#333333">
    <td colspan="12" align="right" nowrap></td>
  </tr>
  <form name="flist" method="post" action="?">
    <%
  If not rs.eof then
  rs.AbsolutePage = Page
  For i = 1 To rs.PageSize
		If i mod 2 = 1 Then
		  col = "#ffffff"
		Else
		  col = "#F8F8F8"
		End If
KeyID = rs("KeyID")
KeyMod = rs("KeyMod")
KeyCode = rs("KeyCode")
InfType = rs("InfType")
TypName = rs_Val("","SELECT TypName FROM WebTyps WHERE TypLayer='"&InfType&"'") 'rs("TypName")
InfSubj = rs("InfSubj")
ImgName = rs("ImgName")
LogATime = rs("LogATime")
InfSubj = Show_Text(InfSubj) 'Show_SetSubj(InfSubj,SetHot,SetSub)
	  %>
    <tr bgcolor="<%=col%>">
      <td align="right" nowrap><%=i%>
      <input 
			name="yID" type="checkbox" id="yID" value="<%=KeyID%>"></td>
      <td><a href="info_edit.asp?ID=<%=KeyID%>" target="_blank"><%=InfSubj%></a>      </td>
      <td align="center" nowrap><%=TypName%></td>
      <td align="center" nowrap>发布/修改</td>
      <td align="center" nowrap>&nbsp;</td>
      <td align="center" nowrap bgcolor="<%=col%>"><a href="vote_logs.asp?ID=<%=KeyID%>">查看</a></td>
      <td align="center" nowrap><%=LogATime%></td>
      <td align="center" nowrap><a href="item_list.asp?ID=<%=KeyID%>">选项设置</a></td>
      <td align="center" nowrap><a href="info_edit.asp?ID=<%=KeyID%>&PG=<%=Page%>&KW=<%=KW%>&TP=<%=TP%>">修改</a></td>
    <td align="center" nowrap>&nbsp;</td>
    </tr>
    <%
  rs.Movenext
  If rs.Eof Then Exit For

  Next
%>
    <tr bgcolor="E0E0E0">
      <td height="21" align="right" nowrap>
        <span id="yFlag" style="visibility:hidden ">N</span>全选
      <input name="yAll" type="checkbox" id="yAll" onClick="ySel()"></td>
      <td><input name="Page" type="hidden" id="Page" value="<%=Page%>">
        <input name="TP" type="hidden" id="TP" value="<%=TP%>">
        <input name="TP2" type="hidden" id="TP2" value="<%=TP2%>">
        <input name="KW" type="hidden" id="KW" value="<%=KW%>"></td>
      <td nowrap>&nbsp;</td>
      <td align="center" nowrap>&nbsp;</td>
      <td colspan="3" align="right" nowrap><select name="yAct" id="yAct" >
          <option value="del_sel">删除.所选</option>
          <option value="SetShow">设置_显示</option>
		  <option value="SetTop">设置_顺序</option>
        </select>
        <select name="yVal" id="yVal">
		  <option value="Y">Y</option>
          <option value="N">N</option>
		  <option value="X">X</option>
		  <%For i=0 To 9%>
		  <option value="<%=i%>" ><%=i%></option>
		  <%Next%>
          <option value="888">888</option>
        </select>      </td>
      <td colspan="3" align="left" nowrap><input type="submit" name="Submit" value="执行">      </td>
    </tr>
    <%  
  
  Else
  %>
    <tr align="center" bgcolor="#f4f4f4">
      <td colspan="12">无信息</td>
    </tr>
    <%
  End If
	  
	  rs.Close()
	  Set rs = Nothing
	  
	  %>
    <tr bgcolor="#999999">
      <td colspan="12" align="right"></td>
    </tr>
  </form>
</table>
<script type="text/javascript">
function ySel()
{
   var vFlag = yFlag.innerText;
   if (vFlag=="N"){
   yFlag.innerText = "Y";
   for(var i=0;i<document.flist.yID.length;i++)
   {document.flist.yID.item(i).checked=true;}
   }else{
   yFlag.innerText = "N";
   for(var i=0;i<document.flist.yID.length;i++)
   {document.flist.yID.item(i).checked=false;}
   }
}  

</script>

<%

Function rs_DelImg(xTab,xKeys,xPImg) 
SET rs2=Server.CreateObject("Adodb.Recordset")
  sKeys = Replace(xKeys,";",",")
  sKeys = Replace(sKeys," ","") : Response.Write sqlw
  If Len(sKeys)<6 Then Exit Function
  If Right(sKeys,2)="'," Then 
   sKeys = Replace(sKeys&"/","',/","'")
   sqlw = " WHERE KeyID IN("&sKeys&") "&xWhr
  ElseIf inStr(sKeys,"'")>0 Then
   sqlw = " WHERE KeyID IN("&sKeys&") "&xWhr
  Else
   sqlw = " WHERE KeyID='"&sKeys&"' "&xWhr
  End If
  sql2 = "SELECT ImgName FROM "&xTab&" "&sqlw
  'Response.Write sqlw
  rs2.Open sql2,conn,1,1 
  Do While NOT rs2.EOF 
	ImgName = rs2("ImgName")
     If ImgName&""<>"" Then
      Call fil_del(xPImg&ImgName)
     End If 
  rs2.MoveNext
  Loop
  rs2.Close()
  Call rs_DoSql(conn,"DELETE FROM "&xTab&" "&sqlw) 
SET rs2=Nothing   
End Function

%>

</body>
</html>

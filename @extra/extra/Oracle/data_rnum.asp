﻿<!--#include file="inc_perm.asp"-->
<%
rTim01 = Timer()

'1.在ORACLE中实现SELECT TOP N 
'则按NAME的字母顺抽出前三个顾客的SQL语句如下所示：
'SELECT * FROM
'(SELECT * FROM CUSTOMER ORDER BY NAME)
'WHERE ROWNUM <= 3
'ORDER BY ROWNUM ASC

'2.在TOP N纪录中抽出第M（M <= N）条记录
'得到以NAME的字母顺排序的第二个顾客的信息的SQL语句应该这样写：
'SELECT ID, NAME FROM
'( SELECT ROWNUM RECNO, ID, NAME FROM
'    (SELECT * FROM CUSTOMER ORDER BY NAME)
'  WHERE ROWNUM <= 3
'  ORDER BY ROWNUM ASC 
')
'WHERE RECNO = 2

'3.抽出按某种方式排序的记录集中的第N条记录
' SELECT ID, NAME FROM
' ( SELECT ROWNUM RECNO, ID, NAME FROM
'     (SELECT * FROM CUSTOMER ORDER BY NAME)
'   WHERE ROWNUM <= 2
'   ORDER BY ROWNUM ASC
' )
' WHERE RECNO = 2

'4.抽出按某种方式排序的记录集中的第M条记录开始的X条记录
'则抽取NAME的字母顺的第2条记录开始的3条记录的SQL语句为：
' SELECT ID, NAME FROM
' (  SELECT ROWNUM RECNO, ID, NAME FROM
'      (SELECT * FROM CUSTOMER ORDER BY NAME)
'    WHERE ROWNUM <= (2 + 3 - 1)
'    ORDER BY ROWNUM ASC 
' )
' WHERE RECNO BETWEEN 2 AND (2 + 3 - 1)


%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Tab Data</title>
<link href="/inc/adm_inc/adm_style.css" rel="stylesheet" type="text/css">
<meta http-equiv="Pragma" content="no-cache">
</head>
<body>
<%


'All:479480 CST_CUSTOMER :CUSTOMER_ID, NAME FROM
'All:1343302 PRD_PUBLISH_CONFIG:ID, PRICE2, CREATE_DATE 
RecA = 140 '20 '140123
RecB = 10

sql = "       SELECT RECNO, CUSTOMER_ID, NAME FROM "
sql = sql& "  ( "
sql = sql& "    SELECT ROWNUM RECNO, CUSTOMER_ID, NAME FROM "
sql = sql& "    (SELECT * FROM CST_CUSTOMER ORDER BY CUSTOMER_ID DESC ) "
sql = sql& "    WHERE ROWNUM <= ("&RecA&" + "&RecB&" - 1) "
sql = sql& "    ORDER BY ROWNUM ASC "
sql = sql& "  ) "
sql = sql& "  WHERE RECNO BETWEEN "&RecA&" AND ("&RecA&" + "&RecB&" - 1) "

  SET rs=Server.CreateObject("Adodb.Recordset") 
  rs.Open sql,conn,1,1
  Do While NOT rs.Eof
    Response.Write "<br> ------ "&" "&rs("RECNO")&" "&rs("CUSTOMER_ID")&" - "&rs("name")
  rs.MoveNext()
  Loop
  rs.Close
  SET rs=Nothing

rTim01 = Timer() - rTim01
Response.Write "<br><br> 479480 : "&RecA&" - "&rTim01&"<br><br>"



%>

</body>
</html>

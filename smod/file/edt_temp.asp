﻿<%If pRoot="(temp)" Then %>
<STYLE type=text/css>
fieldset.temp{
	padding:5px; 
	border:1px solid #6CF;
}
</STYLE>
<script type="text/javascript">
function tClick(id){
	str = document.getElementById(id).innerHTML;
	window.opener.apiInsert<%=EdtID%>(str);
	alert('['+id+']已经插入!');
	//document.getElementById("SymMessage").innerHTML = '['+spChar+']已经插入! 可关闭窗口或继续插入...';
	return;
}
</script>
<table width="680" border="0" align="center" cellpadding="2" cellspacing="1">
<%If pSub="(def)" Then %>
  <tr>
    <td align="left">
      <fieldset class="temp">
        <legend> <span class="col00F">11 ------ 图文混合 </span> ------
        <input type="button" name="Button" value="选择" onClick="tClick('11');" >
        </legend>
        <div id="11" style=" padding:5px;">
	<h3>
		<img align="left" height="100" style="margin-right: 10px" width="100" />在此处输入标题
	</h3>
	<p>
		在此处输入内容
	</p>
        </div>
      </fieldset></td>
  </tr>
  <tr>
    <td align="left">
      <fieldset class="temp">
        <legend> <span class="col00F">12 ------ 表格(2列) </span> ------
        <input type="button" name="Button" value="选择" onClick="tClick('12');" >
        </legend>
        <div id="12" style=" padding:5px;">
	<h3>
		标题
	</h3>
	<table style="width:100%;" cellpadding="2" cellspacing="0" border="1">
		<tbody>
			<tr>
				<td>
					<h3>标题1</h3>
				</td>
				<td>
					<h3>标题1</h3>
				</td>
			</tr>
			<tr>
				<td>
					内容1
				</td>
				<td>
					内容2
				</td>
			</tr>
			<tr>
				<td>
					内容3
				</td>
				<td>
					内容4
				</td>
			</tr>
		</tbody>
	</table>
	<p>
		表格说明
	</p>
        </div>
      </fieldset></td>
  </tr>
  <tr>
    <td align="left">
      <fieldset class="temp">
        <legend> <span class="col00F">13 ------ 项目列表 </span> ------
        <input type="button" name="Button" value="选择" onClick="tClick('13');" >
        </legend>
        <div id="13" style=" padding:5px;">
	<p>
		在此处输入内容
	</p>
	<ol>
		<li>
			描述1
		</li>
		<li>
			描述2
		</li>
		<li>
			描述3
		</li>
	</ol>
	<p>
		在此处输入内容
	</p>
	<ul>
		<li>
			描述1
		</li>
		<li>
			描述2
		</li>
		<li>
			描述3
		</li>
	</ul>
        </div>
      </fieldset></td>
  </tr>
  <tr>
    <td align="left">
      <fieldset class="temp">
        <legend> <span class="col00F">21 ------ 图文混合 </span> ------
        <input type="button" name="Button" value="选择" onClick="tClick('21');" >
        </legend>
        <div id="21" style=" padding:5px;">
<h3> <img align="left" height="100" style="margin-right: 10px" width="100" />Type the title here</h3>
<p> Type the text here</p>
        </div>
      </fieldset></td>
  </tr>
  <tr>
    <td align="left">
      <fieldset class="temp">
        <legend> <span class="col00F">22 ------ 图文混合 </span> ------
        <input type="button" name="Button" value="选择" onClick="tClick('22');" >
        </legend>
        <div id="22" style=" padding:5px;">
<table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
  <tbody>
    <tr>
      <td style="width: 50%"><h3> Title 1</h3></td>
      <td>&nbsp;</td>
      <td style="width: 50%"><h3> Title 2</h3></td>
    </tr>
    <tr>
      <td> Text 1</td>
      <td>&nbsp;</td>
      <td> Text 2</td>
    </tr>
  </tbody>
</table>
        </div>
      </fieldset></td>
  </tr>
  <tr>
    <td align="left">
      <fieldset class="temp">
        <legend> <span class="col00F">23 ------ 图文混合 </span> ------
        <input type="button" name="Button" value="选择" onClick="tClick('23');" >
        </legend>
        <div id="23" style=" padding:5px;">
<p> More text goes here.</p>
<div style="width: 80%">
  <h3> Title goes here</h3>
  <table border="1" cellpadding="0" cellspacing="0" style="width: 150px; float: right">
    <caption style="border-bottom: black 1px solid; border-left: black 1px solid; border-top: black 1px solid; border-right: black 1px solid">
    <strong>Table title</strong>
    </caption>
    <tbody>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </tbody>
  </table>
  <p> Type the text here</p>
</div>
<p>&nbsp; </p>
        </div>
      </fieldset></td>
  </tr>
<%Else%>
  <tr>
    <td align="left">
      <fieldset class="temp">
        <legend> <span class="col00F">01 ------ 图文混合 </span> ------
        <input type="button" name="Button" value="选择" onClick="tClick('01');" >
        </legend>
        <div id="01" style=" padding:5px;">
<P style="TEXT-JUSTIFY: inter-ideograph; TEXT-ALIGN: justify"><IMG  height=200 hspace=5 src="0.gif" width=300 align=left vspace=5 border=0>口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口<IMG height=100 hspace=5 src="0.gif" width=100 align=right vspace=5 border=0>口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口</P>
        </div>
      </fieldset></td>
  </tr>
  <tr>
    <td align="left">
      <fieldset class="temp">
        <legend> <span class="col00F">02 ------ 图文混合 </span> ------
        <input type="button" name="Button" value="选择" onClick="tClick('02');" >
        </legend>
        <div id="02" style=" padding:5px;">
<TABLE cellSpacing=2 cellPadding=2 width="100%" border=0>
<TBODY>
<TR>
<TD vAlign=top width="60%"><IMG height=152 hspace=8 src="0.gif" width=240 align=left vspace=4 border=0>口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口</TD>
<TD vAlign=top width="40%">·&nbsp; 口口口口口口口口口口口口口口口<BR>·&nbsp; 口口口口口口口口口口口口口口口<BR>·&nbsp; 口口口口口口口口口口口口口口口<BR>·&nbsp; 口口口口口口口口口口口口口口口<BR>·&nbsp; 口口口口口口口口口口口口口口口<BR>·&nbsp; 口口口口口口口口口口口口口口口<BR>·&nbsp; 口口口口口口口口口口口口口口口<BR>·&nbsp; 口口口口口口口口口口口口口口口<BR>·&nbsp; 口口口口口口口口口口口口口口口<BR>·&nbsp; 口口口口口口口口口口口口口口口<BR><BR><BR><IMG height=86 hspace=5 src="0.gif" width=97 align=left border=0>口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口<BR><BR><IMG height=86 hspace=5 src="0.gif" width=97 align=left border=0>口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口<BR></TD></TR></TBODY></TABLE>
        </div>
      </fieldset></td>
  </tr>
  <tr>
    <td align="left">
      <fieldset class="temp">
        <legend> <span class="col00F">03 ------ 图文混合 </span> ------
        <input type="button" name="Button" value="选择" onClick="tClick('03');" >
        </legend>
        <div id="03" style=" padding:5px;">
<TABLE cellSpacing=2 cellPadding=2 width="100%" border=0>
<TBODY>
<TR>
<TD vAlign=top width="60%"><IMG height=152 hspace=8 src="0.gif" width=247 align=left vspace=6>口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口</TD>
<TD vAlign=top width="40%"><IMG height=86 hspace=5 src="0.gif" width=97 align=left border=0>口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口<BR><BR><IMG height=86 hspace=5 src="0.gif" width=97 align=left border=0>口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口<BR><BR><IMG height=86 hspace=5 src="0.gif" width=97 align=left border=0>口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口<BR></TD></TR></TBODY></TABLE>        </div>
      </fieldset></td>
  </tr>
  
  <tr>
    <td align="left">
      <fieldset class="temp">
        <legend> <span class="col00F">04 ------ 图文混合 </span> ------
        <input type="button" name="Button" value="选择" onClick="tClick('04');" >
        </legend>
        <div id="04" style=" padding:5px;">
<TABLE cellSpacing=2 cellPadding=4 border=0 width="100%">
<TBODY>
<TR>
<TD vAlign=top width="45%">
<P><IMG height=150 src="0.gif" width=250></P>
<P><IMG height=100 hspace=5 src="0.gif" width=100 align=left border=0>口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口<BR><BR><IMG height=100 hspace=5 src="0.gif" width=100 align=left border=0>口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口<BR></P></TD>
<TD vAlign=top width="55%">
<P>· 口口口口口口口口口口口口口口口口口口口口口<BR>· 口口口口口口口口口口口口口口口口口口口口口<BR>· 口口口口口口口口口口口口口口口口口口口口口<BR>· 口口口口口口口口口口口口口口口口口口口口口<BR>· 口口口口口口口口口口口口口口口口口口口口口<BR>· 口口口口口口口口口口口口口口口口口口口口口<BR>· 口口口口口口口口口口口口口口口口口口口口口<BR>· 口口口口口口口口口口口口口口口口口口口口口<BR>· 口口口口口口口口口口口口口口口口口口口口口<BR>· 口口口口口口口口口口口口口口口口口口口口口<BR>· 口口口口口口口口口口口口口口口口口口口口口<BR>· 口口口口口口口口口口口口口口口口口口口口口<BR>· 口口口口口口口口口口口口口口口口口口口口口<BR>· 口口口口口口口口口口口口口口口口口口口口口<BR>· 口口口口口口口口口口口口口口口口口口口口口<BR>· 口口口口口口口口口口口口口口口口口口口口口<BR>· 口口口口口口口口口口口口口口口口口口口口口<BR>· 口口口口口口口口口口口口口口口口口口口口口<BR>· 口口口口口口口口口口口口口口口口口口口口口<BR>· 口口口口口口口口口口口口口口口口口口口口口<BR>· 口口口口口口口口口口口口口口口口口口口口口<BR>· 口口口口口口口口口口口口口口口口口口口口口<BR>· 口口口口口口口口口口口口口口口口口口口口口<BR>· 口口口口口口口口口口口口口口口口口口口口口<BR>· 口口口口口口口口口口口口口口口口口口口口口<BR>· 口口口口口口口口口口口口口口口口口口口口口<BR>· 口口口口口口口口口口口口口口口口口口口口口<BR>· 口口口口口口口口口口口口口口口口口口口口口<BR>· 口口口口口口口口口口口口口口口口口口口口口<BR>· 口口口口口口口口口口口口口口口口口口口口口<BR>· 口口口口口口口口口口口口口口口口口口口口口<BR>· 口口口口口口口口口口口口口口口口口口口口口<BR>· 口口口口口口口口口口口口口口口口口口口口口</P></TD></TR></TBODY></TABLE>        </div>
      </fieldset></td>
  </tr>
  
  <tr>
    <td align="left">
      <fieldset class="temp">
        <legend> <span class="col00F">05 ------ 图文混合 </span> ------
        <input type="button" name="Button" value="选择" onClick="tClick('05');" >
        </legend>
        <div id="05" style=" padding:5px;">
<P><STRONG><FONT size=4>标题 (TITLE)</FONT></STRONG>
<HR align=center width="100%" color=#000000 noShade SIZE=1>
</P>
<P><IMG height=200 hspace=5 src="0.gif" width=280 align=right vspace=5 border=0>口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口</P>
        </div>
      </fieldset></td>
  </tr>
  <tr>
    <td align="left">
      <fieldset class="temp">
        <legend> <span class="col00F">06 ------ 图文混合 </span> ------
        <input type="button" name="Button" value="选择" onClick="tClick('06');" >
        </legend>
        <div id="06" style=" padding:5px;">
<TABLE cellSpacing=2 cellPadding=4 border=0 width="100%">
<TBODY>
<TR>
<TD vAlign=top width="50%"><IMG height=152 hspace=6 src="0.gif" width=271 align=left vspace=4 border=0> 
<P>口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口口<BR></P></TD></TR></TBODY></TABLE><BR>
<TABLE cellSpacing=1 cellPadding=1 border=0 width="100%">
<TBODY>
<TR>
<TD align=middle><IMG height=86 hspace=5 src="0.gif" width=97 border=0></TD>
<TD align=middle><IMG height=86 hspace=5 src="0.gif" width=97 border=0></TD>
<TD align=middle><IMG height=86 hspace=5 src="0.gif" width=97 border=0></TD>
<TD align=middle><IMG height=86 hspace=5 src="0.gif" width=97 border=0></TD>
<TD align=middle><IMG height=86 hspace=5 src="0.gif" width=97 border=0></TD></TR>
<TR>
<TD align=middle>口口口口口</TD>
<TD align=middle>口口口口口</TD>
<TD align=middle>口口口口口</TD>
<TD align=middle>口口口口口</TD>
<TD align=middle>口口口口口</TD></TR></TBODY></TABLE>
        </div>
      </fieldset></td>
  </tr>
<%End If%>
</table>
<%End If%>
<%If pRoot="(char)" Then %>
<STYLE type=text/css>
table.Sym_Content {
	background-color:#888888;
	width:100%;
}
table.Sym_Content td {
	background-color:#ffffff;
	width:24px;
	height:24px;
	text-align:center;
	vertical-align:middle;
	cursor:hand;
	cursor:pointer;
	padding:1px;
	margin:0px;
}
.Sym_Tabs {
	cursor:hand;
	cursor:pointer;
	background-color:#3A6EA5;
	text-align:center;
}
.Sym_Tab1 {
	background-color:#3A6EA5;
	color:#FFFFFF;
}
.Sym_Tab2 {
	background-color:#FFFFFF;
	color:#3A6EA5;
}
#SymTop {
	margin:3px;
	border:1px solid #033;
}
</STYLE>
<table width="680" border=0 align="center" cellpadding=0 cellspacing=1 bgcolor="#CCCCCC">
  <tr valign=top>
    <td><table width="610" border=0 cellpadding=3 cellspacing=0 id="SymTop">
        <%If pSub="peace" Then %>
        <tr>
          <td bgcolor=#ffffff align=center valign=middle colspan=13><table width="100%" border="0" cellpadding="3" cellspacing="0" bgcolor="#CCCCCC">
              <tr align="center">
                <td class="Sym_Tabs" onclick="card1Click(1)" id="card1">特殊</td>
                <td width="2"></td>
                <td class="Sym_Tabs" onclick="card1Click(2)" id="card2">标点</td>
                <td width="2"></td>
                <td class="Sym_Tabs" onclick="card1Click(3)" id="card3">数学</td>
                <td width="2"></td>
                <td class="Sym_Tabs" onclick="card1Click(4)" id="card4">单位</td>
                <td width="2"></td>
                <td class="Sym_Tabs" onclick="card1Click(5)" id="card5">数字</td>
                <td width="2"></td>
                <td class="Sym_Tabs" onclick="card1Click(6)" id="card6">拼音</td>
                <td width="2"></td>
                <td class="Sym_Tabs" onclick="card1Click(7)" id="card7">综合</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td bgcolor=#ffffff align=center valign=middle colspan=13><table border=0 cellpadding=3 cellspacing=1 class="Sym_Content" id="Sym_Content1">
              <tr>
                <td>＃</td>
                <td>＠</td>
                <td>＆</td>
                <td>＊</td>
                <td>※</td>
                <td>§</td>
                <td>〃</td>
                <td>№</td>
                <td>〓</td>
                <td>○</td>
                <td>●</td>
                <td>△</td>
              </tr>
              <tr>
                <td>▲</td>
                <td>◎</td>
                <td>☆</td>
                <td>★</td>
                <td>◇</td>
                <td>◆</td>
                <td>□</td>
                <td>■</td>
                <td>▽</td>
                <td>▼</td>
                <td>㊣</td>
                <td>℅</td>
              </tr>
              <tr>
                <td>ˉ</td>
                <td>￣</td>
                <td>＿</td>
                <td>﹉</td>
                <td>﹊</td>
                <td>﹍</td>
                <td>﹎</td>
                <td>﹋</td>
                <td>﹌</td>
                <td>﹟</td>
                <td>﹠</td>
                <td>﹡</td>
              </tr>
              <tr>
                <td>♀</td>
                <td>♂</td>
                <td>⊕</td>
                <td>⊙</td>
                <td>↑</td>
                <td>↓</td>
                <td>←</td>
                <td>→</td>
                <td>↖</td>
                <td>↗</td>
                <td>↙</td>
                <td>↘</td>
              </tr>
              <tr>
                <td>∥</td>
                <td>∣</td>
                <td>／</td>
                <td>＼</td>
                <td>∕</td>
                <td>﹨</td>
                <td>€</td>
                <td>&yen;</td>
                <td>&pound;</td>
                <td>&#8482;</td>
                <td>&reg;</td>
                <td>&copy;</td>
              </tr>
              <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
            </table>
            <table border=0 cellpadding=3 cellspacing=1 class="Sym_Content" id="Sym_Content2">
              <tr>
                <td>，</td>
                <td>、</td>
                <td>。</td>
                <td>．</td>
                <td>；</td>
                <td>：</td>
                <td>？</td>
                <td>！</td>
                <td>︰</td>
                <td>…</td>
                <td>‥</td>
                <td>′</td>
              </tr>
              <tr>
                <td>‵</td>
                <td>々</td>
                <td>～</td>
                <td>‖</td>
                <td>ˇ</td>
                <td>ˉ</td>
                <td>﹐</td>
                <td>﹑</td>
                <td>﹒</td>
                <td>·</td>
                <td>﹔</td>
                <td>﹕</td>
              </tr>
              <tr>
                <td>﹖</td>
                <td>﹗</td>
                <td>｜</td>
                <td>-</td>
                <td>︱</td>
                <td>-</td>
                <td>︳</td>
                <td>︴</td>
                <td>﹏</td>
                <td>（</td>
                <td>）</td>
                <td>︵</td>
              </tr>
              <tr>
                <td>︶</td>
                <td>｛</td>
                <td>｝</td>
                <td>︷</td>
                <td>︸</td>
                <td>〔</td>
                <td>〕</td>
                <td>︹</td>
                <td>︺</td>
                <td>【</td>
                <td>】</td>
                <td>︻</td>
              </tr>
              <tr>
                <td>︼</td>
                <td>《</td>
                <td>》</td>
                <td>︽</td>
                <td>︾</td>
                <td>〈</td>
                <td>〉</td>
                <td>︿</td>
                <td>﹀</td>
                <td>「</td>
                <td>」</td>
                <td>﹁</td>
              </tr>
              <tr>
                <td>﹂</td>
                <td>『</td>
                <td>』</td>
                <td>﹃</td>
                <td>﹄</td>
                <td>﹙</td>
                <td>﹚</td>
                <td>﹛</td>
                <td>﹜</td>
                <td>﹝</td>
                <td>﹞</td>
                <td>'</td>
              </tr>
              <tr>
                <td>'</td>
                <td>"</td>
                <td>"</td>
                <td>〝</td>
                <td>〞</td>
                <td>ˋ</td>
                <td>ˊ</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
            </table>
            <table border=0 cellpadding=3 cellspacing=1 class="Sym_Content" id="Sym_Content3">
              <tr>
                <td>≈</td>
                <td>≡</td>
                <td>≠</td>
                <td>＝</td>
                <td>≤</td>
                <td>≥</td>
                <td>＜</td>
                <td>＞</td>
                <td>≮</td>
                <td>≯</td>
                <td>∷</td>
                <td>±</td>
              </tr>
              <tr>
                <td>＋</td>
                <td>－</td>
                <td>×</td>
                <td>÷</td>
                <td>／</td>
                <td>∫</td>
                <td>∮</td>
                <td>∝</td>
                <td>∞</td>
                <td>∧</td>
                <td>∨</td>
                <td>∑</td>
              </tr>
              <tr>
                <td>∏</td>
                <td>∪</td>
                <td>∩</td>
                <td>∈</td>
                <td>∵</td>
                <td>∴</td>
                <td>⊥</td>
                <td>∥</td>
                <td>∠</td>
                <td>⌒</td>
                <td>⊙</td>
                <td>≌</td>
              </tr>
              <tr>
                <td>∽</td>
                <td>√</td>
                <td>≦</td>
                <td>≧</td>
                <td>≒</td>
                <td>≡</td>
                <td>﹢</td>
                <td>﹣</td>
                <td>﹤</td>
                <td>﹥</td>
                <td>﹦</td>
                <td>～</td>
              </tr>
              <tr>
                <td>∟</td>
                <td>⊿</td>
                <td>㏒</td>
                <td>㏑</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
            </table>
            <table border=0 cellpadding=3 cellspacing=1 class="Sym_Content" id="Sym_Content4">
              <tr>
                <td>°</td>
                <td>′</td>
                <td>″</td>
                <td>＄</td>
                <td>￥</td>
                <td>〒</td>
                <td>￠</td>
                <td>￡</td>
                <td>％</td>
                <td>＠</td>
                <td>℃</td>
                <td>℉</td>
              </tr>
              <tr>
                <td>﹩</td>
                <td>﹪</td>
                <td>‰</td>
                <td>﹫</td>
                <td>㏕</td>
                <td>㎜</td>
                <td>㎝</td>
                <td>㎞</td>
                <td>㏎</td>
                <td>㎡</td>
                <td>㎎</td>
                <td>㎏</td>
              </tr>
              <tr>
                <td>㏄</td>
                <td>°</td>
                <td>○</td>
                <td>¤</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
            </table>
            <table border=0 cellpadding=3 cellspacing=1 class="Sym_Content" id="Sym_Content5">
              <tr>
                <td>ⅰ</td>
                <td>ⅱ</td>
                <td>ⅲ</td>
                <td>ⅳ</td>
                <td>ⅴ</td>
                <td>ⅵ</td>
                <td>ⅶ</td>
                <td>ⅷ</td>
                <td>ⅸ</td>
                <td>ⅹ</td>
                <td>Ⅰ</td>
                <td>Ⅱ</td>
              </tr>
              <tr>
                <td>Ⅲ</td>
                <td>Ⅳ</td>
                <td>Ⅴ</td>
                <td>Ⅵ</td>
                <td>Ⅶ</td>
                <td>Ⅷ</td>
                <td>Ⅸ</td>
                <td>Ⅹ</td>
                <td>Ⅺ</td>
                <td>Ⅻ</td>
                <td>⒈</td>
                <td>⒉</td>
              </tr>
              <tr>
                <td>⒊</td>
                <td>⒋</td>
                <td>⒌</td>
                <td>⒍</td>
                <td>⒎</td>
                <td>⒏</td>
                <td>⒐</td>
                <td>⒑</td>
                <td>⒒</td>
                <td>⒓</td>
                <td>⒔</td>
                <td>⒕</td>
              </tr>
              <tr>
                <td>⒖</td>
                <td>⒗</td>
                <td>⒘</td>
                <td>⒙</td>
                <td>⒚</td>
                <td>⒛</td>
                <td>⑴</td>
                <td>⑵</td>
                <td>⑶</td>
                <td>⑷</td>
                <td>⑸</td>
                <td>⑹</td>
              </tr>
              <tr>
                <td>⑺</td>
                <td>⑻</td>
                <td>⑼</td>
                <td>⑽</td>
                <td>⑾</td>
                <td>⑿</td>
                <td>⒀</td>
                <td>⒁</td>
                <td>⒂</td>
                <td>⒃</td>
                <td>⒄</td>
                <td>⒅</td>
              </tr>
              <tr>
                <td>⒆</td>
                <td>⒇</td>
                <td>①</td>
                <td>②</td>
                <td>③</td>
                <td>④</td>
                <td>⑤</td>
                <td>⑥</td>
                <td>⑦</td>
                <td>⑧</td>
                <td>⑨</td>
                <td>⑩</td>
              </tr>
              <tr>
                <td>㈠</td>
                <td>㈡</td>
                <td>㈢</td>
                <td>㈣</td>
                <td>㈤</td>
                <td>㈥</td>
                <td>㈦</td>
                <td>㈧</td>
                <td>㈨</td>
                <td>㈩</td>
                <td></td>
                <td></td>
              </tr>
            </table>
            <table border=0 cellpadding=3 cellspacing=1 class="Sym_Content" id="Sym_Content6">
              <tr>
                <td>ā</td>
                <td>á</td>
                <td>ǎ</td>
                <td>à</td>
                <td>ō</td>
                <td>ó</td>
                <td>ǒ</td>
                <td>ò</td>
                <td>ē</td>
                <td>é</td>
                <td>ě</td>
                <td>è</td>
              </tr>
              <tr>
                <td>ī</td>
                <td>í</td>
                <td>ǐ</td>
                <td>ì</td>
                <td>ū</td>
                <td>ú</td>
                <td>ǔ</td>
                <td>ù</td>
                <td>ǖ</td>
                <td>ǘ</td>
                <td>ǚ</td>
                <td>ǜ</td>
              </tr>
              <tr>
                <td>ü</td>
                <td>ê</td>
                <td>ɑ</td>
                <td></td>
                <td>ń</td>
                <td>ň</td>
                <td></td>
                <td>ɡ</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
            </table>
            <table border=0 cellpadding=0 cellspacing=1 class="Sym_Content" id="Sym_Content7">
              <tr>
                <td>&euro;</td>
                <td>&lsquo;</td>
                <td>&rsquo;</td>
                <td>&rsquo;</td>
                <td>&ldquo;</td>
                <td>&rdquo;</td>
                <td>&ndash;</td>
                <td>&mdash;</td>
                <td>&iexcl;</td>
                <td>&cent;</td>
                <td>&pound;</td>
                <td>&curren;</td>
                <td>&yen;</td>
                <td>&brvbar;</td>
                <td>&sect;</td>
              </tr>
              <tr>
                <td>&uml;</td>
                <td>&copy;</td>
                <td>&ordf;</td>
                <td>&laquo;</td>
                <td>&not;</td>
                <td>&reg;</td>
                <td>&macr;</td>
                <td>&deg;</td>
                <td>&plusmn;</td>
                <td>&sup2;</td>
                <td>&sup3;</td>
                <td>&acute;</td>
                <td>&micro;</td>
                <td>&para;</td>
                <td>&middot;</td>
              </tr>
              <tr>
                <td>&cedil;</td>
                <td>&sup1;</td>
                <td>&ordm;</td>
                <td>&raquo;</td>
                <td>&frac14;</td>
                <td>&frac12;</td>
                <td>&frac34;</td>
                <td>&iquest;</td>
                <td>&Agrave;</td>
                <td>&Aacute;</td>
                <td>&Acirc;</td>
                <td>&Atilde;</td>
                <td>&Auml;</td>
                <td>&Aring;</td>
                <td>&AElig;</td>
              </tr>
              <tr>
                <td>&Ccedil;</td>
                <td>&Egrave;</td>
                <td>&Eacute;</td>
                <td>&Ecirc;</td>
                <td>&Euml;</td>
                <td>&Igrave;</td>
                <td>&Iacute;</td>
                <td>&Icirc;</td>
                <td>&Iuml;</td>
                <td>&ETH;</td>
                <td>&Ntilde;</td>
                <td>&Ograve;</td>
                <td>&Oacute;</td>
                <td>&Ocirc;</td>
                <td>&Otilde;</td>
              </tr>
              <tr>
                <td>&Ouml;</td>
                <td>&times;</td>
                <td>&Oslash;</td>
                <td>&Ugrave;</td>
                <td>&Uacute;</td>
                <td>&Ucirc;</td>
                <td>&Uuml;</td>
                <td>&Yacute;</td>
                <td>&THORN;</td>
                <td>&szlig;</td>
                <td>&acirc;</td>
                <td>&atilde;</td>
                <td>&auml;</td>
                <td>&aring;</td>
                <td>&aelig;</td>
              </tr>
              <tr>
                <td>&ccedil;</td>
                <td>&ecirc;</td>
                <td>&euml;</td>
                <td>&icirc;</td>
                <td>&iuml;</td>
                <td>&eth;</td>
                <td>&ntilde;</td>
                <td>&ocirc;</td>
                <td>&otilde;</td>
                <td>&ouml;</td>
                <td>&divide;</td>
                <td>&oslash;</td>
                <td>&ucirc;</td>
                <td>&uuml;</td>
                <td>&uuml;</td>
              </tr>
              <tr>
                <td>&yacute;</td>
                <td>&thorn;</td>
                <td>&yuml;</td>
                <td>&OElig;</td>
                <td>&oelig;</td>
                <td>&#372;</td>
                <td>&#374;</td>
                <td>&#373;</td>
                <td>&#375;</td>
                <td>&sbquo;</td>
                <td>&#8219;</td>
                <td>&bdquo;</td>
                <td>&hellip;</td>
                <td>&trade;</td>
                <td>&#9658;</td>
              </tr>
              <tr>
                <td>&bull;</td>
                <td>&rarr;</td>
                <td>&rArr;</td>
                <td>&hArr;</td>
                <td>&diams;</td>
                <td>&asymp;</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </table></td>
        </tr>
        <%End If%>
        <%If pSub="eweb" Then%>
        <tr>
          <td colspan="13" align=center valign=middle bgcolor=#ffffff><table width="100%" border="0" cellpadding="3" cellspacing="0" bgcolor="#CCCCCC">
              <tr align="center">
                <td class="Sym_Tabs" onclick="card2Click(11,'Verdana')"   id="card11">Verdana</td>
                <td width="2"></td>
                <td class="Sym_Tabs" onclick="card2Click(12,'Webdings')"  id="card12">Webdings</td>
                <td width="2"></td>
                <td class="Sym_Tabs" onclick="card2Click(13,'Wingdings')" id="card13">Wingdings</td>
                <td width="2"></td>
                <td class="Sym_Tabs" onclick="card2Click(14,'Symbol')"    id="card14">Symbol</td>
                <td width="2"></td>
                <td class="Sym_Tabs" onclick="card2Click(15,'Unicode')"   id="card15">Unicode</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td colspan=13 align=center valign=middle bgcolor=#ffffff><table border=0 cellpadding=3 cellspacing=1 class="Sym_Content" id="Sym_eWeb">
              <tr>
                <td>!</td>
                <td>&quot;</td>
                <td>#</td>
                <td>$</td>
                <td>%</td>
                <td>&amp;</td>
                <td>'</td>
                <td>(</td>
                <td>)</td>
                <td>*</td>
                <td>+</td>
                <td>,</td>
                <td>-</td>
                <td>.</td>
                <td>/</td>
                <td>0</td>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
                <td>5</td>
                <td>6</td>
                <td>7</td>
              </tr>
              <tr>
                <td>8</td>
                <td>9</td>
                <td>:</td>
                <td>;</td>
                <td>&lt;</td>
                <td>=</td>
                <td>&gt;</td>
                <td>?</td>
                <td>@</td>
                <td>A</td>
                <td>B</td>
                <td>C</td>
                <td>D</td>
                <td>E</td>
                <td>F</td>
                <td>G</td>
                <td>H</td>
                <td>I</td>
                <td>J</td>
                <td>K</td>
                <td>L</td>
                <td>M</td>
                <td>N</td>
              </tr>
              <tr>
                <td>O</td>
                <td>P</td>
                <td>Q</td>
                <td>R</td>
                <td>S</td>
                <td>T</td>
                <td>U</td>
                <td>V</td>
                <td>W</td>
                <td>X</td>
                <td>Y</td>
                <td>Z</td>
                <td>[</td>
                <td>\</td>
                <td>]</td>
                <td>^</td>
                <td>_</td>
                <td>`</td>
                <td>a</td>
                <td>b</td>
                <td>c</td>
                <td>d</td>
                <td>e</td>
              </tr>
              <tr>
                <td>f</td>
                <td>g</td>
                <td>h</td>
                <td>i</td>
                <td>j</td>
                <td>k</td>
                <td>l</td>
                <td>m</td>
                <td>n</td>
                <td>o</td>
                <td>p</td>
                <td>q</td>
                <td>r</td>
                <td>s</td>
                <td>t</td>
                <td>u</td>
                <td>v</td>
                <td>w</td>
                <td>x</td>
                <td>y</td>
                <td>z</td>
                <td>{</td>
                <td>|</td>
              </tr>
              <tr>
                <td>}</td>
                <td>~</td>
                <td></td>
                <td>€</td>
                <td></td>
                <td>‚</td>
                <td>ƒ</td>
                <td>&bdquo;</td>
                <td>…</td>
                <td>†</td>
                <td>‡</td>
                <td>ˆ</td>
                <td>‰</td>
                <td>Š</td>
                <td>‹</td>
                <td>Œ</td>
                <td></td>
                <td>Ž</td>
                <td></td>
                <td></td>
                <td>&lsquo;</td>
                <td>&rsquo;</td>
                <td>&ldquo;</td>
              </tr>
              <tr>
                <td>&rdquo;</td>
                <td>•</td>
                <td>–</td>
                <td>—</td>
                <td>˜</td>
                <td>™</td>
                <td>š</td>
                <td>›</td>
                <td>œ</td>
                <td></td>
                <td>ž</td>
                <td>Ÿ</td>
                <td> </td>
                <td>¡</td>
                <td>¢</td>
                <td>£</td>
                <td>¤</td>
                <td>¥</td>
                <td>¦</td>
                <td>§</td>
                <td>¨</td>
                <td>©</td>
                <td>ª</td>
              </tr>
              <tr>
                <td>«</td>
                <td>¬</td>
                <td>­</td>
                <td>®</td>
                <td>¯</td>
                <td>°</td>
                <td>±</td>
                <td>²</td>
                <td>³</td>
                <td>´</td>
                <td>µ</td>
                <td>¶</td>
                <td>·</td>
                <td>¸</td>
                <td>¹</td>
                <td>º</td>
                <td>»</td>
                <td>¼</td>
                <td>½</td>
                <td>¾</td>
                <td>¿</td>
                <td>À</td>
                <td>Á</td>
              </tr>
              <tr>
                <td>Â</td>
                <td>Ã</td>
                <td>Ä</td>
                <td>Å</td>
                <td>Æ</td>
                <td>Ç</td>
                <td>È</td>
                <td>É</td>
                <td>Ê</td>
                <td>Ë</td>
                <td>Ì</td>
                <td>Í</td>
                <td>Î</td>
                <td>Ï</td>
                <td>Ð</td>
                <td>Ñ</td>
                <td>Ò</td>
                <td>Ó</td>
                <td>Ô</td>
                <td>Õ</td>
                <td>Ö</td>
                <td>×</td>
                <td>Ø</td>
              </tr>
              <tr>
                <td>Ù</td>
                <td>Ú</td>
                <td>Û</td>
                <td>Ü</td>
                <td>Ý</td>
                <td>Þ</td>
                <td>ß</td>
                <td>à</td>
                <td>á</td>
                <td>â</td>
                <td>ã</td>
                <td>ä</td>
                <td>å</td>
                <td>æ</td>
                <td>ç</td>
                <td>è</td>
                <td>é</td>
                <td>ê</td>
                <td>ë</td>
                <td>ì</td>
                <td>í</td>
                <td>î</td>
                <td>ï</td>
              </tr>
              <tr>
                <td>ð</td>
                <td>ñ</td>
                <td>ò</td>
                <td>ó</td>
                <td>ô</td>
                <td>õ</td>
                <td>ö</td>
                <td>÷</td>
                <td>ø</td>
                <td>ù</td>
                <td>ú</td>
                <td>û</td>
                <td>ü</td>
                <td>ý</td>
                <td>þ</td>
                <td>ÿ</td>
                <td>Ā</td>
                <td>ā</td>
                <td>Ă</td>
                <td>ă</td>
                <td>Ą</td>
                <td>ą</td>
                <td>Ć</td>
              </tr>
            </table></td>
        </tr>
        <%End If%>
        <%If pSub="baidu" Then %>
        <tr>
          <td bgcolor=#ffffff align=center valign=middle colspan=13><table width="100%" border="0" cellpadding="3" cellspacing="0" bgcolor="#CCCCCC">
              <tr align="center">
                <td class='Sym_Tabs' onClick="card3Click(31)" id='card31'>特殊符号</td>
                <td width=1></td>
                <td class='Sym_Tabs' onClick="card3Click(32)" id='card32'>罗马数字</td>
                <td width=1></td>
                <td class='Sym_Tabs' onClick="card3Click(33)" id='card33'>数字符号</td>
                <td width=1></td>
                <td class='Sym_Tabs' onClick="card3Click(34)" id='card34'>日文符号</td>
                <td width=1></td>
                <td class='Sym_Tabs' onClick="card3Click(35)" id='card35'>希腊字母</td>
                <td width=1></td>
                <td class='Sym_Tabs' onClick="card3Click(36)" id='card36'>俄文字母</td>
                <td width=1></td>
                <td class='Sym_Tabs' onClick="card3Click(37)" id='card37'>拼音字母</td>
                <td width=1></td>
                <td class='Sym_Tabs' onClick="card3Click(38)" id='card38'>注音其他</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td bgcolor=#ffffff align=center valign=middle colspan=13><table border=0 cellpadding=3 cellspacing=1 class="Sym_Content" id="Sym_Content31">
              <tr>
                <td>、</td>
                <td>。</td>
                <td>·</td>
                <td>ˉ</td>
                <td>ˇ</td>
                <td>¨</td>
                <td>〃</td>
                <td>々</td>
                <td>—</td>
                <td>～</td>
                <td>‖</td>
                <td>…</td>
              <tr>
                <td>'</td>
                <td>'</td>
                <td>"</td>
                <td>〔</td>
                <td>〕</td>
                <td>〈</td>
                <td>〉</td>
                <td>《</td>
                <td>》</td>
                <td>「</td>
                <td>」</td>
                <td>『</td>
              <tr>
                <td>』</td>
                <td>〖</td>
                <td>〗</td>
                <td>【</td>
                <td>】</td>
                <td>±</td>
                <td>×</td>
                <td>÷</td>
                <td>∶</td>
                <td>∧</td>
                <td>∨</td>
                <td>∑</td>
              <tr>
                <td>∏</td>
                <td>∪</td>
                <td>∩</td>
                <td>∈</td>
                <td>∷</td>
                <td>√</td>
                <td>⊥</td>
                <td>∥</td>
                <td>∠</td>
                <td>⌒</td>
                <td>⊙</td>
                <td>∫</td>
              <tr>
                <td>∮</td>
                <td>≡</td>
                <td>≌</td>
                <td>≈</td>
                <td>∽</td>
                <td>∝</td>
                <td>≠</td>
                <td>≮</td>
                <td>≯</td>
                <td>≤</td>
                <td>≥</td>
                <td>∞</td>
              <tr>
                <td>∵</td>
                <td>∴</td>
                <td>♂</td>
                <td>♀</td>
                <td>°</td>
                <td>′</td>
                <td>″</td>
                <td>℃</td>
                <td>＄</td>
                <td>¤</td>
                <td>￠</td>
                <td>￡</td>
              <tr>
                <td>‰</td>
                <td>§</td>
                <td>№</td>
                <td>☆</td>
                <td>★</td>
                <td>○</td>
                <td>●</td>
                <td>◎</td>
                <td>◇</td>
                <td>◆</td>
                <td>□</td>
                <td>■</td>
              <tr>
                <td>△</td>
                <td>▲</td>
                <td>※</td>
                <td>→</td>
                <td>←</td>
                <td>↑</td>
                <td>↓</td>
                <td>〓</td>
                <td>〡</td>
                <td>〢</td>
                <td>〣</td>
                <td>〤</td>
              <tr>
                <td>〥</td>
                <td>〦</td>
                <td>〧</td>
                <td>〨</td>
                <td>〩</td>
                <td>㊣</td>
                <td>㎎</td>
                <td>㎏</td>
                <td>㎜</td>
                <td>㎝</td>
                <td>㎞</td>
                <td>㎡</td>
              <tr>
                <td>㏄</td>
                <td>㏎</td>
                <td>㏑</td>
                <td>㏒</td>
                <td>㏕</td>
                <td>︰</td>
                <td>￢</td>
                <td>￤</td>
                <td></td>
                <td>℡</td>
                <td>ˊ</td>
                <td>ˋ</td>
              <tr>
                <td>˙</td>
                <td>–</td>
                <td>―</td>
                <td>‥</td>
                <td>‵</td>
                <td>℅</td>
                <td>℉</td>
                <td>↖</td>
                <td>↗</td>
                <td>↘</td>
                <td>↙</td>
                <td>∕</td>
              <tr>
                <td>∟</td>
                <td>∣</td>
                <td>≒</td>
                <td>≦</td>
                <td>≧</td>
                <td>⊿</td>
                <td>═</td>
                <td>║</td>
                <td>╒</td>
                <td>╓</td>
                <td>╔</td>
                <td>╕</td>
              <tr>
                <td>╖</td>
                <td>╗</td>
                <td>╘</td>
                <td>╙</td>
                <td>╚</td>
                <td>╛</td>
                <td>╜</td>
                <td>╝</td>
                <td>╞</td>
                <td>╟</td>
                <td>╠</td>
                <td>╡</td>
              <tr>
                <td>╢</td>
                <td>╣</td>
                <td>╤</td>
                <td>╥</td>
                <td>╦</td>
                <td>╧</td>
                <td>╨</td>
                <td>╩</td>
                <td>╪</td>
                <td>╫</td>
                <td>╬</td>
                <td>╭</td>
              <tr>
                <td>╮</td>
                <td>╯</td>
                <td>╰</td>
                <td>╱</td>
                <td>╲</td>
                <td>╳</td>
                <td>▁</td>
                <td>▂</td>
                <td>▃</td>
                <td>▄</td>
                <td>▅</td>
                <td>▆</td>
              <tr>
                <td>▇</td>
                <td>�</td>
                <td>█</td>
                <td>▉</td>
                <td>▊</td>
                <td>▋</td>
                <td>▌</td>
                <td>▍</td>
                <td>▎</td>
                <td>▏</td>
                <td>▓</td>
                <td>▔</td>
              <tr>
                <td>▕</td>
                <td>▼</td>
                <td>▽</td>
                <td>◢</td>
                <td>◣</td>
                <td>◤</td>
                <td>◥</td>
                <td>☉</td>
                <td>⊕</td>
                <td>〒</td>
                <td>〝</td>
                <td>〞</td>
            </table>
            <table border=0 cellpadding=3 cellspacing=1 class="Sym_Content" id="Sym_Content32">
              <tr>
                <td>ⅰ</td>
                <td>ⅱ</td>
                <td>ⅲ</td>
                <td>ⅳ</td>
                <td>ⅴ</td>
                <td>ⅵ</td>
                <td>ⅶ</td>
                <td>ⅷ</td>
                <td>ⅸ</td>
                <td>ⅹ</td>
                <td>Ⅰ</td>
                <td>Ⅱ</td>
              <tr>
                <td>Ⅲ</td>
                <td>Ⅳ</td>
                <td>Ⅴ</td>
                <td>Ⅵ</td>
                <td>Ⅶ</td>
                <td>Ⅷ</td>
                <td>Ⅸ</td>
                <td>Ⅹ</td>
                <td>Ⅺ</td>
                <td>Ⅻ</td>
                <td></td>
                <td></td>
            </table>
            <table border=0 cellpadding=3 cellspacing=1 class="Sym_Content" id="Sym_Content33">
              <tr>
                <td>⒈</td>
                <td>⒉</td>
                <td>⒊</td>
                <td>⒋</td>
                <td>⒌</td>
                <td>⒍</td>
                <td>⒎</td>
                <td>⒏</td>
                <td>⒐</td>
                <td>⒑</td>
                <td>⒒</td>
                <td>⒓</td>
              <tr>
                <td>⒔</td>
                <td>⒕</td>
                <td>⒖</td>
                <td>⒗</td>
                <td>⒘</td>
                <td>⒙</td>
                <td>⒚</td>
                <td>⒛</td>
                <td>⑴</td>
                <td>⑵</td>
                <td>⑶</td>
                <td>⑷</td>
              <tr>
                <td>⑸</td>
                <td>⑹</td>
                <td>⑺</td>
                <td>⑻</td>
                <td>⑼</td>
                <td>⑽</td>
                <td>⑾</td>
                <td>⑿</td>
                <td>⒀</td>
                <td>⒁</td>
                <td>⒂</td>
                <td>⒃</td>
              <tr>
                <td>⒄</td>
                <td>⒅</td>
                <td>⒆</td>
                <td>⒇</td>
                <td>①</td>
                <td>②</td>
                <td>③</td>
                <td>④</td>
                <td>⑤</td>
                <td>⑥</td>
                <td>⑦</td>
                <td>⑧</td>
              <tr>
                <td>⑨</td>
                <td>⑩</td>
                <td>㈠</td>
                <td>㈡</td>
                <td>㈢</td>
                <td>㈣</td>
                <td>㈤</td>
                <td>㈥</td>
                <td>㈦</td>
                <td>㈧</td>
                <td>㈨</td>
                <td>㈩</td>
            </table>
            <table border=0 cellpadding=3 cellspacing=1 class="Sym_Content" id="Sym_Content34">
              <tr>
                <td>ぁ</td>
                <td>あ</td>
                <td>ぃ</td>
                <td>い</td>
                <td>ぅ</td>
                <td>う</td>
                <td>ぇ</td>
                <td>え</td>
                <td>ぉ</td>
                <td>お</td>
                <td>か</td>
                <td>が</td>
              <tr>
                <td>き</td>
                <td>ぎ</td>
                <td>く</td>
                <td>ぐ</td>
                <td>け</td>
                <td>げ</td>
                <td>こ</td>
                <td>ご</td>
                <td>さ</td>
                <td>ざ</td>
                <td>し</td>
                <td>じ</td>
              <tr>
                <td>す</td>
                <td>ず</td>
                <td>せ</td>
                <td>ぜ</td>
                <td>そ</td>
                <td>ぞ</td>
                <td>た</td>
                <td>だ</td>
                <td>ち</td>
                <td>ぢ</td>
                <td>っ</td>
                <td>つ</td>
              <tr>
                <td>づ</td>
                <td>て</td>
                <td>で</td>
                <td>と</td>
                <td>ど</td>
                <td>な</td>
                <td>に</td>
                <td>ぬ</td>
                <td>ね</td>
                <td>の</td>
                <td>は</td>
                <td>ば</td>
              <tr>
                <td>ぱ</td>
                <td>ひ</td>
                <td>び</td>
                <td>ぴ</td>
                <td>ふ</td>
                <td>ぶ</td>
                <td>ぷ</td>
                <td>へ</td>
                <td>べ</td>
                <td>ぺ</td>
                <td>ほ</td>
                <td>ぼ</td>
              <tr>
                <td>ぽ</td>
                <td>ま</td>
                <td>み</td>
                <td>む</td>
                <td>め</td>
                <td>も</td>
                <td>ゃ</td>
                <td>や</td>
                <td>ゅ</td>
                <td>ゆ</td>
                <td>ょ</td>
                <td>よ</td>
              <tr>
                <td>ら</td>
                <td>り</td>
                <td>る</td>
                <td>れ</td>
                <td>ろ</td>
                <td>ゎ</td>
                <td>わ</td>
                <td>ゐ</td>
                <td>ゑ</td>
                <td>を</td>
                <td>ん</td>
                <td>ァ</td>
              <tr>
                <td>ア</td>
                <td>ィ</td>
                <td>イ</td>
                <td>ゥ</td>
                <td>ウ</td>
                <td>ェ</td>
                <td>エ</td>
                <td>ォ</td>
                <td>オ</td>
                <td>カ</td>
                <td>ガ</td>
                <td>キ</td>
              <tr>
                <td>ギ</td>
                <td>ク</td>
                <td>グ</td>
                <td>ケ</td>
                <td>ゲ</td>
                <td>コ</td>
                <td>ゴ</td>
                <td>サ</td>
                <td>ザ</td>
                <td>シ</td>
                <td>ジ</td>
                <td>ス</td>
              <tr>
                <td>ズ</td>
                <td>セ</td>
                <td>ゼ</td>
                <td>ソ</td>
                <td>ゾ</td>
                <td>タ</td>
                <td>ダ</td>
                <td>チ</td>
                <td>ヂ</td>
                <td>ッ</td>
                <td>ツ</td>
                <td>ヅ</td>
              <tr>
                <td>テ</td>
                <td>デ</td>
                <td>ト</td>
                <td>ド</td>
                <td>ナ</td>
                <td>ニ</td>
                <td>ヌ</td>
                <td>ネ</td>
                <td>ノ</td>
                <td>ハ</td>
                <td>バ</td>
                <td>パ</td>
              <tr>
                <td>ヒ</td>
                <td>ビ</td>
                <td>ピ</td>
                <td>フ</td>
                <td>ブ</td>
                <td>プ</td>
                <td>ヘ</td>
                <td>ベ</td>
                <td>ペ</td>
                <td>ホ</td>
                <td>ボ</td>
                <td>ポ</td>
              <tr>
                <td>マ</td>
                <td>ミ</td>
                <td>ム</td>
                <td>メ</td>
                <td>モ</td>
                <td>ャ</td>
                <td>ヤ</td>
                <td>ュ</td>
                <td>ユ</td>
                <td>ョ</td>
                <td>ヨ</td>
                <td>ラ</td>
              <tr>
                <td>リ</td>
                <td>ル</td>
                <td>レ</td>
                <td>ロ</td>
                <td>ヮ</td>
                <td>ワ</td>
                <td>ヰ</td>
                <td>ヱ</td>
                <td>ヲ</td>
                <td>ン</td>
                <td>ヴ</td>
                <td>ヵ</td>
              <tr>
                <td>ヶ</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </table>
            <table border=0 cellpadding=3 cellspacing=1 class="Sym_Content" id="Sym_Content35">
              <tr>
                <td>Α</td>
                <td>Β</td>
                <td>Γ</td>
                <td>Δ</td>
                <td>Ε</td>
                <td>Ζ</td>
                <td>Η</td>
                <td>Θ</td>
                <td>Ι</td>
                <td>Κ</td>
                <td>Λ</td>
                <td>Μ</td>
              <tr>
                <td>Ν</td>
                <td>Ξ</td>
                <td>Ο</td>
                <td>Π</td>
                <td>Ρ</td>
                <td>Σ</td>
                <td>Τ</td>
                <td>Υ</td>
                <td>Φ</td>
                <td>Χ</td>
                <td>Ψ</td>
                <td>Ω</td>
              <tr>
                <td>α</td>
                <td>β</td>
                <td>γ</td>
                <td>δ</td>
                <td>ε</td>
                <td>ζ</td>
                <td>η</td>
                <td>θ</td>
                <td>ι</td>
                <td>κ</td>
                <td>λ</td>
                <td>μ</td>
              <tr>
                <td>ν</td>
                <td>ξ</td>
                <td>ο</td>
                <td>π</td>
                <td>ρ</td>
                <td>σ</td>
                <td>τ</td>
                <td>υ</td>
                <td>φ</td>
                <td>χ</td>
                <td>ψ</td>
                <td>ω</td>
            </table>
            <table border=0 cellpadding=3 cellspacing=1 class="Sym_Content" id="Sym_Content36">
              <tr>
                <td>А</td>
                <td>Б</td>
                <td>В</td>
                <td>Г</td>
                <td>Д</td>
                <td>Е</td>
                <td>Ё</td>
                <td>Ж</td>
                <td>З</td>
                <td>И</td>
                <td>Й</td>
                <td>К</td>
              <tr>
                <td>Л</td>
                <td>М</td>
                <td>Н</td>
                <td>О</td>
                <td>П</td>
                <td>Р</td>
                <td>С</td>
                <td>Т</td>
                <td>У</td>
                <td>Ф</td>
                <td>Х</td>
                <td>Ц</td>
              <tr>
                <td>Ч</td>
                <td>Ш</td>
                <td>Щ</td>
                <td>Ъ</td>
                <td>Ы</td>
                <td>Ь</td>
                <td>Э</td>
                <td>Ю</td>
                <td>Я</td>
                <td>а</td>
                <td>б</td>
                <td>в</td>
              <tr>
                <td>г</td>
                <td>д</td>
                <td>е</td>
                <td>ё</td>
                <td>ж</td>
                <td>з</td>
                <td>и</td>
                <td>й</td>
                <td>к</td>
                <td>л</td>
                <td>м</td>
                <td>н</td>
              <tr>
                <td>о</td>
                <td>п</td>
                <td>р</td>
                <td>с</td>
                <td>т</td>
                <td>у</td>
                <td>ф</td>
                <td>х</td>
                <td>ц</td>
                <td>ч</td>
                <td>ш</td>
                <td>щ</td>
              <tr>
                <td>ъ</td>
                <td>ы</td>
                <td>ь</td>
                <td>э</td>
                <td>ю</td>
                <td>я</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </table>
            <table border=0 cellpadding=3 cellspacing=1 class="Sym_Content" id="Sym_Content37">
              <tr>
                <td>ā</td>
                <td>á</td>
                <td>ǎ</td>
                <td>à</td>
                <td>ē</td>
                <td>é</td>
                <td>ě</td>
                <td>è</td>
                <td>ī</td>
                <td>í</td>
                <td>ǐ</td>
                <td>ì</td>
              <tr>
                <td>ō</td>
                <td>ó</td>
                <td>ǒ</td>
                <td>ò</td>
                <td>ū</td>
                <td>ú</td>
                <td>ǔ</td>
                <td>ù</td>
                <td>ǖ</td>
                <td>ǘ</td>
                <td>ǚ</td>
                <td>ǜ</td>
              <tr>
                <td>ü</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </table>
            <table border=0 cellpadding=3 cellspacing=1 class="Sym_Content" id="Sym_Content38">
              <tr>
                <td>ㄅ</td>
                <td>ㄆ</td>
                <td>ㄇ</td>
                <td>ㄈ</td>
                <td>ㄉ</td>
                <td>ㄊ</td>
                <td>ㄋ</td>
                <td>ㄌ</td>
                <td>ㄍ</td>
                <td>ㄎ</td>
                <td>ㄏ</td>
                <td>ㄐ</td>
              <tr>
                <td>ㄑ</td>
                <td>ㄒ</td>
                <td>ㄓ</td>
                <td>ㄔ</td>
                <td>ㄕ</td>
                <td>ㄖ</td>
                <td>ㄗ</td>
                <td>ㄘ</td>
                <td>ㄙ</td>
                <td>ㄚ</td>
                <td>ㄛ</td>
                <td>ㄜ</td>
              <tr>
                <td>ㄝ</td>
                <td>ㄞ</td>
                <td>ㄟ</td>
                <td>ㄠ</td>
                <td>ㄡ</td>
                <td>ㄢ</td>
                <td>ㄣ</td>
                <td>ㄤ</td>
                <td>ㄥ</td>
                <td>ㄦ</td>
                <td>ㄧ</td>
                <td>ㄨ</td>
            </table></td>
        </tr>
        <%End If%>
      </table></td>
    <td bgcolor="#FFFFFF"></td>
    <td bgcolor="#FFFFFF"><table border=0 cellpadding=0 cellspacing=0>
        <tr>
          <td align=center style="padding:8px 0px 1px 0px">预览</td>
        </tr>
        <tr>
          <td align=center valign=middle><table border=0 cellpadding=0 cellspacing=0 bgcolor=#cccccc>
              <tr>
                <td bgcolor=#ffffff style="height:72px; font-size:48px;color:#0000ff" id=preview align=center valign=middle width=50 height=50></td>
              </tr>
            </table></td>
        </tr>
      </table></td>
  </tr>
</table>
<script type="text/javascript">

// 预览
function sOver(e){
	//var e=event.srcElement;
	document.getElementById("preview").innerHTML = e.innerHTML;
}
function sClick(e){
	//alert(e.innerHTML);
	spChar = e.innerHTML;
	window.opener.apiInsert<%=EdtID%>(spChar);
	document.getElementById("SymMessage").innerHTML = '['+spChar+']已经插入! 可关闭窗口或继续插入...';
	return;
}

/////////////////////////////////////////////////////////////// 

        <%If pSub="peace" Then %>
// 选项卡点击事件
function card1Click(cardID){
	var obj;
	for (var i=1;i<=7;i++){
		obj=document.getElementById("card"+i);
		obj.className="Sym_Tab1";
	}
	obj=document.getElementById("card"+cardID);
	obj.className="Sym_Tab2";

	for (var i=1;i<=7;i++){
		obj=document.getElementById("Sym_Content"+i);
		obj.style.display="none";
		obj.style.visibility='hidden';
	}
	obj=document.getElementById("Sym_Content"+cardID);
	obj.style.display="";
	obj.style.visibility='visible';
}

// onMouseOver="sOver()" onClick="sClick()"
//setEvent("onmouseover","muOver","menu01Tags","td");
for(var i=1;i<=7;i++){
  setEvent("onmouseover","sOver","Sym_Content"+i,"td");
  setEvent("onclick","sClick","Sym_Content"+i,"td");
}
card1Click(5);
  
/////////////////////////////////////////////////////////////// 
        <%End If%>
        <%If pSub="eweb" Then %>
// Verdana,Webdings,Wingdings,Symbol,Unicode
// 选项卡点击事件 <span style="FONT-FAMILY: Verdana">;</span>
function card2Click(cardID,xStyle){
  	var oItems = document.getElementById('Sym_eWeb').getElementsByTagName('td');
	for(var i = 0;i<oItems.length;i++)
	{
	  oItems[i].innerHTML = "<span style='FONT-FAMILY: "+xStyle+"'>"+oItems[i].innerText+"</span>";
	}
	var obj;
	for (var i=11;i<=15;i++){
		obj=document.getElementById("card"+i);
		obj.className="Sym_Tab1";
	}
	obj=document.getElementById("card"+cardID);
	obj.className="Sym_Tab2";
}
setEvent("onmouseover","sOver","Sym_eWeb","td");
setEvent("onclick","sClick","Sym_eWeb","td");
card2Click(12,'Webdings');

/////////////////////////////////////////////////////////////// 
        <%End If%>
        <%If pSub="baidu" Then %>
// 选项卡点击事件
function card3Click(cardID){
	var obj;
	for (var i=31;i<=38;i++){
		obj=document.getElementById("card"+i);
		obj.className="Sym_Tab1";
	}
	obj=document.getElementById("card"+cardID);
	obj.className="Sym_Tab2";

	for (var i=31;i<=38;i++){
		obj=document.getElementById("Sym_Content"+i);
		obj.style.display="none";
		obj.style.visibility='hidden';
	}
	obj=document.getElementById("Sym_Content"+cardID);
	obj.style.display="";
	obj.style.visibility='visible';
}

// onMouseOver="sOver()" onClick="sClick()"
//setEvent("onmouseover","muOver","menu01Tags","td");
for(var i=31;i<=38;i++){
  setEvent("onmouseover","sOver","Sym_Content"+i,"td");
  setEvent("onclick","sClick","Sym_Content"+i,"td");
}
card3Click(33);
        <%End If%>

</script> 
<%End If%>
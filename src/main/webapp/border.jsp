<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div align="center">
 <h2>�Խ��� �� ����</h2>
 <br/><br/>
 <form name="postFrm" method="post" action="postProc.jsp" >
  <table style="width: 70%" >
   <tr>
    <td align="center" width="10%">�� ��</td>
    <td width="90%"><input type="text" name="name" size="10" maxlength="8"></td>
   </tr>
   <tr>
    <td align="center" width="10%">�� ��</td>
    <td width="90%"><input type="text" name="subject" size="50" maxlength="50"></td>
   </tr>
   <tr>
    <td align="center" width="10%">�� ��</td>
    <td width="90%"><textArea name="content" rows="10" cols="52"></textArea></td>
   </tr>
   <tr>
    <td align="center" width="10%">��й�ȣ</td>
    <td width="90%"><input type="password" name="pass" size="15" maxlength="15"></td>
   </tr>
   <tr>
    <td colspan="2"><hr/></td>
   </tr>
   <tr>
    <td align="left" colspan="2">
     <input type="submit" value="���">
     <input type="reset" value="�ٽþ���">
     <input type="button" value="����Ʈ" onclick="javascript:location.href='list.jsp '">
    </td>
   </tr>
  </table>
 </form>
</div>

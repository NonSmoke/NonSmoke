<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<meta charset="utf-8" />
<title>jQuery �α���</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#login").click(function() {
		var action = $("#form1").attr('action');
		var form_data = {
			user_id: $("#user_id").val(),
			user_pw: $("#user_pw").val(),
			is_ajax: 1
		};
		$.ajax({
			type: "POST",
			url: action,
			data: form_data,
			success: function(response) {
				if(response == 'success') {
					$("#message").html("<p style='color:green;font-weight:bold'>�α��� ����!</p>");
					$("#form1").slideUp('slow');
				}
				else {
					$("#message").html("<p style='color:red'>���̵� �Ǵ� ��й�ȣ�� �߸��Ǿ����ϴ�.</p>");	
				}
			}
		});
		return false;
	});
});
</script>
<body>
<form id="form1" name="form1" action="login_ok.php" method="post">
<table>
<tr>
	<td>���̵�</td>
	<td><input type='text' id='user_id' name='user_id' tabindex='1'/></td>
	<td rowspan='2'><input type='button' id='login' tabindex='3' value='�α���' style='height:50px'/></td>
</tr>
<tr>
	<td>��й�ȣ</td>
	<td><input type='password' id='user_pw' name='user_pw' tabindex='2'/></td>
</tr>
</table>
</form>
<div id="message"></div>
</body>
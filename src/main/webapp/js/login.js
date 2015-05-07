

$(document).ready(function() {
	$("#login").click(function() {
		var action = $("#form1").attr('action');
		var form_data = {
			user_id: $("#id").val(),
			user_pw: $("#password").val(),
			is_ajax: 1
		};
		$.ajax({
			type: "POST",
			url: action,
			data: "json",
			success: function(response) {
				if(response == 'success') {
					$("#message").html("<p style='color:green;font-weight:bold'>로그인 성공!</p>");
					$("#form1").slideUp('slow');
				}
				else {
					$("#message").html("<p style='color:red'>아이디 또는 비밀번호가 잘못되었습니다.</p>");	
				}
			}
		});
		return false;
	});
});
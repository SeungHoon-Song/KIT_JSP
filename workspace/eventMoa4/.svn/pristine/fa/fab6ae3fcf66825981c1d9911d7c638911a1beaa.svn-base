/* 아이디 찾기 */
function findId(){
	var name = $("input[name='user_Name']").val();
	var email = $("input[name='user_Email']").val();

	if (name == "" || email == "") {
		alert("이름과 이메일을 입력해주세요.");
	} else {
		$.ajax({
			url : contextPath + "/user/UserFindIdOk.us?user_Email=" + email + "&user_Name=" + name,
			type : "get",
			dataType : "text",
			success : function(result) {
				if (result.trim() == "ok") {
					alert("이메일이 전송되었습니다.");
				} else {
					alert("전송 실패");
				}
			},
			error : function() { 
				console.log("오류");
			}
		});
		
		
	}
}

/* 비밀번호 찾기 */
function findPw(){
	
	
}
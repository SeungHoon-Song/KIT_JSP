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
	var id = $("input[name='user_Id']").val();
	var email2 = $("input[name='user_Email2']").val();
	

	if (id == "" || email2 == "") {
		alert("아이디와 이메일을 입력해주세요.");
	} else {
		$.ajax({
			url : contextPath + "/user/UserFindPwOk.us?user_Email2=" + email2 + "&user_Id=" + id,
			type : "get",
			dataType : "text",
			success : function(result) {
				console.log("성공 진입");
				console.log(id);
				console.log(email2);
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
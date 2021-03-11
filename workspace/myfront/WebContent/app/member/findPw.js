/**
 * 비밀번호 찾기
 */
function findPw(){
	var email = $("input[name='memberEmail']").val();

	if (email == "") {
		alert("Fill out Email");
	} else {
		$.ajax({
			url : contextPath + "/member/MemberFindPwOk.me?memberEmail=" + email,
			type : "get",
			dataType : "text",
			success : function(result) {
				if (result.trim() == "ok") {
					alert("이메일 전송");
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
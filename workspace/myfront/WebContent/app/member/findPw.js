/**
 * 비밀번호 찾기
 */
function findPw(){
	var email = $("input[name='memberEmail']").val();

	if (email == "") {
		alert("Fill out Email");
	} else {
		// jQuery Ajax는 JSON타입으로 필요한 요소를 전달한다.
		$.ajax({
			// 외부 js에서는 contextPath를 가져올 수 없기 때문에 jsp에 선언한 contextPath를 사용한다.
			url : contextPath + "/member/MemberFindPwOk.me?memberEmail=" + email, // 요청할 url
			type : "get", // method
			dataType : "text", // 전달받을 데이터의 타입
			success : function(result) { // 통신 성공 시 응답 값을 result로 받는다.
				if (result.trim() == "ok") {
					alert("이메일 전송");
				} else {
					alert("전송 실패");
				}
			},
			error : function() { // 통신 오류 시
				console.log("오류");
			}
		});
		
		
	}
}
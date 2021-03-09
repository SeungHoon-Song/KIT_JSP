/**
 * 회원가입
 */

var check = false;

function join() {
	var form = document.joinForm;
	console.log(check);

	// 이메일 검사
	if (form.memberEmail.value == "" || !check) {
		alert("Please fill out E-mail");
		form.memberEmail.focus();
		return false;
	}
	// 비밀번호 검사
	if (form.memberPw.value == "" || !check) {
		alert("Please fill out Password");
		form.memberEmail.focus();
		return false;
	}
	// 비밀번호 중복 검사
	if (form.memberPw.value != form.confirmPw.value){
		alert("Incorrect Passwrod");
		form.memberPw.focus();
		return false;
	}
	// 이름 검사
	if (form.memberName.value == "" || !check) {
		alert("Please fill out Name");
		form.memberName.focus();
		return false;
	}
	//	연락처 검사
	if (form.memberPhoneNumber.value == "" || !check) {
		alert("Please fill out PhoneNumber");
		form.memberPhoneNumber.focus();
		return false;
	}
	
	form.submit();
}

// 외부에서 사용자가 입력한 이메일값을 전달받는다.
function checkEmail(email) {
	// 사용자가 이메일을 입력할 때 마다 Flag를 false로 초기화해준다.
	check = false;
	if (email == "") {
		$("#emailCheck_text").text("Fill out Email");
	} else {
		// jQuery Ajax는 JSON타입으로 필요한 요소를 전달한다.
		$.ajax({
			// 외부 js에서는 contextPath를 가져올 수 없기 때문에 jsp에 선언한 contextPath를 사용한다.
			url : contextPath + "/member/MemberCheckEmailOk.me?email=" + email, // 요청할
																				// url
			type : "get", // method
			dataType : "text", // 전달받을 데이터의 타입
			success : function(result) { // 통신 성공 시 응답 값을 result로 받는다.
				if (result.trim() == "ok") {
					check = true;
					$("#emailCheck_text").text("Useable Email");
				} else {
					check = false;
					$("#emailCheck_text").text("Unusable Email");
				}
			},
			error : function() { // 통신 오류 시
				console.log("오류");
			}
		});
		
		
	}
}

// 키 이벤트 함수
$("input[name='memberEmail']").keyup(function(event) {
	var email = $("input[name='memberEmail']").val();
	checkEmail(email);
});
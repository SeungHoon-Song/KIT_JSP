/**
 * 	로그인
 */

function login(){
	var form = document.loginForm;
	
	// 이메일,비밀번호 검사
	if(form.memberEmail.value == "" || form.memberPw.value == ""){
		alert("Please fill out all required fields.");
		form.memberEmail.focus();
		return false;
	}
	
	form.submit();
}
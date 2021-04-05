/**
 *  회원가입 
 */

 var joinForm = document.joinForm;
 var check = true;
 
 function formSubmit() {
	 
	  
	 
	 joinForm.submit();
 }
 
 /* 이메일 인증번호 요청 */
 function EmailCheck(){
	 var email = $("input[name='user_Email").val();
	 alert('잠시만 기다려주세요. 인증번호 전송 요청중입니다.');
 
	 check = false;
	 if(email == "" ) {
		 alert('이메일을 입력하세요.');
	 } else {
		 console.log('들어옴');
		 $.ajax({
			 url: contextPath + "/user/verifyCheckEmail.us?email=" + email,
			 type: "GET",
			 dataType: "text",
			 success: function(result){
				 if(result.trim() == "ok") {
					 check = true;
					 EmailCheck2();
				 } else {
					 alert('이미 가입된 이메일 입니다.');
				 }
			 },
			 error: function(){
				 console.log("ERROR");
			 }			
		 });
	 }
}
	 /* 인증번호 7자리 */
	 var code = "";
	 var verify ="";
	 function EmailCheck(){
		 var email = $("input[name='user_Email").val();
		 var inputVerify = $("#email_verify");
		 var inputVerifyBox = $(".mail_verify_input_box");

		 $.ajax({
			 url: contextPath +"/user/verifyEmail.us?email="+email,
			type: "GET",
			dataType: "text",
			success: function(result){
				console.log('result : ' + result);
				check = true;
				alert('해당 이메일로 인증번호 7자리를 발송하였습니다.');
				inputVerify.attr("disabled", false);
				inputVerifyBox.attr("id", "mail_verify_input_box_true");
				code = result;
			},
			error: function(){
				check = false;
				alert('인증번호 발송 서버 오류');
				console.log('ERROR');
			 }
		 });
	 }
	 
	 function verifyCheck() {
		 var verify = $("#email_verify").val();
		 verify = parseInt(verify);
		 code = parseInt(code);
		 console.log('code = '+code);
		 console.log('verify = ' + verify);
		 check = false;
		if(verify != code ) {
				alert('인증번호가 틀렸습니다!');
				joinForm.email_verify.focus();
			} else {
				check = true;
				alert('인증에 성공 하였습니다.');
				document.getElementById('email_verify').readOnly = true;	
				inputVerifyBox.attr("id", "mail_verify_input_box_false");	
			}
	 }
	 
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
	 
	//외부에서 사용자가 입력한 id값을 전달받는다.
	 function checkId(id){
	 	//사용자가 id를 입력할 때 마다 Flag를 false로 초기화해준다.
	 	check = false;
	 	if(id == ""){
	 		$("#idCheck_text").text("아이디를 작성해주세요.");
	 	}else{
	 		//jQuery Ajax는 JSON타입으로 필요한 요소를 전달한다.
	 		$.ajax({
	 			//외부 js에서는 contextPath를 가져올 수 없기 때문에 jsp에 선언한 contextPath를 사용한다.
	 			url:contextPath + "/user/UserCheckIdOk.us?id=" + id,	//요청할 url
	 			type:"get", //method
	 			dataType:"text", //전달받을 데이터의 타입
	 			success:function(result){	//통신 성공 시 응답 값을 result로 받는다.
	 				if(result.trim() == "ok"){
	 					check = true;
	 					$("#idCheck_text").text("사용할 수 있는 아이디입니다.");
	 				}else{
	 					$("#idCheck_text").text("중복된 아이디입니다.");
	 				}
	 			},
	 			error:function(){	//통신 오류 시
	 				console.log("오류");
	 			}
	 		});
	 	}
	 }

	 //키 이벤트 함수
	 $("input[name='user_Id']").keyup(function(event){
	 	var id = $("input[name='user_Id']").val();
	 	checkId(id);
	 });
	 
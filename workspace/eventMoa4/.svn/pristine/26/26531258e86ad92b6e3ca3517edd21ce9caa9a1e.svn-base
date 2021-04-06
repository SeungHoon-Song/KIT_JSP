/**
 *  회원가입 
 */

 var joinForm = document.joinForm;
 var check = false;
 
 var user_id = $("#user_Id").val();
 var user_pw = $("#user_Pw").val();
 var user_name = $("#user_Name").val();
 var user_email = $("#user_Email").val();
 var email_verify = $("#email_verify").val();
 var user_zipcode = $("#user_Zipcode").val();
 var user_address = $("#user_Address").val();
 var user_address_etc = $("#user_address_etc").val();

 var idCheckText = $('#idCheck_text');
 var idCheckText2 = $('#idCheck_text2');
 function formSubmit() {
   /* 유효성 검사 */ 

   if(!(user_id || user_pw || user_name || user_email || email_verify || user_zipcode || user_address || user_address_etc)) {
      alert('상세주소를 제외하고 모두 입력해주세요.');
      check = false;
   } 
   else if(!(user_pw >= 8 || user_pw < 8)) {
      check = false;
      alert('비밀번호는 8자 이상 입력해주세요.');
     
   } 
   else { check = true; }

   if(check){
      joinForm.submit();
      alert($("#user_Name").val() +'님 회원 가입을 축하합니다!');
    }
   }


   $(function(){
      $("input[id='user_Id']").keyup(function() {
        idCheckText2.html('');
            check = false;
      });
      
      $("input[id='user_Id']").keyup(function() {

         if (user_id.length < 4 || user_id.length > 12) {
            $("input[id='user_Pw").css("margin-top", "12%");
            $('#idCheck_text2').html('❌아이디를 4~12자 길이로 해야합니다.');
            $('#idCheck_text2').attr('color', '#f82a2aa3');
         
            check = false;
         } 
        else if ($("input[id='user_Pw").val() == $("input[id='user_Id").val()) {
            $("input[id='user_Pw").css("margin-top", "12%");
             $('#idCheck_text2').html('❌ 아이디와 비밀번호가 동일 합니다.');
             $('#idCheck_text2').attr('color', '#f82a2aa3');
            check = false;
         } 
         
      for (var i = 0; i < user_id.length; i++) {
         ch = user_id.charAt(i)
         if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z') && !(ch >= 'A' && ch <= 'Z') || !check) {
            $("input[id='user_Pw").css("margin-top", "12%");
            $('#idCheck_text2').html('❌ 영문 대소문자와 숫자로 해야합니다.');
            $('#idCheck_text2').attr('color', '#f82a2aa3');
            check = false;
         } 
         else {
            $("input[id='user_Pw").css("margin-top", "0%");
            $('#idCheck_text2').html('✔확인 완료');
            $('#idCheck_text2').attr('color', '#00CC00');
            check = true;
         }
   }

         //아이디 유효성 검사 (영문소문자, 숫자만 허용)
   });
});

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
	 					$("#idCheck_text").text("🟢사용할 수 있는 아이디입니다.");
                   $("#idCheck_text").attr('color', '#00CC00');
	 				} else {
	 					$("#idCheck_text").text("🔴중복된 아이디입니다.");
                   $("#idCheck_text").attr('color', '#f82a2aa3');
                   check = false;
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
   

    $(function() {
		$('#user_Pw').keyup(function() {
			if($('#pwCheck_text').val() == ""){
            $('#pwCheck_text').html('');
         }
			
				if ($('#user_Pw').val() < 4 || $('#user_Pw').val() > 12) { 
					$('#idCheck_text').attr('color', '#f82a2aa3');
         		 	$('#pwCheck_text').html('❌비밀번호를 4~12자까지 입력해주세요.');
         			   joinForm.user_Pw.focus();
            			return false;
					} 
               else if ($("input[id='user_Pw").val() == $("input[id='user_Id").val()) {
                  $("input[id='user_Pw").css("margin-top", "12%");
                  $('#idCheck_text').attr('color', '#f82a2aa3');
                  $('#idCheck_text').html('❌ 아이디와 비밀번호가 동일 합니다.');
                  joinForm.user_Id.focus();
                  check = false;
                  return false;
               } 
      for (var i = 0; i < joinForm.user_Pw.length; i++) {
         ch = user_pw.charAt(i)
         if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z') &&  !check) {
            $('#pwCheck_text').attr('color', '#f82a2aa3');
            $('#pwCheck_text').html('❌ 비밀번호는 영문과 숫자 조합으로 해야합니다.');
            joinForm.user_Pw.focus();
            check = false;
            return false;
            } 
            else {
               check = true;
               $('#pwCheck_text').html('✔확인 완료2');
               $('#pwCheck_text').attr('color', '#199894b3');
               return true;
            }
         }
			
			
		});
	});
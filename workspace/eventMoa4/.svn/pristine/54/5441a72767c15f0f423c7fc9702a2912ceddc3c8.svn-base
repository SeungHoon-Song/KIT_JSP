/**
 *  회원가입 
 */

 var joinForm = document.joinForm;

 /* 각 프로퍼티 체크 true 여야지 submit */
 var id_Check, pw_Check, email_Check, verify_Check, name_Check = false;
 
 var user_id = $("#user_Id").val();
 var user_pw = $("#user_Pw").val();
 var user_name = $("#user_Name").val();
 var user_email = $("#user_Email").val();
 var email_verify = $("#email_verify").val();
 var user_zipcode = $("#user_Zipcode").val();
 var user_address = $("#user_Address").val();
 var user_address_etc = $("#user_address_etc").val();

 var idCheckText = $('#idCheck_text');
 document.getElementById('idModifyBtn').style.display = "none";
 
 
 function formSubmit() {
   
    /* 유효성 검사 */ 
   if(document.getElementById('idModifyBtn').style.display == "none") {
      id_Check = false;
      alert('중복 체크를 해주세요!');
      return false;
   } 
   if (user_name != "" || user_name.length > 1 || user_name.length < 14) {
      name_Check = true;
   } else {
      name_Check = false;
      alert('이름을 입력 해주세요. 1~14 자리');
      joinForm.name_Check.focus();
      return false;
   }


   if(!id_Check || !pw_Check || !email_Check || !verify_Check || !name_Check){
         
         alert('양식 조건에 충족하지 못하는 부분이 있습니다. 다시 확인하시길 바랍니다.');
         return false;
      }  
      else {
         joinForm.submit();
         alert($("#user_Name").val() +'님 회원 가입을 축하합니다!');
         return true;
      }
      
   }

 /* 이메일 인증번호 요청 */
 function EmailCheck(){
    var email = $("input[name='user_Email").val();
    alert('잠시만 기다려주세요. 인증번호 전송 요청중입니다.');
 
    email_Check = false;
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
                email_Check = true;
                EmailCheck2();
             } else {
                alert('이미 가입된 이메일 입니다.');
                email_Check = false;
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
      //  var inputVerifyBox = $(".mail_verify_input_box");

       $.ajax({
          url: contextPath +"/user/verifyEmail.us?email="+email,
         type: "GET",
         dataType: "text",
         success: function(result){
            console.log('result : ' + result);
            alert('해당 이메일로 인증번호 7자리를 발송하였습니다.');
            inputVerify.attr("disabled", false);
            // inputVerifyBox.attr("id", "mail_verify_input_box_true");
            code = result;
            email_Check = true;
            
         },
         error: function(){
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
       verify_Check = false;
       if(verify != code ) {
            verify_Check = false;
            alert('인증번호가 틀렸습니다!');
            joinForm.email_verify.focus();
         } else {
            verify_Check = true;
            alert('인증에 성공 하였습니다.');
            document.getElementById('email_verify').readOnly = true;   
         }
    }
    
    function modifyId() {
      document.getElementById('user_Id').readOnly = false; 
      document.getElementById('idCheckBtn').style.display = "";
      document.getElementById('idModifyBtn').style.display = "none";
      id_Check = false;
      
    }
	 function checkId(id){
       id_Check = false;
	 	if(id == ""){
	 		$("#idCheck_text").text("아이디를 작성해주세요.");
	 	} else {
	 		$.ajax({
	 			url:contextPath + "/user/UserCheckIdOk.us?id=" + id,	
	 			type:"get", 
	 			dataType:"text",
	 			success:function(result) {
	 				if(result.trim() == "ok"){
                   alert('사용하실 수 있는 ID 입니다.');
                  $("input[id='user_Pw").css("margin-top", "5%");
                  $("#idCheck_text").text("🟢사용할 수 있는 아이디입니다.");
                  $("#idCheck_text").attr('color', '#00CC00');
                  id_Check = true;
                  document.getElementById('user_Id').readOnly = true;   
                  document.getElementById('idCheckBtn').style.display = "none";
                  document.getElementById('idModifyBtn').style.display = "";
               } else {
                   $("input[id='user_Pw").css("margin-top", "5%");
	 					$("#idCheck_text").text("🔴중복된 아이디입니다.");
                  $("#idCheck_text").attr('color', '#f82a2aa3');
                  document.getElementById('user_Id').readOnly = false; 
                  document.getElementById('idCheckBtn').style.display = "";
                  document.getElementById('idModifyBtn').style.display = "none";
                  id_Check = false;
	 				}
	 			},
	 			error:function(){	//통신 오류 시
	 				console.log("오류");
	 			}
	 		});
	 	}
	 }

    $("input[name='user_Id']").keyup(function(event){
      var id = $("input[name='user_Id']").val();
      
       ValidationId(id);
   });
    /* 아이디 유효성 검사 */

 function ValidationId(id){
   	var id = $("input[name='user_Id']").val();

         if($('#idCheck_text').html == "") {
            $("input[id='user_Pw").css("margin-top", "0%");
         }

         if ($('#user_Id').val().length < 4 || $('#user_Id').val().length > 12) {
            $("input[id='user_Pw").css("margin-top", "5%");
            $('#idCheck_text').attr('color', '#f82a2aa3');
            $('#idCheck_text').html('❌아이디를 4~12자 길이로 해야합니다.');
            id_Check = false;
         } 
        else if ($("input[id='user_Pw").val() == $("input[id='user_Id").val()) {
            $("input[id='user_Pw").css("margin-top", "5%");
            $('#idCheck_text').attr('color', '#f82a2aa3');
            $('#idCheck_text').html('❌ 아이디와 비밀번호가 동일 합니다.');
             id_Check = false;
         } 
         //아이디 유효성 검사 (영문소문자, 숫자만 허용)
   // });
         else {
            id_Check = true;
            $("input[id='user_Pw").css("margin-top", "5%");
            $('#idCheck_text').html('✔확인');
            $('#idCheck_text').attr('color', '#00CC00');
           
         }
   
 }

   /* 비밀번호 유효성 검사 */
    function ValidationPw(pw) {
       pw_Check = false;
       
			if(pw == ""){
            $('#pwCheck_text').html('');
            $("input[id='user_Name").css("margin-top", "0%");
         }
         else if ($('#user_Pw').val().length < 8) { 
            $('#idCheck_text').attr('color', '#f82a2aa3');
            $('#pwCheck_text').html('❌비밀번호를 8자이상 입력해주세요.');
            joinForm.user_Pw.focus();
         } 
         else if (pw == $("input[id='user_Id").val()) {
            $("input[id='user_Pw").css("margin-top", "12%");
            $('#idCheck_text').attr('color', '#f82a2aa3');
            $('#idCheck_text').html('❌ 아이디와 비밀번호가 동일 합니다.');
            joinForm.user_Pw.focus();
         }  
         else {
            pw_Check = false;
            //8자리 이상, 대문자/소문자/숫자/특수문자 모두 포함되어 있는 지 검사
                  var reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
                  var hangleCheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
                  
               if(!reg.test(joinForm.user_Pw.value)){
                     $("input[id='user_Name").css("margin-top", "12%");
                    $('#pwCheck_text').html("❌ 비밀번호는 8자리 이상이어야 하며, 대문자/소문자/숫자/특수문자 모두 포함해야 합니다.");
                  joinForm.user_Pw.focus();
                  return false;
               }
               
               //같은 문자를 4번 이상 사용할 수 없다.
               else if(/(\w)\1\1\1/.test(joinForm.user_Pw.value)){
                  //같은 문자가 4개 이상 있다면 
                  $("input[id='user_Name").css("margin-top", "5%");
                    $('#pwCheck_text').html("❌ 같은 문자를 4번 이상 사용할 수 없습니다.");
                    joinForm.user_Pw.focus();
                  return false;
               }
               
               //비밀번호에 아이디가 포함되어 있을 수 없다.
               else if(joinForm.user_Pw.value.search(joinForm.user_Id.value) > -1){
                  //-1은 아이디가 비밀번호에 없는 뜻. 
                  //따라서 -1이 아닐때(아이디를 비밀번호에서 찾았을 때) 들어옴
                  
                  $("input[id='user_Name").css("margin-top", "5%");
                    $('#pwCheck_text').html("❌ 비밀번호에 아이디를 포함할 수 없습니다.");
                  joinForm.user_Pw.focus();
                  return false;
               }
               //한글
               else if(hangleCheck.test(joinForm.user_Pw.value)){
                  //정규식 조건에 맞으면
                  $("input[id='user_Name").css("margin-top", "5%");
                    $('#pwCheck_text').html("❌ 비밀번호에 한글을 사용할 수 없습니다.");
                  joinForm.user_Pw.focus();
                  return false;
               }
               //비밀번호에 공백을 포함할 수 없다.
               else if(joinForm.user_Pw.value.search(/\s/) != -1){
                  //비밀번호에서 공백을 찾았다면
                  $("input[id='user_Name").css("margin-top", "5%");
                  $('#pwCheck_text').html("❌ 비밀번호에 공백 없이 입력해주세요.");
                  joinForm.user_Pw.focus();
                  return false;
               }
            
               else {
                  $("input[id='user_Pw").css("margin-top", "10%");
                  $("input[id='user_Name").css("margin-top", "5%");
                  $('#pwCheck_text').html('✔확인');
                  $('#pwCheck_text').attr('color', '#00CC00');
                  pw_Check = true;
               }
             
               
         }
      }	

   $("input[name='user_Pw']").keyup(function(event){
      var pw = $("input[name='user_Pw']").val();
      ValidationPw(pw);
   });


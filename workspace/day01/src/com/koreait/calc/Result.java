package com.koreait.calc;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Result
 */
@WebServlet("/Result")	//요청 URL 매핑 - 요청된 전송방식에 맞는 doGet()또는 doPost()가 실행된다.
public class Result extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Result() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  request.setCharacterEncoding("UTF-8");	//전달받은 데이터 인코딩 설정
	  response.setCharacterEncoding("UTF-8");	//전달할 데이터 인코딩 설정
	  
      response.setContentType("text/html; charset=UTF-8");	//응답할 페이지 타입 설정
      
      String text = request.getParameter("num").replace(" ","");	//수식 내에 공백을 없애주기 위해 " "를 ""로 모두 대체한다.
      PrintWriter out = response.getWriter();
      Calc calc = new Calc();
      String opers = "+-*/";	//4칸 문자 배열
      char oper = ' ';
      int check = 0;
      String[] arTemp = null;
      int num1 = 0, num2 = 0;
      String resultMsg = null;
      
      
      
      out.println("<html><body><h1>서블릿으로 만든 페이지</h1>");
      
      //수식 내의 연산자를 찾아주는 로직
      for(int i=0; i<opers.length(); i++) {
    	  for(int j=0; j<text.length(); j++) {
    		  if(text.charAt(j) == opers.charAt(i)) {
    			  //연산자를 찾았다면 oper에 저장
    			  oper = text.charAt(j);
    			  //수식 내의 연산자 개수
    			  check++;
    		  }
    	  }
      }
      out.println("<p> 결과 : ");
      if(check == 1) {	//수식 내에 연산자가 1개 있다는 뜻
    	  try {
    		  //찾은 연산자를 기준으로 양 옆을 잘라준다.
    		  arTemp = text.split("\\"+oper);
			  num1 = Integer.parseInt(arTemp[0]); //첫번째 정수
			  num2 = Integer.parseInt(arTemp[1]); //두번째 정수
			  switch(oper) {
			  case '+':
				  resultMsg = calc.add(num1, num2) + "";
				  break;
			  case '-':
				  resultMsg = calc.sub(num1, num2) + "";
				  break;
			  case '*':
				  resultMsg = calc.mul(num1, num2) + "";
				  break;
			  case '/':
				  try {
					resultMsg = calc.div(num1, num2) + "";
				} catch (ArithmeticException e) {
					resultMsg = "0으로 나눌 수 없습니다.";
				}
				  break;
			  }
		} catch (NumberFormatException e) {
			resultMsg = "정수의 연산만 가능합니다.";
		} catch (ArrayIndexOutOfBoundsException e) {
			resultMsg = "양식에 맞게 작성해주세요.";
		}
      }else if(check > 1 ) {	//연산자가 2개 이상이라는 뜻
    	  resultMsg = "두 정수의 연산만 가능합니다.";	  
      }else {	//check == 0
    	  resultMsg = "연산자를 찾지 못했습니다.";
      }
      out.println(resultMsg + "</p>");
      out.print("<a href='calc'>JSP 페이지로 이동!</a></body></html>");
      out.close();
    }
      
      /*int result;
  
      
      if(text.contains("+")) {
         String[] num = text.split("\\+");
         int num1 =Integer.parseInt(num[0]);
         int num2 =Integer.parseInt(num[1]);
         result = calc.add(num1,num2);
         out.write("<html><body>"+text+"="+result);
         out.write("<br></body>");
         
      }else if(text.contains("-")) {
         String[] num = text.split("\\-");
         int num1 =Integer.parseInt(num[0]);
         int num2 =Integer.parseInt(num[1]);
         result = calc.sub(num1,num2);
         out.write("<html><body>"+text+"="+result);
         out.write("<br></body>");
         
      }else if(text.contains("*")) {
    	  String[] num = text.split("\\*");
    	  int num1 =Integer.parseInt(num[0]);
    	  int num2 =Integer.parseInt(num[1]);
    	  result = calc.mul(num1,num2);
    	  out.write("<html><body>"+text+"="+result);
    	  out.write("<br></body>");
    	  
      }else if(text.contains("/")) {
         String[] num = text.split("\\/");
         int num1 =Integer.parseInt(num[0]);
         int num2 =Integer.parseInt(num[1]);
         try {
            result = calc.div(num1,num2);
            out.write("<html><body>"+text+"="+result);
            out.write("<br></body>");
         } catch (ArithmeticException e) {
            out.write("<html><body></body>");
            out.write("<script>alert('0으로 나눌 수 없습니다.'); history.go(-1);</script>");
         }
         
         
      }else {
         out.write("<html><body></body>");
         out.write("<script>alert('숫자만 입력해주세요.'); history.go(-1);</script>");
      }
      out.write("<a href='calc'>calc로 이동!</a><body></html>");
   }*/
   
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      doGet(request, response);
   }

}

//자바는 자반데 서블릿
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ch02_start/Start")
//여기 주소는 html의 주소를 써줘야 한다.
public class Start extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 날라오는걸 request 애가 받고 보내는걸 response애가 함
		//자바 땅이면서 서블릿이기에 자바를 마음대로 쓰면됨
		
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		//이 두개는 한국어가 깨지는걸 막아줄려고 적어 놓은 것들이다. 없으면 물음표로 뜬다(?????)
		
		String name = request.getParameter("name");
		//request 날라오는걸 애가 받겠다는 뜻
		

		PrintWriter out = response.getWriter();
		//PrintWriter : IO패키지의 Writer의 클래스 자식 중 하나, 문자열을 출력하는 스트림인 Writer의 속성을 갖고 있음
		// 또한, OutputStream의 자식 클래스이기에 byte 단위 출력 클래스인  PrintStream의 Print메서드를 모두 구현하여, Char단위 출력메서드 print를 사용할 수 있도록 구현된 클래스
		// 내 생각 :  출력을 할때 모든 것에 구애를 안받고 할 수 있도록 도와주는 아이 인거 같다.
		out.println("<html><body>"+name+" 환영합니다.</body></html>");
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}

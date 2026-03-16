package HelloServlet; // 改成你的包名

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

public class HelloServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        // 设置中文编码，避免乱码
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        // 替换成你的姓名和学号
        String name = "张三";
        String studentId = "20180000001105";
        Date now = new Date();

        // 输出页面内容
        out.println("<html><body>");
        out.println("<h3>Name : " + name + "</h3>");
        out.println("<h3>ID : " + studentId + "</h3>");
        out.println("<h3>Date and Time : " + now + "</h3>");
        out.println("</body></html>");
    }

    // 让 POST 请求也能访问
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        doGet(request, response);
    }
}
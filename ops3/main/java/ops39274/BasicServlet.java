package ops39274;

import java.io.*;
import javax.servlet.annotation.*;
import java.util.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;


@WebServlet("/basic")
public class BasicServlet extends HttpServlet {
    static final long serialVersionUID = 892389423849L;

    public void doGet(
        HttpServletRequest request,
        HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();

        String username = request.getParameter("xss");
        out.println("this is a basic servlet with a little xss");

        if ((username != null) && (username.length() > 0)) {
            out.println("<h2>Hello, " + username + "!</h2>");       
        }
    }

    public String getServletInfo() {
        return "xss servlet";
    }
}

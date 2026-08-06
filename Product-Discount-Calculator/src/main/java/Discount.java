import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name = "ConverterServlet", value = "/convert")
public class Discount extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float Price = Float.parseFloat(request.getParameter("Price"));
        float Percent = Float.parseFloat(request.getParameter("Percent"));
        String Description = request.getParameter("Description");

        double Amount = Price * Percent * 0.01 ;

        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<h1>Percent: " + Percent + "</h1>");
        writer.println("<h1>Price: " + Price + "</h1>");
        writer.println("<h1>Amount: " + Amount + "</h1>");
        writer.println("<h3>Description: " + Description + "</h3>");
        writer.println("</html>");
    }
}


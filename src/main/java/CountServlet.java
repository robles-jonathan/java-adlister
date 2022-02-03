import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet (name = "CountServlet", urlPatterns = "/count")
public class CountServlet extends HttpServlet {
    static int counter = 0;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        String reset = req.getParameter("reset");
        if(reset == null){
            out.println("<h1>The count is: " + counter++ + ".");
        } else {
            counter = 0;
            out.println("<h1>The count is: " + counter + ".");
        }
    }
}

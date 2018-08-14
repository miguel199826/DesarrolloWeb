package uni.pe;

import com.sun.javaws.progress.PreloaderDelegate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Servlet", urlPatterns = {"/Sumar","/Restar"})
public class Servlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path= req.getServletPath();
        switch (path){
            case"/Sumar":
                appSumar(req,resp);
                break;
            case"/Restar":
                appRestar(req,resp);
        }
    }

   /* protected void appRestar(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out= resp.getWriter();
        out.println("Falta implementar");
        out.flush();

    }*/
    protected void appRestar(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        //Datos
        int n1=Integer.parseInt(req.getParameter("n1").toString());
        int n2=Integer.parseInt(req.getParameter("n2").toString());
        //Proceso
        MateService mateservice=new MateService();
        int resta= mateservice.restar(n1,n2);
        //forward
        req.setAttribute("n1",n1);
        req.setAttribute("n2",n2);
        req.setAttribute("resta",resta);
        RequestDispatcher dispatcher;
        dispatcher = req.getRequestDispatcher("respuesta2.jsp");
        dispatcher.forward(req,resp);
    }

    protected void appSumar(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //Datos
        int n1=Integer.parseInt(req.getParameter("n1").toString());
        int n2=Integer.parseInt(req.getParameter("n2").toString());
        //Proceso
        MateService mateservice=new MateService();
        int suma= mateservice.sumar(n1,n2);
        //forward
        req.setAttribute("n1",n1);
        req.setAttribute("n2",n2);
        req.setAttribute("suma",suma);
        RequestDispatcher dispatcher;
        dispatcher = req.getRequestDispatcher("respuesta.jsp");
        dispatcher.forward(req,resp);
    }
}
package exemplo06;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/")
public class MaiorMenorController extends HttpServlet {

    @Override
    protected void service(
            HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        String resultado = "";

        String pesoStr = request.getParameter("peso");
        String alturaStr = request.getParameter("altura");
        if (pesoStr != null && alturaStr != null) {
            float peso1 = Float.parseFloat(pesoStr);
            float alt1 = Float.parseFloat(alturaStr);
            float imc = peso1/(alt1*alt1);
            resultado = MaiorMenorModel.calcularImc(imc);
        }

        // Adiciona a variável na requisição para o JSP trabalhar.
        request.setAttribute("resultado", resultado);

        // Redireciona requisição para o JSP.
        request.getRequestDispatcher("/maior-menor-view.jsp").forward(request, response);
    }
}

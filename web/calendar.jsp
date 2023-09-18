<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>

<%
String errorMessage = null;
int mes = 0, ano = 0;
try {
    mes = Integer.parseInt(request.getParameter("mes"));
    ano = Integer.parseInt(request.getParameter("ano"));
} catch (Exception e) {
    errorMessage = e.getMessage();
}
%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Calendário</title>
</head>
<body>
    <h2><a href="index.jsp">Voltar</a></h2>
    <h1>Calendário</h1>
    <%
    if (mes >= 1 && mes <= 12 && ano >= 1900 && ano <= 2100) {
        java.util.Calendar calendario = java.util.Calendar.getInstance();
        calendario.set(ano, mes - 1, 1); 
        int diaDaSemana = calendario.get(Calendar.DAY_OF_WEEK);
    %>
    <table border="1">
        <tr>
            <th>Domingo</th>
            <th>Segunda</th>
            <th>Terça</th>
            <th>Quarta</th>
            <th>Quinta</th>
            <th>Sexta</th>
            <th>Sábado</th>
        </tr>
        <tr>
            <%-- Preenche os dias em branco no início do mês --%>
            <% for (int i = 1; i < diaDaSemana; i++) { %>
                <td></td>
            <% } %>
            
            <% int dia = 1; %>
            
            <% while (dia <= calendario.getActualMaximum(Calendar.DAY_OF_MONTH)) { %>
            
                <%-- Exibe o dia do mês --%>
                <td><%= dia %></td>
                <% dia++;
                
                //Verifica se é sábado, fecha a linha da tabela e comece uma nova linha
                if (diaDaSemana == Calendar.SATURDAY) { %>
                    </tr><tr>
                <% }
                //Avanca para o próximo dia da semana
                diaDaSemana = (diaDaSemana % 7) + 1;
            } %>
        </tr>
    </table>
    <% } else { %>
        <p>Por favor, insira um mês válido (de 1 a 12) e um ano entre 1900 e 2100.</p>
    <% } %>
</body>
</html>
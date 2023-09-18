<%-- 
    Document   : index
    Created on : 11 de set. de 2023, 14:27:37
    Author     : victa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page Principal</title>
    </head>
    <body>
        <h1>Dados: <br></h1>
        <form action="calendar.jsp">
            <input type="number" name="mes" placeholder="Mês"/>
            <input type="number" name="ano" placeholder="Ano"/>
            <input type="submit" value="Gerar calendário"/>
        </form>
    </body>
</html>



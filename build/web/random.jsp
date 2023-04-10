<%-- 
    Document   : sum
    Created on : 10 de abr. de 2023, 12:46:12
    Author     : agath
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
//recomendavel ler as variaveis antes do processo, de maneira mais controlada
    String errorMessage = null;
    //declarar variaveis de controle fora do try para usar no restante do projeto
    int n=10;
    try{
        //se tiver o parametro do botão lê as variaveis
        if(request.getParameter("random")!=null){
             n = Integer.parseInt(request.getParameter("n"));
        }
    }catch(Exception ex){
        errorMessage = ex.getMessage(); 
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h4><a href="index.jsp">Voltar</a></h4>
        <h1>JSP</h1>
        <h2>Random Numbers</h2>
        <form action="random.jsp">
            <input type="number" name="n" value="<%=n%>"/>
            <input type="submit" name="random" value="generate"/> 
        </form>
        <hr/>
        <table border='1'>
            <tr>
                <th>Index</th>
                <th>Number</th>
            </tr>
            <%for(int i=1; i<=n; i++){%>
                <% int random = ((int)(100*Math.random())); %>
                <tr>
                    <td><%=i%></td>
                    <td><%=random%></td>
                </tr>
            <%}%>
        </table>
    </body>
</html>

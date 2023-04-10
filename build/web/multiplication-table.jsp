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
        if(request.getParameter("mult")!=null){
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
        <h2>Multiplication Table</h2>
        <form action="multiplication-table.jsp">
            <input type="number" name="n" value="<%=n%>"/>
            <input type="submit" name="mult" value="generate"/> 
        </form>
        <hr/>
        <table>
            <%for(int i=1; i<=10; i++){%>
                <tr>
                    <td><%=n%></td>
                    <td> x <%=i%></td>
                    <td> = <%=(n*i)%></td>
                </tr>
            <%}%>
        </table>
    </body>
</html>

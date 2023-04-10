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
    double n1=0, n2=0, result=0;
    try{
        //se tiver o parametro do botão lê as variaveis
        if(request.getParameter("sum")!=null){
             n1 = Double.parseDouble(request.getParameter("n1"));
             n2 = Double.parseDouble(request.getParameter("n2"));
             result = n1+n2;
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
        <h2>Sum</h2>
        <%if(errorMessage==null){%>
            <div> <%=n1%> + <%=n2%> = <%=result%></div>
        <%}else{%>
            <div style="color:red"> <%=errorMessage%></div>
        <%}%>
    </body>
</html>

<%-- 
    Document   : index
    Created on : 10 de abr. de 2023, 11:33:20
    Author     : agath
    
    Qualquer pagrina chamada index será interpretada como a principal, 
    independente de sua extensão
--%>
<%--comentario--%>

<%--Temos aqui uma diretiva
    <%%> delimita com comando jsp, se chama scriptlet
    está mandando o mime type da pag e seu charset--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--Essa parte é processada no servidor, indo para no navegador
apenas a resposta. No caso, o valor de z. Esse recurso é
ultilizado literalmente quando precisamos que o codigo seja
processado no server, ou na pagina, ou uma api que usa json--%>
<%--<%
    int x = 10;
    int y = 10;
    //int z = x+y;
    //out.println(z); anotação superior quando este cod estava em body
%> --%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>JSP page</h1>
        <%--Geralmente usado para mostrar valor--%>
        <h2> Exemplo de Expression</h2>
        <div>
            <%--Expressions(<%= %>): permite que possa jogar um valor
            ou uma expressão (tipo, x+y, já vira o resultado, ou se tiver variavel
            vire seu valor) ela automaticamente vai ser convertida em texto
            e lançada no out.println--%>
            <%= new java.util.Date() %>
            <%--Em qualquer uso, terá o valor literal e não o cod java--%>
        </div>
        <%--Geralmente usado para processar conteudo--%> 
        <h2> Exemplo de Scriptlet</h2>
        <div>
            <% out.println(new java.util.Date()); %>
            <%--Em qualquer uso, terá o valor literal e não o cod java--%>
        </div>
        <h3>Exemplos</h3>
        <h4>Sum</h4>
        <form action="sum.jsp">
            <input type="number" name="n1"/> +
            <input type="number" name="n2"/> 
            <input type="submit" name="sum" value="sum"/> 
        </form>
        <h4>Random Numbers</h4>
        <form action="random.jsp">
            <input type="number" name="n" value="10"/>
            <input type="submit" name="random" value="generate"/> 
        </form>
        <h4>Multiplication Table</h4>
        <form action="multiplication-table.jsp">
            <input type="number" name="n" value="2"/>
            <input type="submit" name="mult" value="generate"/> 
        </form>
    </body>
</html>

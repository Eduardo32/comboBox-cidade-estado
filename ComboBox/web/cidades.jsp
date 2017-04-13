<%-- 
    Document   : cidades
    Created on : 08/04/2017, 21:21:21
    Author     : M
--%>

<%@page import="DAO.EstadoDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            <%
                String uf = request.getParameter("estado");
                
                if(uf.equals("0")) {
                    %> <option value="0">-- Selecione o estado --</option> <%
                } else {
                    ResultSet rs;
                    rs = EstadoDAO.carregarCidades(uf);
                    
                    %> <option value="0">-- Cidades --</option> <%
                    while(rs.next()){
                        %> <option value="<%= rs.getString(1) %>"><%= rs.getString(2) %></option> <%
                    }
                }
            %>
    </body>
</html>

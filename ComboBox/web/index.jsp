<%-- 
    Document   : index
    Created on : 08/04/2017, 20:59:28
    Author     : M
--%>

<%@page import="DAO.EstadoDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="js/jquery-3.2.0.min.js" type="text/javascript"></script>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <script>
            $(document).ready(function () {
                $('#estado').change(function () {
                    var uf = $('#estado').val();
                    
                    $.post("cidades.jsp", {estado: uf}, function (data) {
                        $('#cidade').html(data);
                    });
                }); 
            });
        </script>
    </head>
    <body>
        <form action="" method="POST">
            <table>
                <tr>
                    <td><label for="estado">Estado</label></td>
                    <td>
                        <select id="estado" name="estado">
                            <option value="0">-- Estado --</option>
                            <%
                                ResultSet rs;
                                rs = EstadoDAO.carregarEstados();
                                
                                while(rs.next()) {
                            %>
                                    <option value="<%= rs.getString(1) %>"><%= rs.getString(2) %></option>
                            <%
                                }
                            %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="cidade">Cidade</label></td>
                    <td>
                        <select id="cidade" name="cidade">
                            <option value="0">-- Selecione o estado --</option>
                        </select>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>

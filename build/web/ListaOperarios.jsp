<%-- 
    Document   : ListaOperarios
    Created on : 30 oct. 2026, 12:31:55
    Author     : Alumno
--%>
<%@page import="Control.ctrl_Operarios"%>
<%@page import="Modelo.Operario"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FACTORIA "LA SOLUCION" - WEB</title>
    </head>
    <body>
        <%!
           ArrayList<Operario>Lista; 
           ctrl_Operarios ctrlOper = new ctrl_Operarios();
        %>   
        <h3>NUESTROS OPERARIOS</h3>
        <table border="1">
            <thead>
                <tr>
                    <th>CODIGO</th>
                    <th>OPERARIO</th>
                    <th>DNI</th>
                    <th>EXPERIENCIA</th>
                </tr>
            </thead>
            <tbody>
                
        <%
        Lista=ctrlOper.getOperariosWeb();     
        Operario Oper=null;
           for (int n=0;n<Lista.size();++n){
               Oper=Lista.get(n);
        %>
                <tr>
                    <td><%=Oper.getOperarioId() %></td>
                    <td><%=Oper.getOperario() %></td>
                    <td><%=Oper.getDNI() %></td>
                    <td><%=Oper.getExperiencia() %></td>
                </tr>
        <%
               
           }
        %>        
            </tbody>
        </table>       
       

    </body>
</html>

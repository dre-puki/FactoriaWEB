<%-- 
    Document   : ConsultarBoletas
    Created on : 31 oct. 2026, 10:35:13
    Author     : Alumno
--%>

<%@page import="Control.Boleta"%>
<%@page import="Modelo.Operario"%>
<%@page import="Control.ctrl_Operarios"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FACTORIA "LA SOLUCION" - WEB</title>
    </head>
    <body>
        <form action="ConsultarBoletas.jsp">

        <%!
           ArrayList<Operario>Lista; 
           ctrl_Operarios ctrlOper = new ctrl_Operarios();
           int CodOper=0,NS=0;
           Boleta Bol=null;
           String DocBol="";
        %>   
            <h1>CONSULTAR BOLETAS DE PAGO</h1>
            Operarios:<br>
            <select name="lstOperarios" size="5">
             
               
            <%
            Lista=ctrlOper.getOperariosWeb();     
            Operario Oper=null;
               for (int n=0;n<Lista.size();++n){
                   Oper=Lista.get(n);
                   
            %>
                <option 
                    value="<%=Oper.getOperarioId() %>">
                    <%=Oper.getOperario() %>
                </option>                                     
            <%               
           }
        %>
        </select>
        <br>   
        Nro. Semana:
        <input type="text" name="txtNS" value="0" size="10" />
        <input type="submit" value="Ver Boleta" name="btnBoleta" />
        <%
           if(request.getParameter("btnBoleta")!=null){
               CodOper=Integer.parseInt(request.getParameter("lstOperarios"));
               NS=Integer.parseInt(request.getParameter("txtNS"));
               Bol=new Boleta(CodOper,NS);
               DocBol=Bol.getBoleta();
           }
        %>

        <br>
        <textarea id="Boleta" 
                  name="txtBoleta" 
                  rows="30" 
                  cols="50">
                  <%=DocBol%>
        </textarea>
        </form>            
    </body>
</html>

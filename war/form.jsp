<%-- 
    Document   : form
    Created on : 28-May-2014, 09:56:14
    Author     : Levi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="proefbkwm.AutoOverzicht" %>
<%@page import="proefbkwm.Auto" %>
<!DOCTYPE html>
<%
AutoOverzicht overz = new AutoOverzicht();
ArrayList<Auto> autolijst = overz.getAutolijst();
ArrayList<String> merken = new ArrayList();
String options="";
for(int i = 0; i < overz.autolijst.size(); i++){
    if(!merken.contains(autolijst.get(i).getMerk())){
        merken.add(autolijst.get(i).getMerk());
    }
}
for(int i = 0; i <merken.size(); i++){
    options += "<option value=\""+merken.get(i)+ "\">" +merken.get(i)+"</options>";
}
%>    
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/master.css">
        <title>zoeken</title>
    </head>
    <body>
        <div id="zoek1">
        <form action="index.jsp" method="get">
            <table style='width:300px'>
                <tr><th id="theading1"> Zoeken op prijs </th></tr>
                <tr><td>Vul de minimale en/of maximale prijs in.</td></tr>
                <tr><td><input type="text" name="minimum"></td></tr>
                <tr><td><input type="text" name="maximum"></td></tr>
                <tr><td><input type="submit" name="btn1" value="Zoek op prijs"></td></tr>
            </table>
        </form>
        </div>
        <div id="zoek2">
        <form action="index.jsp" method="get">
            <table style='width:300px'>
                <tr>
            <th id="theading2">Zoeken op merk</th>
                </tr>
                <tr><td>Kies de naam van uw merk zodat alle auto's van dat merk worden weergeven.</td></tr>
                <tr><td>Merk:
                <select name="drop1">
                        <%=options%>
                </select>
                    </td></tr><tr><td>
                <input type="submit" name="btn" value="Zoek op merk">
                    </td></tr>
            </table>    
        </form>
        </div>
        <div id="zoek3">
            <form action="index.jsp" method="get">
                <table style='width:300px'>
                <tr>
                <th id="theading2">Zoeken op kleur</th>
                </tr>
                <tr><td>Kies een kleur voor weergeven.</td></tr>
                <tr><td>
                        <input type="radio" name="kleur" value="rood">rood<input type="radio" name="kleur" value="zwart">zwart<input type="radio" name="kleur" value="wit">wit<br>
                        <input type="radio" name="kleur" value="groen">groen<input type="radio" name="kleur" value="koper">koper<input type="radio" name="kleur" value="blauw">blauw
                    </td></tr><tr><td>
                <input type="submit" name="btn2" value="Zoek op kleur">
                    </td></tr>
                </table>    
            </form>
        </div>
    </body>
</html>

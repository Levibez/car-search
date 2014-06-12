<%-- 
    Document   : proefvbkwm
    Created on : 28-May-2014, 08:48:12
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
String content="";
String item="";
String selection="";
String zoek="";
String options="";
int min;
int max;

for(int i = 0; i < overz.autolijst.size(); i++){
    if(!merken.contains(autolijst.get(i).getMerk())){
        merken.add(autolijst.get(i).getMerk());
    }
}
for(int i = 0; i <merken.size(); i++){
    options += "<option value=\""+merken.get(i)+ "\">" +merken.get(i)+"</options>";
}
//zoek functie tekstvak.
if (request.getParameter("btnz") != null) {
    zoek = request.getParameter("autozoek");
    for( int i = 0; i < overz.autolijst.size(); i++) {
        item+= autolijst.get(i).getMerk().toLowerCase()+" "+autolijst.get(i).getModel().toLowerCase()+" "+autolijst.get(i).getPrijsFormat().toLowerCase();
        if(item.toLowerCase().contains(zoek.toLowerCase()) || zoek == ""){
                   content+="<div id=\"contentbox\">";
                   content+="<div id=\"head1\">"+autolijst.get(i).getMerk()+" "+autolijst.get(i).getModel()+"</div><div id=\"head2\">Prijs</div>";
                   content+="<div id=\"infobox\"><div id=\"infoboxtitle\">Informatie</div>";
                   content+="<div id=\"info\">Hp/pk:  "+autolijst.get(i).getPk()+"<br>Gewicht:  "+autolijst.get(i).getGewicht()+"<br>Cillinder:  "+autolijst.get(i).getVerbruik()+"<br>Snelheid:  "+autolijst.get(i).getSnelheid()+"</div></div>";
                   content+="<br><div id=\"img\">"+autolijst.get(i).getPlaatje()+"</div><div id=\"prijs\">€"+autolijst.get(i).getPrijsFormat()+"</div></div>";
                  
        }
    }
}
//Zoek functie min en/of max.
if (request.getParameter("btn1") != null) {
    if(request.getParameter("minimum") == ""){
        min = Integer.MIN_VALUE;
    }
    else{
    min = Integer.parseInt(request.getParameter("minimum"));
    }
    if(request.getParameter("maximum") == ""){
        max = Integer.MAX_VALUE;   
    }
    else{
    max = Integer.parseInt(request.getParameter("maximum"));
    }
    for( int i = 0; i < overz.autolijst.size(); i++) {
        if(autolijst.get(i).getPrijs()>=(min) && autolijst.get(i).getPrijs()<=(max)){
                   content+="<div id=\"contentbox\">";
                   content+="<div id=\"head1\">"+autolijst.get(i).getMerk()+" "+autolijst.get(i).getModel()+"</div><div id=\"head2\">Prijs</div>";
                   content+="<div id=\"infobox\"><div id=\"infoboxtitle\">Informatie</div>";
                   content+="<div id=\"info\">Hp/pk:  "+autolijst.get(i).getPk()+"<br>Gewicht:  "+autolijst.get(i).getGewicht()+"<br>Cillinder:  "+autolijst.get(i).getVerbruik()+"<br>Snelheid:  "+autolijst.get(i).getSnelheid()+"</div></div>";
                   content+="<br><div id=\"img\">"+autolijst.get(i).getPlaatje()+"</div><div id=\"prijs\">€"+autolijst.get(i).getPrijsFormat()+"</div></div>";
                  
        }
    }
}
//zoek functie dropdown.
if (request.getParameter("btn") != null){ 
            item = request.getParameter("drop1");
            for( int i = 0; i < overz.autolijst.size(); i++) {
                if(autolijst.get(i).getMerk().toLowerCase().contains(item.toLowerCase()) || item.equals("alles")){
                   content+="<div id=\"contentbox\">";
                   content+="<div id=\"head1\">"+autolijst.get(i).getMerk()+" "+autolijst.get(i).getModel()+"</div><div id=\"head2\">Prijs</div>";
                   content+="<div id=\"infobox\"><div id=\"infoboxtitle\">Informatie</div>";
                   content+="<div id=\"info\">Hp/pk:  "+autolijst.get(i).getPk()+"<br>Gewicht:  "+autolijst.get(i).getGewicht()+"<br>Cillinder:  "+autolijst.get(i).getVerbruik()+"<br>Snelheid:  "+autolijst.get(i).getSnelheid()+"</div></div>";
                   content+="<br><div id=\"img\">"+autolijst.get(i).getPlaatje()+"</div><div id=\"prijs\">€"+autolijst.get(i).getPrijsFormat()+"</div></div>";
                  
            }
      }
}
//zoek functie op kleur.
if (request.getParameter("btn2") != null){ 
            item = request.getParameter("kleur");
            for( int i = 0; i < overz.autolijst.size(); i++) {
                if(autolijst.get(i).getKleur().toLowerCase().contains(item.toLowerCase())){
                   content+="<div id=\"contentbox\">";
                   content+="<div id=\"head1\">"+autolijst.get(i).getMerk()+" "+autolijst.get(i).getModel()+"</div><div id=\"head2\">Prijs</div>";
                   content+="<div id=\"infobox\"><div id=\"infoboxtitle\">Informatie</div>";
                   content+="<div id=\"info\">Hp/pk:  "+autolijst.get(i).getPk()+"<br>Gewicht:  "+autolijst.get(i).getGewicht()+"<br>Cillinder:  "+autolijst.get(i).getVerbruik()+"<br>Snelheid:  "+autolijst.get(i).getSnelheid()+"</div></div>";
                   content+="<br><div id=\"img\">"+autolijst.get(i).getPlaatje()+"</div><div id=\"prijs\">€"+autolijst.get(i).getPrijsFormat()+"</div></div>";
                  
            }
      }
}
//weergave zonder zoek.
if (request.getParameter("btn") == null && request.getParameter("btn1") == null && request.getParameter("btnz")== null && request.getParameter("btn2")== null){ 
            for( int i = 0; i < overz.autolijst.size(); i++) {
                if(autolijst.get(i).getMerk().toLowerCase().contains(item.toLowerCase())){
                   content+="<div id=\"contentbox\">";
                   content+="<div id=\"head1\">"+autolijst.get(i).getMerk()+" "+autolijst.get(i).getModel()+"</div><div id=\"head2\">Prijs</div>";
                   content+="<div id=\"infobox\"><div id=\"infoboxtitle\">Informatie</div>";
                   content+="<div id=\"info\">Hp/pk:  "+autolijst.get(i).getPk()+"<br>Gewicht:  "+autolijst.get(i).getGewicht()+"<br>Cillinder:  "+autolijst.get(i).getVerbruik()+"<br>Snelheid:  "+autolijst.get(i).getSnelheid()+"</div></div>";
                   content+="<br><div id=\"img\">"+autolijst.get(i).getPlaatje()+"</div><div id=\"prijs\">€"+autolijst.get(i).getPrijsFormat()+"</div></div>";
                                   
            }
      }
}

%>    
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/master.css">
        <title>Autos</title>
    </head>
    <body>
        <div id="h1">Find a Ride</div>
        <div id="contentboxz">
            <form>
                <p align="center">
                    <button type="submit" value="Zoeken" name="btnz"/>Zoek</button>
                    <input type="text" name="autozoek">
                    
                    <button type="button" value="geavanceerd" onClick = "document.getElementById('contentboxz').style.height = '300px';">Geavanceerd</button>
                    <button type="button" value="Wis filter" onclick="location.href = 'index.jsp'" />Wissen</button>
                    
                    <div id="upbtn">
                    <button type="button" onClick = "document.getElementById('contentboxz').style.height = '50px';">&and;</button>
                    </div>
            </p>
            <div id="zoekg">
                    <div id="zoek1">
        
            <table style='width:300px'>
                <tr><th id="theading1"> Zoeken op prijs </th></tr>
                <tr><td>Vul de minimale en/of maximale prijs in.</td></tr>
                <tr><td><input type="text" name="minimum"></td></tr>
                <tr><td><input type="text" name="maximum"></td></tr>
                <tr><td><input type="submit" name="btn1" value="Zoek op prijs"></td></tr>
            </table>
        </div>
        <div id="zoek2">
            <table style='width:300px'>
                <tr>
            <th id="theading2">Zoeken op merk</th>
                </tr>
                <tr><td>Kies de naam van uw merk zodat alle auto's van dat merk worden weergeven.</td></tr>
                <tr><td>Merk:
                        <form action="index.jsp" method="POST">
                <select type="submit" name="drop1">
                <option value="alles">Alle</options>
                        <%=options%>
                </select>
                        </form>
                    </td></tr><tr><td>
                <input type="submit" name="btn" value="Zoek op merk">
                    </td></tr>
            </table>    
        </div>
        <div id="zoek3">
                <table style='width:300px'>
                <tr>
                <th id="theading2">Zoeken op kleur</th>
                </tr>
                <tr><td>Kies een kleur.</td></tr>
                <tr><td>
                        <input type="radio" name="kleur" value="rood">rood<input type="radio" name="kleur" value="zwart">zwart<input type="radio" name="kleur" value="wit">wit<input type="radio" name="kleur" value="zilver">grijs<br>
                        <input type="radio" name="kleur" value="groen">groen<input type="radio" name="kleur" value="koper">koper<input type="radio" name="kleur" value="blauw">blauw
                    </td></tr><tr><td>
                <input type="submit" name="btn2" value="Zoek op kleur">
                    </td></tr>
                </table>    
        </div>
        </div>
        </div>
                <div id="master">
                        <%=content%>
                        <div id="footer">Copyright - Levi Boon</div>
                </div>
            </form>
    </body>
</html>

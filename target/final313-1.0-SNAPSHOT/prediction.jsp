<%-- 
    Document   : prediction
    Created on : Mar 26, 2021, 9:08:32 AM
    Author     : oluwaseke
--%>
<%--
  Created by IntelliJ IDEA.
  User: oluwaseke
  Date: 26-Mar-21
  Time: 08:33
  To change this template use File | Settings | File Templates.
--%>
<%@page import="java.io.BufferedReader" %>
<%@page import="java.io.BufferedWriter" %>
<%@page import="java.io.FileWriter" %>
<%@page import="java.io.FileReader" %>
<%@page import="java.util.Enumeration"%>
<%@page import="java.sql.*" %>
<%@page import="weka.classifiers.trees.J48"%>
<%@page import="weka.core.Instances"%>

<%@page contentType = "text/html" pageEncoding="UTF-8"%>
<%
    try{
        Object selectedItem1=request.getParameter("metcolor");
        String MetColor=selectedItem1.toString();
   
        Object selectedItem2=request.getParameter("color");
        String Color=selectedItem2.toString();
    
        Object selectedItem3=request.getParameter("boardcomputer");
        String BoardComputer=selectedItem3.toString();

        Object selectedItem4=request.getParameter("centralLock");
        String CentralLock=selectedItem4.toString();

        Object selectedItem5=request.getParameter("poweredwindows");
        String PoweredWindows=selectedItem5.toString();

        Object selectedItem6=request.getParameter("metallicrim");
        String MetallicRim=selectedItem6.toString();

        String ToPredict = "?";
        BufferedWriter writer =new BufferedWriter(new FileWriter("carPrediction.arff"));
        writer.write("@relation carPrediction\n" + "\n" +
        "@attribute MetColor {TRUE,FALSE}\n"+
        "@attribute Color {Beige, Blue, Silver, Black, White, Grey, Red, Green}\n"+
        "@attribute BoardComputer{TRUE,FALSE}\n"+
        "@attribute CentralLock{TRUE,FALSE}\n"+
        "@attribute PoweredWindows {TRUE,FALSE}\n"+
        "@attribute MetallicRim {TRUE,FALSE}\n"+
        "@attribute FuelType {Diesel,Petrol, CNG}\n"+
        "@data");
        writer.close();
        String filename = "carPrediction.arff";
        FileWriter fw = new FileWriter(filename,true);
        fw.write("\n");
        fw.write(MetColor);
        fw.write(",");
        fw.write(Color);
        fw.write(",");
        fw.write(BoardComputer);
        fw.write(",");
        fw.write( CentralLock);
        fw.write(",");
        fw.write(PoweredWindows);
        fw.write(",");
        fw.write(MetallicRim);
        fw.write(",");
        fw.write(ToPredict);

        fw.close();
        BufferedReader breader =null;
        breader = new BufferedReader(new FileReader("Project3DataTrain.arff"));
        Instances train =new Instances (breader);
        train.setClassIndex(train.numAttributes()-1);

        breader = new BufferedReader(new FileReader("carPrediction"));
        Instances test = new Instance(breader);
        Instances test =new Instances(breader);
        test.setClassIndex(train.numAttributes()-1);
        breader.close();
        J48 tree =new J48();
        tree.buildClassifier(train);
        Instances labeled = new Instances (test);

        for (int i=0; i<test.numInstances(); i++){
            double clsLabel = tree.classifyInstance(test.instance(i));
            labeled.instance(i).setClassValue(clsLabel);
            String output=labeled.lastInstance().toString();
            String[] arr=output.split(",");
            String result = arr[6];
            session.setAttribute("Name",result);
        }
    }catch(Exception e){
        e.printStackTrace();
    }
    
 /*   
    try{
        if(request.getParameter("Submit")!=null){
            String MetColor = request.getParameter("metcolor");
            String Color = request.getParameter("Color");
            String BoardComputer = request.getParameter("boardcomputer");
            String CentralLock = request.getParameter("centrallock");
            String PoweredWindows = request.getParameter("poweredwindows");
            String MetallicRim = request.getParameter("metallicrim");
            String FuelType = request.getParameter("fueltype");

            Connection con;
            PreparedStatement pst;
            ResultSet rs;

            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/carprediction", "root", "");
            pst = con.prepareStatement("insert into records(MetColor,Color,BoardComputer,CentralLock,PoweredWIndows,MetallicRim,FuelType)values(?,?,?,?,?,?,?)");
            pst.setString(1, MetColor);
            pst.setString(2, Color);
            pst.setString(3, BoardComputer);
            pst.setString(4, CentralLock);
            pst.setString(5, PoweredWindows);
            pst.setString(6, MetallicRim);
            pst.setString(7, FuelType);
            pst.executeUpdate();*/
%>
<!--<script>
    alert('Your input has been recorded');
</script> -->

<%/*
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
*/
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <jsp:forward page="output.jsp"/>
    </body>
</html>


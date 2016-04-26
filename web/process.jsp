<%-- 
    Document   : process
    Created on : Feb 1, 2016, 12:00:43 PM
    Author     : Ionic
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
    
    <%
    String ward=request.getParameter("ward");
      String buth=request.getParameter("buth");
       String sql;
       int c_bjp=0;
       int c_congg=0;
       int c_bsp=0;
       int c_sp=0;
       int c_others=0;
       int c_pal=0;
       int c_yadav=0;
       int c_tyagi=0;
       int c_kori=0;
       int c_jatav=0;
       int c_valmiki=0;
       int c_khataik=0;
       int c_brahamana=0;
       int c_thakur=0;
       int c_other=0;
       int c_dhobi=0;
        int c_pal_BJP=0;
       int c_yadav_BJP=0;
       int c_tyagi_BJP=0;
       int c_kori_BJP=0;
       int c_jatav_BJP=0;
       int c_valmiki_BJP=0;
       int c_khataik_BJP=0;
       int c_brahamana_BJP=0;
       int c_thakur_BJP=0;
       int c_other_BJP=0;
       int c_dhobi_BJP=0;
       int c_others_BJP=0;
       Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/voter","root","root");
        Statement st=con.createStatement();
        ResultSet rs;
        out.println("success");
       
        if(buth=="ALL" && ward=="ALL")
      {
          sql="select * from voters";
          rs=st.executeQuery(sql);
          if(rs.next())                  // HINDI NOT compare in rs
          {
              if(rs.getString(12)=="BJP")//for the first table (if)
              {
                  c_bjp++;
              }
              
              else if(rs.getString(12)=="CONGG")
              {
                  c_congg++;
              }
          
              else if(rs.getString(12)=="BSP")
              {
                  c_bsp++;
              }
          
              else if(rs.getString(12)=="SP")
              {
                  c_sp++;
              }
          
              else
              {
                  c_others++;
              }
          
              if(rs.getString(10)=="PAL")     // PAL is small or capital.For the 2nd table(if)
              {
                  c_pal++;
              }
              
              else if(rs.getString(10)=="YADAV")
              {
                  c_yadav++;
              }
          
              else if(rs.getString(10)=="TYAGI")
              {
                  c_tyagi++;
              }
          
              else if(rs.getString(10)=="KORI")
              {
                  c_kori++;
              }
          
              else if(rs.getString(10)=="DHOBI")
              {
                  c_dhobi++;
              }
          
              else if(rs.getString(10)=="VALMIKI")
              {
                  c_valmiki++;
              }
              
              else if(rs.getString(10)=="JATAV")
              {
                  c_jatav++;
              }
              
              else if(rs.getString(10)=="KHATAIK")
              {
                  c_khataik++;
              }
          
              else if(rs.getString(10)=="BRAHAMANA")
              {
                  c_brahamana++;
              }
          
              else if(rs.getString(10)=="DHOBI")
              {
                  c_thakur++;
              }
              
             else
                  c_others++;
             
              
               if(rs.getString(12)=="BJP")//for the 3rd table(if)
              {
               if(rs.getString(10)=="PAL")     // PAL is small or capital.
              {
                 c_pal_BJP++;
              }
              
              else if(rs.getString(10)=="YADAV")
              {
                  c_yadav_BJP++;
              }
          
              else if(rs.getString(10)=="TYAGI")
              {
                 c_tyagi_BJP++;
              }
          
              else if(rs.getString(10)=="KORI")
              {
                 c_kori_BJP++;
              }
          
              else if(rs.getString(10)=="DHOBI")
              {
                  c_dhobi_BJP++;
              }
          
              else if(rs.getString(10)=="VALMIKI")
              {
                 c_valmiki_BJP++;
              }
              
              else if(rs.getString(10)=="JATAV")
              {
                  c_jatav++;
              }
              
              else if(rs.getString(10)=="KHATAIK")
              {
                 c_khataik_BJP++;
              }
          
              else if(rs.getString(10)=="BRAHAMANA")
              {
                  c_brahamana_BJP++;
              }
          
              else if(rs.getString(10)=="DHOBI")
              {
                  c_thakur_BJP++;
              }
              
             else
                 c_others_BJP++;
          
       
              }
          }
      }
      
        else
      {
          sql="select * from voters where Buth_no='"+buth+"' and Ward_no='"+ward+"'";
           rs=st.executeQuery(sql);
          if(rs.next())
          {
              if(rs.getString(12).equals("BJP"))      //for the 3rd table(else)
              {
                  c_bjp++;
              }
              
              else if(rs.getString(12)=="CONGG")
              {
                  c_congg++;
              }
          
              else if(rs.getString(12)=="BSP")
              {
                  c_bsp++;
              }
          
              else if(rs.getString(12)=="SP")
              {
                  c_sp++;
              }
          
              else
              {
                  c_others++;
              }
              if(rs.getString(10)=="PAL")     // PAL is small or capital //for the 3rd table(else)
              {
                  c_pal++;
              }
              
              else if(rs.getString(10)=="YADAV")
              {
                  c_yadav++;
              }
          
              else if(rs.getString(10)=="TYAGI")
              {
                  c_tyagi++;
              }
          
              else if(rs.getString(10)=="KORI")
              {
                  c_kori++;
              }
          
              else if(rs.getString(10)=="DHOBI")
              {
                  c_dhobi++;
              }
          
              else if(rs.getString(10)=="VALMIKI")
              {
                  c_valmiki++;
              }
              
              else if(rs.getString(10)=="JATAV")
              {
                  c_jatav++;
              }
              
              else if(rs.getString(10)=="KHATAIK")
              {
                  c_khataik++;
              }
          
              else if(rs.getString(10)=="BRAHAMANA")
              {
                  c_brahamana++;
              }
          
              else if(rs.getString(10)=="DHOBI")
              {
                  c_thakur++;
              }
              
             else
                  c_others++;
              
              
              if(rs.getString(12)=="BJP")//for the 3rd table (else)
              {
               if(rs.getString(10)=="PAL")     // PAL is small or capital.
              {
                 c_pal_BJP++;
              }
              
              else if(rs.getString(10)=="YADAV")
              {
                  c_yadav_BJP++;
              }
          
              else if(rs.getString(10)=="TYAGI")
              {
                 c_tyagi_BJP++;
              }
          
              else if(rs.getString(10)=="KORI")
              {
                 c_kori_BJP++;
              }
          
              else if(rs.getString(10)=="DHOBI")
              {
                  c_dhobi_BJP++;
              }
          
              else if(rs.getString(10)=="VALMIKI")
              {
                 c_valmiki_BJP++;
              }
              
              else if(rs.getString(10)=="JATAV")
              {
                  c_jatav++;
              }
              
              else if(rs.getString(10)=="KHATAIK")
              {
                 c_khataik_BJP++;
              }
          
              else if(rs.getString(10)=="BRAHAMANA")
              {
                  c_brahamana_BJP++;
              }
          
              else if(rs.getString(10)=="DHOBI")
              {
                  c_thakur_BJP++;
              }
              
             else
                 c_others_BJP++;
          
       
              }
          }
      }
        
        
        
        
        
    %>
</html>

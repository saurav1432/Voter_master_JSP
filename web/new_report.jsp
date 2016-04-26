<%-- 
    Document   : report
    Created on : Feb 1, 2016, 11:23:20 AM
    Author     : Ionic
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
   
}
<style>
    .wrap {
    width: 100%;
    overflow:auto;}
.fleft {
    float:left; 
    width: 33%;
    background:lightyellow;
    height: 940px;
}
.fcenter {
    float:left; 
    width: 33%;
    background:lightyellow;
    height: 940px;
}

.fright {
    float: right;
    background:lightyellow;
    height:940px;
    width: 33%;
}
</style>
    </head>
     <body bgcolor="white">
         
         
  <%
      String ward=request.getParameter("ward");
      String buth=request.getParameter("buth");
      String choice=request.getParameter("choice");
      %>
      
      <center>
      <table width="800" border="2px solid black">
          <tr>
               <th>WARD :  <%= ward %></th> 
               <th>BUTH :  <%= buth %></th>
              </tr>
             
      </table>
               <br><br>
      <center>
          
          
      <%
     /// out.println(ward);  // delete
      //out.println(buth);   // delete
       String sql;
       int c_bjp=0;
       int c_congg=0;
       int c_bsp=0;
       int c_sp=0;
       int c_others_party=0;
       int c_pal=0;
       int c_yadav=0;
       int c_tyagi=0;
       int c_kori=0;
       int c_jatav=0;
       int c_valmiki=0;
       int c_khataik=0;
       int c_brahamana=0;
       int c_thakur=0;
       int c_others_cast=0;
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
       
        try{
            int i=0,j=1;
         String driver="oracle.jdbc.driver.OracleDriver";    // for connection to databse
         String url="jdbc:oracle:thin:@localhost:1521:xe";
         String use="system";
         String pas="saurav";
         Class.forName(driver);
         Connection con=DriverManager.getConnection(url,use,pas);
        Statement st=con.createStatement();
        ResultSet rs;
        //out.println("success");
       
        if(buth.equalsIgnoreCase("ALL") && ward.equalsIgnoreCase("ALL"))            // if total buth and ward
      {
         // out.println("success ALL");
          sql="select * from voters";
          rs=st.executeQuery(sql);
          while(rs.next())                  // HINDI NOT compare in rs
          {
              if(rs.getString("PARTY").equalsIgnoreCase("BJP") || rs.getString("PARTY").equals("भाजपा"))//for the first table (if)
              {
                  c_bjp++;
              }
              
              else if(rs.getString("PARTY").equalsIgnoreCase("CONGG") || rs.getString("PARTY").equals("कांग्रेस"))
              {
                  c_congg++;
              }
          
              else if(rs.getString("PARTY").equalsIgnoreCase("BSP") || rs.getString("PARTY").equals("बसपा"))
              {
                  c_bsp++;
              }
          
              else if(rs.getString("PARTY").equalsIgnoreCase("SP") || rs.getString("PARTY").equals("सपा"))
              {
                  c_sp++;
              }
          
              else
              {
                  c_others_party++;
              }
          
              if(rs.getString("CAST").equalsIgnoreCase("PAL") || rs.getString("CAST").equals("पाल"))     // PAL is small or capital.For the 2nd table(if)
              {
                  c_pal++;
              }
              
              else if(rs.getString("CAST").equalsIgnoreCase("YADAV") || rs.getString("CAST").equals("यादव"))
              {
                  c_yadav++;
              }
          
              else if(rs.getString("CAST").equalsIgnoreCase("TYAGI") || rs.getString("CAST").equals("त्यागी"))
              {
                  c_tyagi++;
              }
          
              else if(rs.getString("CAST").equalsIgnoreCase("KORI") || rs.getString("CAST").equals("कोरी"))
              {
                  c_kori++;
              }
          
              else if(rs.getString("CAST").equalsIgnoreCase("DHOBI") || rs.getString("CAST").equals("धोबी"))
              {
                  c_dhobi++;
              }
          
              else if(rs.getString("CAST").equalsIgnoreCase("VALMIKI") || rs.getString("CAST").equals("वाल्मीकि"))
              {
                  c_valmiki++;
              }
              
              else if(rs.getString("CAST").equalsIgnoreCase("JATAV") || rs.getString("CAST").equals("जाटव"))
              {
                  c_jatav++;
              }
              
              else if(rs.getString("CAST").equalsIgnoreCase("KHATAIK") || rs.getString("CAST").equals("खटीक"))   // needs to be checked hindi spell
              {
                  c_khataik++;
              }
          
              else if(rs.getString("CAST").equalsIgnoreCase("BRAHAMANA") || rs.getString("CAST").equals("ब्राह्मण"))
              {
                  c_brahamana++;
              }
          
              else if(rs.getString("CAST").equalsIgnoreCase("THAKUR") || rs.getString("CAST").equals("ठाकुर"))
              {
                  c_thakur++;
              }
              
             else
                  c_others_cast++;
             
              
               if(rs.getString("PARTY").equalsIgnoreCase("BJP") || rs.getString("PARTY").equals("भाजपा"))//for the 3rd table(if)
              {
               if(rs.getString("CAST").equalsIgnoreCase("PAL") || rs.getString("CAST").equals("पाल"))     // PAL is small or capital.
              {
                 c_pal_BJP++;
              }
              
              else if(rs.getString("CAST").equalsIgnoreCase("YADAV") || rs.getString("CAST").equals("यादव"))
              {
                  c_yadav_BJP++;
              }
          
              else if(rs.getString("CAST").equalsIgnoreCase("TYAGI") || rs.getString("CAST").equals("पाल"))
              {
                 c_tyagi_BJP++;
              }
          
              else if(rs.getString("CAST").equalsIgnoreCase("KORI") || rs.getString("CAST").equals("कोरी"))
              {
                 c_kori_BJP++;
              }
          
              else if(rs.getString("CAST").equalsIgnoreCase("DHOBI") || rs.getString("CAST").equals("धोबी"))
              {
                  c_dhobi_BJP++;
              }
          
              else if(rs.getString("CAST").equalsIgnoreCase("VALMIKI") || rs.getString("PARTY").equals("वाल्मीकि"))
              {
                 c_valmiki_BJP++;
              }
              
              else if(rs.getString("CAST").equalsIgnoreCase("JATAV") || rs.getString("PARTY").equals("जाटव"))
              {
                  c_jatav_BJP++;
              }
              
              else if(rs.getString("CAST").equalsIgnoreCase("KHATAIK") || rs.getString("PARTY").equals("खटीक"))
              {
                 c_khataik_BJP++;
              }
          
              else if(rs.getString("CAST").equalsIgnoreCase("BRAHAMANA") || rs.getString("CAST").equals("ब्राह्मण"))
              {
                  c_brahamana_BJP++;
                  //out.println("success brahanaba");
              }
          
              else if(rs.getString("CAST").equalsIgnoreCase("DHOBI") || rs.getString("CAST").equals("ठाकुर"))
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
          sql="select * from voters where BUTH_NO='"+buth+"' and WARD_NO='"+ward+"'";
           rs=st.executeQuery(sql);
           //out.println("success not all");
            i=0;
          while(rs.next())
          {
              i++;
              //out.println("222.success not all");   // has to b delete
              if(rs.getString("PARTY").equalsIgnoreCase("BJP") || rs.getString("PARTY").equals("भाजपा"))      //for the 3rd table(else)
              {
                  c_bjp++;
                  //out.println("success_not all BJP"); // has to b delete
              }
              
              else if(rs.getString("PARTY").equalsIgnoreCase("CONGG") || rs.getString("PARTY").equals("कांग्रेस"))
              {
                  c_congg++;
              }
          
              else if(rs.getString("PARTY").equalsIgnoreCase("BSP") || rs.getString("PARTY").equals("बसपा"))
              {
                  c_bsp++;
              }
          
              else if(rs.getString("PARTY").equalsIgnoreCase("SP") || rs.getString("PARTY").equals("सपा"))
              {
                  c_sp++;
              }
          
              else
              {
                  //out.println("other is "+i);
                  c_others_party++;
                  
              }
              if(rs.getString("CAST").equalsIgnoreCase("PAL") || rs.getString("CAST").equals("पाल"))     // PAL is small or capital //for the 3rd table(else)
              {
                  c_pal++;
              }
              
              else if(rs.getString("CAST").equalsIgnoreCase("YADAV") || rs.getString("CAST").equals("यादव"))
              {
                  c_yadav++;
              }
          
              else if(rs.getString("CAST").equalsIgnoreCase("TYAGI") || rs.getString("CAST").equals("त्यागी"))
              {
                  c_tyagi++;
              }
          
              else if(rs.getString("CAST").equalsIgnoreCase("KORI") || rs.getString("CAST").equals("कोरी"))
              {
                  c_kori++;
              }
          
              else if(rs.getString("CAST").equalsIgnoreCase("DHOBI") || rs.getString("CAST").equals("धोबी"))
              {
                  c_dhobi++;
              }
          
              else if(rs.getString("CAST").equalsIgnoreCase("VALMIKI") || rs.getString("CAST").equals("वाल्मीकि"))
              {
                  c_valmiki++;
              }
              
              else if(rs.getString("CAST").equalsIgnoreCase("JATAV") || rs.getString("CAST").equals("जाटव"))
              {
                  c_jatav++;
              }
              
              else if(rs.getString("CAST").equalsIgnoreCase("KHATAIK") || rs.getString("CAST").equals("खटीक"))
              {
                  c_khataik++;
                  //out.println("success_not all_khataik"); // delete
              }
          
              else if(rs.getString("CAST").equalsIgnoreCase("BRAHAMANA") || rs.getString("CAST").equals("ब्राह्मण"))
              {
                  
                  c_brahamana++;
              }
          
              else if(rs.getString("CAST").equalsIgnoreCase("THAKUR") || rs.getString("CAST").equals("ठाकुर"))
              {
                  c_thakur++;
              }
              
             else
                  c_others_cast++;
              
              
              if(rs.getString("PARTY").equalsIgnoreCase("BJP") || rs.getString("PARTY").equals("भाजपा"))//for the 3rd table (else)
              {
               if(rs.getString("CAST").equalsIgnoreCase("PAL") || rs.getString("CAST").equals("पाल"))     // PAL is small or capital.
              {
                 c_pal_BJP++;
              }
              
              else if(rs.getString("CAST").equalsIgnoreCase("YADAV") || rs.getString("CAST").equals("यादव"))
              {
                  c_yadav_BJP++;
              }
          
              else if(rs.getString("CAST").equalsIgnoreCase("TYAGI") || rs.getString("CAST").equals("त्यागी"))
              {
                 c_tyagi_BJP++;
              }
          
              else if(rs.getString("CAST").equalsIgnoreCase("KORI") || rs.getString("CAST").equals("कोरी"))
              {
                 c_kori_BJP++;
              }
          
              else if(rs.getString("CAST").equalsIgnoreCase("DHOBI") || rs.getString("CAST").equals("धोबी"))
              {
                  c_dhobi_BJP++;
              }
          
              else if(rs.getString("CAST").equalsIgnoreCase("VALMIKI") || rs.getString("CAST").equals("वाल्मीकि"))
              {
                 c_valmiki_BJP++;
              }
              
              else if(rs.getString("CAST").equalsIgnoreCase("JATAV") || rs.getString("CAST").equals("जाटव"))
              {
                  c_jatav_BJP++;
              }
              
              else if(rs.getString("CAST").equalsIgnoreCase("KHATAIK") || rs.getString("CAST").equals("खटीक"))
              {
                 c_khataik_BJP++;
                 //out.println("success_not all bjp khataik");  // has to b delete
              }
          
              else if(rs.getString("CAST").equalsIgnoreCase("BRAHAMANA") || rs.getString("CAST").equals("ब्राह्मण"))
              {
                  c_brahamana_BJP++;
              }
          
              else if(rs.getString("CAST").equalsIgnoreCase("THAKUR") || rs.getString("CAST").equals("ठाकुर"))
              {
                  c_thakur_BJP++;
              }
              
             else
                 c_others_BJP++;
          
       
              }
          }
      }
        
        }
        catch(Exception e)
                {
                    out.println("error is "+e);
                }
  
  
  %>
  <%
        if(choice.equalsIgnoreCase("VOTES TO PARTIES"))
                {
                   %>
                   <font size="5"><center><b>VOTES TO PARTIES</b></center></font>
                   <pre>
             <font size="4">
          <table width="400" border=1px solid black">
                   
                    <tr>
                         <th width="200" height="30">PARTIES</th>
                         <th width="200" height="30">VOTES</th>
                         </tr>
                    <tr>
                            <td width="200" height="30"><center>BJP</center></td>
                            <td width="200" height="30"><center><%= c_bjp %></center></td>
                         </tr>
                         
                         <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>CONGG</center></td>
                            <td width="200" height="30"><center><%= c_congg %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>SP</center></td>
                            <td width="200" height="30"><center><%= c_sp %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>BSP</center></td>
                            <td width="200" height="30"><center><%= c_bsp %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>OTHERS</center></td>
                            <td width="200" height="30"><center><%= c_others_party %></center></td>
                        </tr>
                   
                  </table>
                 </font>
                 </pre>   
                <%
                }
  
  %>
                   
                   <%
        if(choice.equalsIgnoreCase("TOTAL VOTES OF CASTES"))
                {
                   %>
                   <font size="5"><center><b>TOTAL VOTES OF CASTES</b></center></font>
                   <pre>
             <font size="4">
          <table width="400" border=1px solid black">
                   
                    <tr>
                         <th width="200" height="30">CASTES</th>
                         <th width="200" height="30">VOTES</th>
                         </tr>
                    <tr>
                            <td width="200" height="30"><center>PAL</center></td>
                            <td width="200" height="30"><center><%= c_pal %></center></td>
                         </tr>
                         
                         <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>YADAV</center></td>
                            <td width="200" height="30"><center><%= c_yadav %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>TYAGI</center></td>
                            <td width="200" height="30"><center><%= c_tyagi %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>KORI</center></td>
                            <td width="200" height="30"><center><%= c_kori %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>DHOBI</center></td>
                            <td width="200" height="30"><center><%= c_dhobi %></center></td>
                        </tr>
                        
                         <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                        
                         <tr>
                            <td width="200" height="30"><center>VALMIKI</center></td>
                            <td width="200" height="30"><center><%= c_valmiki %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>JATAV</center></td>
                            <td width="200" height="30"><center><%= c_jatav %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>KHATAIK</center></td>
                            <td width="200" height="30"><center><%= c_khataik %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>BRHAMANA</center></td>
                            <td width="200" height="30"><center><%= c_brahamana %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>THAKUR</center></td>
                            <td width="200" height="30"><center><%= c_thakur %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>OTHERS</center></td>
                            <td width="200" height="30"><center><%= c_others_cast %></center></td>
                         </tr>
                   
                  </table>
                 </font>
                 </pre>   
                <%
                }
  
  %>
                   
                    <%
        if(choice.equalsIgnoreCase("VOTES BY DIFFERENT CASTES TO BJP"))
                {
                   %>
                   <font size="5"><center><b>VOTES BY DIFFERENT CASTES TO BJP</b></center></font>
                   <pre>
             <font size="4">
          <table width="400" border=1px solid black">
                   
                    <tr>
                         <th width="200" height="30">CASTES</th>
                         <th width="200" height="30">VOTES</th>
                         </tr>
                    <tr>
                            <td width="200" height="30"><center>PAL</center></td>
                            <td width="200" height="30"><center><%= c_pal_BJP %></center></td>
                         </tr>
                         
                         <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>YADAV</center></td>
                            <td width="200" height="30"><center><%= c_yadav_BJP %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>TYAGI</center></td>
                            <td width="200" height="30"><center><%= c_tyagi_BJP %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>KORI</center></td>
                            <td width="200" height="30"><center><%= c_kori_BJP %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>DHOBI</center></td>
                            <td width="200" height="30"><center><%= c_dhobi_BJP %></center></td>
                        </tr>
                        
                         <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                        
                         <tr>
                            <td width="200" height="30"><center>VALMIKI</center></td>
                            <td width="200" height="30"><center><%= c_valmiki_BJP %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>JATAV</center></td>
                            <td width="200" height="30"><center><%= c_jatav_BJP %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>KHATAIK</center></td>
                            <td width="200" height="30"><center><%= c_khataik_BJP %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>BRHAMANA</center></td>
                            <td width="200" height="30"><center><%= c_brahamana_BJP %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>THAKUR</center></td>
                            <td width="200" height="30"><center><%= c_thakur_BJP %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>OTHERS</center></td>
                            <td width="200" height="30"><center><%= c_others_BJP %></center></td>
                         </tr>
                   
                  </table>
                 </font>
                 </pre>   
                <%
                }
  
  %>
                   
                   <%
        if(choice.equalsIgnoreCase("ALL"))
                {
                   %>
                   <div class="fleft">
                   <font size="5"><center><b>VOTES TO PARTIES</b></center></font>
                   <pre>
             <font size="4">
          <table width="400" border=1px solid black">
                   
                    <tr>
                         <th width="200" height="30">PARTIES</th>
                         <th width="200" height="30">VOTES</th>
                         </tr>
                    <tr>
                            <td width="200" height="30"><center>BJP</center></td>
                            <td width="200" height="30"><center><%= c_bjp %></center></td>
                         </tr>
                         
                         <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>CONGG</center></td>
                            <td width="200" height="30"><center><%= c_congg %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>SP</center></td>
                            <td width="200" height="30"><center><%= c_sp %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>BSP</center></td>
                            <td width="200" height="30"><center><%= c_bsp %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>OTHERS</center></td>
                            <td width="200" height="30"><center><%= c_others_party %></center></td>
                        </tr>
                   
                  </table>
                 </font>
                 </pre>  
                   </div>
                
                   
                 <div class="fcenter">
                   <font size="5"><center><b>TOTAL VOTES OF CASTES</b></center></font>
                   <pre>
             <font size="4">
          <table width="400" border=1px solid black">
                   
                    <tr>
                         <th width="200" height="30">CASTES</th>
                         <th width="200" height="30">VOTES</th>
                         </tr>
                    <tr>
                            <td width="200" height="30"><center>PAL</center></td>
                            <td width="200" height="30"><center><%= c_pal %></center></td>
                         </tr>
                         
                         <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>YADAV</center></td>
                            <td width="200" height="30"><center><%= c_yadav %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>TYAGI</center></td>
                            <td width="200" height="30"><center><%= c_tyagi %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>KORI</center></td>
                            <td width="200" height="30"><center><%= c_kori %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>DHOBI</center></td>
                            <td width="200" height="30"><center><%= c_dhobi %></center></td>
                        </tr>
                        
                         <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                        
                         <tr>
                            <td width="200" height="30"><center>VALMIKI</center></td>
                            <td width="200" height="30"><center><%= c_valmiki %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>JATAV</center></td>
                            <td width="200" height="30"><center><%= c_jatav %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>KHATAIK</center></td>
                            <td width="200" height="30"><center><%= c_khataik %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>BRHAMANA</center></td>
                            <td width="200" height="30"><center><%= c_brahamana %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>THAKUR</center></td>
                            <td width="200" height="30"><center><%= c_thakur %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>OTHERS</center></td>
                            <td width="200" height="30"><center><%= c_others_cast %></center></td>
                         </tr>
                   
                  </table>
                 </font>
                 </pre>   
                 </div>
          <div class="fright">
                   <font size="5"><center><b>VOTES BY DIFF CASTES TO BJP</b></center></font>
                   <pre>
             <font size="4">
          <table width="400" border=1px solid black">
                   
                    <tr>
                         <th width="200" height="30">CASTES</th>
                         <th width="200" height="30">VOTES</th>
                         </tr>
                    <tr>
                            <td width="200" height="30"><center>PAL</center></td>
                            <td width="200" height="30"><center><%= c_pal_BJP %></center></td>
                         </tr>
                         
                         <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>YADAV</center></td>
                            <td width="200" height="30"><center><%= c_yadav_BJP %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>TYAGI</center></td>
                            <td width="200" height="30"><center><%= c_tyagi_BJP %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>KORI</center></td>
                            <td width="200" height="30"><center><%= c_kori_BJP %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>DHOBI</center></td>
                            <td width="200" height="30"><center><%= c_dhobi_BJP %></center></td>
                        </tr>
                        
                         <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                        
                         <tr>
                            <td width="200" height="30"><center>VALMIKI</center></td>
                            <td width="200" height="30"><center><%= c_valmiki_BJP %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>JATAV</center></td>
                            <td width="200" height="30"><center><%= c_jatav_BJP %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>KHATAIK</center></td>
                            <td width="200" height="30"><center><%= c_khataik_BJP %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>BRHAMANA</center></td>
                            <td width="200" height="30"><center><%= c_brahamana_BJP %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>THAKUR</center></td>
                            <td width="200" height="30"><center><%= c_thakur_BJP %></center></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"></td>
                            <td width="200" height="30"></td>
                         </tr>
                         
                          <tr>
                            <td width="200" height="30"><center>OTHERS</center></td>
                            <td width="200" height="30"><center><%= c_others_BJP %></center></td>
                         </tr>
                   
                  </table>
                 </font>
                 </pre>   
                   </div>
                <%
                }
  
  %>
      <%--   <center>
            <table width="500" border="1px solid black">
                 <pre>

 <tr>   <b> <u>VOTES TO PARTIES</b></u>
</tr>
<br>
<tr>
                 <th width="100">BJP</th>
                 <th width="100">CONGG</th>
                 <th width="100">BSP</th>
                 <th width="100">SP</th>
                 <th width="100">OTHERS</th>
              </tr>
<%


%>

             <tr>
                 <th width="100"><%= c_bjp %></th>
                 <th width="100"><%=c_congg %></th>
                 <th width="100"><%=c_bsp %></th>
                 <th width="100"><%=c_sp %></th>
                 <th width="100"><%=c_others_party %></th>
              </tr>

          
             </table> 
              
              <br><br><br><br><br><br>
              
<table  border="1px solid black">
                <pre>
<tr>   <b> <u>TOTAL VOTES OF CASTES</b></u>
</tr> 
<br>
                 <tr>
                 <th width="100">PAL</th>
                 <th width="100">YADAV</th>
                 <th width="100">TYAGI</th>
                 <th width="100">KORI</th>
                 <th width="100">DHOBI</th>
                 <th width="100">VALMIKI</th>
                 <th width="100">JATAV</th>
                 <th width="100">KHATAIK</th>
                 <th width="100">BRAHAMANA</th>
                 <th width="100">THAKUR</th>
                 <th width="100">OTHERS</th>
              </tr>
<%


%>

             <tr>
                 <th width="100"><%= c_pal %></th>
                 <th width="100"><%= c_yadav %></th>
                 <th width="100"><%= c_tyagi %></th>
                 <th width="100"><%= c_kori %></th>
                 <th width="100"><%= c_dhobi %></th>
                 <th width="100"><%= c_valmiki %></th>
                 <th width="100"><%= c_jatav %></th>
                 <th width="100"><%= c_khataik %></th>
                 <th width="100"><%= c_brahamana %></th>
                 <th width="100"><%= c_thakur %></th>
                 <th width="100"><%= c_others_cast %></th>
              </tr>
                 
                </pre>
                 
                     </tr>
             </table>

<br><br><br><br><br><br>
<table  border="1px solid black">
                <pre>
<tr>   <b> <u>VOTES BY  DIFFERENT CASTES TO BJP</b></u>
</tr> 
<br>
                 <tr>
                 <th width="100">PAL</th>
                 <th width="100">YADAV</th>
                 <th width="100">TYAGI</th>
                 <th width="100">KORI</th>
                 <th width="100">DHOBI</th>
                 <th width="100">VALMIKI</th>
                 <th width="100">JATAV</th>
                 <th width="100">KHATAIK</th>
                 <th width="100">BRAHMANA</th>
                 <th width="100">THAKUR</th>
                 <th width="100">OTHERS</th>
              </tr>
<%
    

%>

             <tr>
                 <th width="100"><%=c_pal_BJP %></th>
                 <th width="100"><%=c_yadav_BJP %></th>
                 <th width="100"><%=c_tyagi_BJP %></th>
                 <th width="100"><%=c_kori_BJP %></th>
                 <th width="100"><%=c_dhobi_BJP %></th>
                 <th width="100"><%=c_valmiki_BJP %></th>
                 <th width="100"><%=c_jatav_BJP %></th>
                 <th width="100"><%= c_khataik_BJP %></th>
                 <th width="100"><%=c_brahamana_BJP %></th>
                 <th width="100"><%=c_thakur_BJP %></th>
                 <th width="100"><%=c_others_BJP %></th>
              </tr>
                 
                </pre>
                 
                     </tr>
             </table>
         </center>
      --%>
    </body>
</html>

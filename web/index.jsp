<%-- 
    Document   : index.jsp
    Created on : 17 Nov, 2015, 2:43:51 PM
    Author     : projectx.com
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Voter Master</title>
   
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
       <link href="styles.css" rel="stylesheet"  />
        <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
        <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
        
        <script>
            $(document).ready(function() {
            $("#datepicker").datepicker({ dateFormat:"dd-mm-yy"});
            });
         </script>
         
         <style>
             .styled-button-5 {
	background-color:#ed8223;
	color:#fff;
	font-family:'Helvetica Neue',sans-serif;
	font-size:18px;
	line-height:30px;
	border-radius:20px;
	-webkit-border-radius:20px;
	-moz-border-radius:20px;
	border:0;
	text-shadow:#C17C3A 0 -1px 0;
	width:120px;
	height:32px
    }
    
             
         </style>
    </head>
    
    <body bgcolor="lightyellow">
  <center>  
      
      <form action="index_db_save.jsp" method="post">
<table width="800" border="2px solid black">
            <tr>
            <th>Application Form</th>
            </tr>
            <tr>
            <th>Date <input type="text" id="datepicker" name="index_date" required=""> Surveyor Name <input type="text" name="index_surveyor_name" required="">   Mobile <input type="text" name="index_suveyer_mobile" required=""></th>
            </tr><tr height="500"><th><pre>
Ward No. <input type="text" name="index_ward" required="">             Buth No. <input type="text" name="index_buth" required=""><br>       
Name                <input type="text"  name="index_head_name" required=""><br>
Father/Husband Name <input type="text" name="index_father/husband_name" required=""><br>    
Voter Id            <input type="text" name="index_voter_id" required=""><br>  
Voter Serial No.    <input type="text" name="index_voter_serial_no" required=""><br>
Category  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      <select name="index_category" >
             <option>Select a Category</option>
             <option>GEN</option>
             <option>OBC</option>
             <option>SC</option>
             <option>ST</option>
             <option>OTHERS</option>
             </select>

Caste  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;            <select name="index_caste" >
             <option>Select a Caste</option>
             <option>Pal</option>
             <option>Yadav</option>
             <option>Tyagi</option>
             <option>Kori</option>
             <option>Dhobhi</option>
             <option>Valmiki</option>
             <option>Jatav</option>
             <option>Khataik</option>
             <option>Brahamana</option>
             <option>Thakur</option>
             <option>Others</option>
             </select>
         
Mobile No.          <input type="text" name="index_mobile_no" required=""><br>       
Permanent Address:                          <br> <textarea name="index_address" required="" cols="42" rows="5"></textarea><br>
Total Family Members <input type="text" name="index_total_family_members" required=""><br>
Landlord<input type="radio" name="index_radio" value="landlord" required="">    Tenant<input type="radio" name="index_radio" value="tenant" required=""><br>
Party to be Voted       &nbsp; &nbsp;  <select name="index_pary_vote">
             <option>Select a Party</option>
             <option>BJP</option>
             <option>BSP</option>
             <option>SP</option>
             <option>CONGG</option>
             <option>OTHERS</option>
             </select>
       
List Of Members Having Voter Card:                <br><textarea name="index_member_voter_card" rows="3" cols="42"></textarea>

List Of Members(18+) Having No Voter Card:        <br><textarea name="index_member_no_voter_card" rows="3" cols="42"></textarea><br>
Profession          <input type="text" name="index_profession" required="">
         
Interest In Social Service:     YES<input type="radio" name="index_social_service" value="YES" required="">  NO<input type="radio"  value="NO" name="index_social_service" required="">  
      
<input type="submit" class="styled-button-5" value="Submit" />
 </th>
</tr>
        
        </table>
         
          </form>
        </center>
               
    </body>
</html>

<%-- 
    Document   : query
    Created on : Feb 1, 2016, 10:20:37 AM
    Author     : Ionic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      
        <style>
.wrap {
    width: 100%;
    overflow:auto;
   
}

.fleft {
    float:left; 
    width: 22.5%;
    background:#FF9933;
    height: 660px;
}
.fright {
    float: right;
    background:white;
    height:660px;
    width: 77.5%;
}
.verticalLine {
    border-left: black;
}
.styled-button-5 {
	background-color:#138808;
	color:#fff;
	font-family:'Helvetica Neue',sans-serif;
	font-size:12px;
	line-height:20px;
	border-radius:20px;
	-webkit-border-radius:20px;
	-moz-border-radius:20px;
	border:0;
	text-shadow:#C17C3A 0 -1px 0;
	width:80px;
	height:20px
    }
        </style>
    </head>
     <body bgcolor="#138808">
         
         <div class="wrap">
    <div class="fleft">
     <form action="new_report.jsp" method="post">
         <pre><font size="3" >






         
  WARD  <select name="ward">
            <option>Select a WARD</option>
             <option>1</option>
             <option>2</option>
             <option>3</option>
             <option>4</option>
             <option>5</option>
             <option>6</option>
             <option>7</option>
             <option>8</option>
             <option>9</option>
             <option>10</option>
             <option>All</option>
             </select> 

  BUTH  <select name="buth" >
             <option>Select a BUTH</option>
             <option>All</option>
             <option>51</option>
             <option>52</option>
             <option>53</option>
             <option>54</option>
             <option>55</option>
             <option>56</option>
             <option>57</option>
             <option>58</option>
             <option>59</option>
             <option>60</option>
             </select> <br>
Choice  <select name="choice" >
    <option>Select a Choice</option>
             <option name="a1">Votes to Parties</option>
             <option name="a2">Total Votes Of Castes</option>
             <option name="a3">Votes By Different Castes to BJP</option>
              <option name="a4">ALL</option>
             </select><br>
</pre>
  </form>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="submit" class="styled-button-5" value="Submit" />
    </div>
        
             
    <div class="fright">
    <center>
        <font size="12" color="#000080">
  <marquee>  <b>VOTER MASTER</b></marquee>
    </font>
    </center>
                <br><br><br><br>
       <table width="100%" border="0">
  <tr>    
      <td><img src="images/modi.jpg" alt="" align="left" /></td>
      <td><img src="images/images (2).jpg" width="300" alt="" align="center" /></td>
      
  </tr>
</table>
    
    </div>

    </body>
</html>

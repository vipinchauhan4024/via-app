<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Integration pattern</title>
</head>
<body>
<h1>Request for integration pattern</h1><br/>
Please select the application type
<form>
<select name="appType">
  <option value="1">VGTA</option>
  <option value="2">COTS</option>
  <option value="3">SAP</option>
  <option value="4">VCOM</option>
  <option value="5">BI</option>
  <option value="6">External</option>
</select>
<br/>
 Message size in KB:<br/> 
 <input type=" text" name="msgSize"><br/>
 
 Volumes per Hour:<br/> 
 <input type=" text" name="volPerHour"><br/>
 
 high Synchronous dependency<br/> 
 <select name="depType">
  <option value="1">YES</option>
  <option value="0">NO</option>
  </select>
  <br/>
  Encryption required?<br/> 
 <select name="encType">
  <option value="1">YES</option>
  <option value="0">NO</option>
  </select>
 <br/>
</form> 
</body>
</html>
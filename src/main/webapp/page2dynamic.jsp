<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Integration pattern</title>
<script>
	function myFunction() {
	//	alert("inside" + " " + document.getElementById("appType").value);
		if ((document.getElementById("appType").value == "2")
				|| (document.getElementById("appType").value == "6")) {
		//	alert("inside 2");
			document.getElementById("ifYes").style.display = "table";
		}
		document.getElementById("recapp").style.display = "table";
		document.getElementById("recapp2").style.display = "table";
		document.getElementById("recapp3").style.display = "table";

	}
	function myFunction2() {
	//	alert("check1");
		if ((document.getElementById("recType").value == "2")
				|| (document.getElementById("recType").value == "6")) {
		//	alert("checck 2");
			document.getElementById("isSupp").style.display = "block";

		}
	}
	function myFunctionPrint() {
		//alert("check");
		/* alert(document.getElementById("appType").value+":"+document.getElementById("msgSize").value
		+":"+document.getElementById("volPerHour").value+":"+document.getElementById("depType").value
		+":"+document.getElementById("encType").value+":"+document.getElementById("suppType").value
		+":"+document.getElementById("recType").value+":"+document.getElementById("formatType").value
		+":"+document.getElementById("routeType").value+":"+document.getElementById("suprType").value); */
 
		
 var supp=document.getElementById("appType").value;
 var supr=document.getElementById("recType").value;
 var val;
 //alert(supp+" "+supr);
 if((supp=="1" || supp== "3" || supp=="4" || supp== "5" )&&(supr=="1" || supr== "3" || supr=="4" || supr== "5"))
 {
 val=  [ document.getElementById("appType").value+":"+
				document.getElementById("msgSize").value+":"+
				document.getElementById("volPerHour").value+":"+
				document.getElementById("depType").value+":"+
				document.getElementById("encType").value+":" +
				document.getElementById("recType").value+":"+
				document.getElementById("formatType").value+":"+
				document.getElementById("routeType").value  ];
 
 }
 else if(supp=="1" || supp== "3" || supp=="4" || supp== "5" )
	 {
	 supr=document.getElementById("suprType").value;
	 val = [ document.getElementById("appType").value+":"+
				document.getElementById("msgSize").value+":"+
				document.getElementById("volPerHour").value+":"+
				document.getElementById("depType").value+":"+
				document.getElementById("encType").value+":" +
				document.getElementById("recType").value+":"+supr+":"+
				document.getElementById("formatType").value+":"+
				document.getElementById("routeType").value  ];
	 }
 
	 
	  else if(supr=="1" || supr== "3" || supr=="4" || supr== "5")
	 {
		  supp=document.getElementById("suppType").value;
		  val = [ document.getElementById("appType").value+":"+
					document.getElementById("msgSize").value+":"+
					document.getElementById("volPerHour").value+":"+
					document.getElementById("depType").value+":"+
					document.getElementById("encType").value+":" +supp+":"+
					document.getElementById("recType").value+":"+
					document.getElementById("formatType").value+":"+
					document.getElementById("routeType").value  ];

	 
	 }
  else
	  {
	  supr=document.getElementById("suprType").value;
	  supp=document.getElementById("suppType").value;
     //  alert(supp+" "+supr);
		 val = [ document.getElementById("appType").value+":"+
				document.getElementById("msgSize").value+":"+
				document.getElementById("volPerHour").value+":"+
				document.getElementById("depType").value+":"+
				document.getElementById("encType").value+":" +supp+":"+
				document.getElementById("recType").value+":"+supr+":"+
				document.getElementById("formatType").value+":"+
				document.getElementById("routeType").value  ];
		

	}
 document.getElementById("output").value = val;
	document.getElementById("display").innerHTML = val;
	}
</script>
</head>
<body>
<div align="center">
	<h1>Request for integration pattern</h1>
	<br />


	<FORM ACTION="genrategraph" METHOD=POST>
		<table border="0"
			style="z-index: 1; position: inline; width: 440px; height: 334px; left: 0px; top: 0px; align: center"
			width="644">

			<TR>
				<td scope="col" width="144" align="left"><strong><span
						class="style4"><span class="style5">Please select
								the application type</span> &nbsp;</span></strong></td>
				<TD align="left"><select name="appType" id="appType">
						<option></option>
						<option value="1">VGTA</option>
						<option value="2">COTS</option>
						<option value="3">SAP</option>
						<option value="4">VCOM</option>
						<option value="5">BI</option>
						<option value="6">External</option>
				</select></TD>
			</TR>
			<TR>
				<td scope="col" align="left"><strong><span class="style6">message
							size in KB:</span> &nbsp;</span></strong></td>
				<TD align="left"><input type=" text" name="msgSize" id="msgSize"></TD>
			</TR>
			<TR>
				<td scope="col" align="left"><strong><span class="style6">Volumes
							per Hour:</span> &nbsp;</span></strong></td>
				<TD align="left"><input type=" text" name="volPerHour" id="volPerHour"></TD>
			</TR>
			<TR>
				<td scope="col" align="left"><strong><span class="style6">high
							Synchronous dependency</span> &nbsp;</span></strong></td>
				<TD align="left"><select name="depType" id="depType">
						<option></option>
						<option value="1">YES</option>
						<option value="0">NO</option>
				</select></TD>
			</TR>
			<TR>
				<td scope="col" align="left"><strong><span class="style6">Encryption
							required?</span> &nbsp;</span></strong></td>
				<TD align="left"><select name="encType" id="encType" onchange="myFunction()">
						<option></option>
						<option value="1">YES</option>
						<option value="0">NO</option>
				</select></TD>
			</TR>
			<TR id="ifYes" style="display: none;">
				<td scope="col" align="left"><strong><span class="style6">Connectivity
							supported by sending application</span> &nbsp;</span></strong></td>
				<TD align="left"><select name="suppType" id="suppType">
						<option></option>
						<option value="1">MQ</option>
						<option value="2">Web Service</option>
						<option value="3">SFTP</option>
						<option value="4">FILE</option>
				</select></TD>
			</TR>
			<TR id="recapp" style="display: none;">
				<td scope="col" align="left"><strong><span class="style6">select
							receiving application type</span> &nbsp;</span></strong></td>
				<TD align="left"><select name="recType" id="recType" onchange="myFunction2()" >
						<option></option>
						<option value="1">VGTA</option>
						<option value="2">COTS</option>
						<option value="3">SAP</option>
						<option value="4">VCOM</option>
						<option value="5">BI</option>
						<option value="6">External</option>
				</select></TD>
			</TR>
			<TR id="isSupp" style="display: none;">
				<td scope="col" align="left"><strong><span class="style6">Connectivity
							supported by receiving application</span> &nbsp;</span></strong></td>
				<TD align="left"><select name="suprType" id="suprType">
						<option></option>
						<option value="1">MQ</option>
						<option value="2">Web Service</option>
						<option value="3">SFTP</option>
						<option value="4">FILE</option>
				</select></TD>
			</TR>

			<TR id="recapp2" style="display: none">
				<td scope="col" align="left"><strong><span class="style6">Is
							sending application message format same as receiving application
							format?</span> &nbsp;</span></strong></td>
				<TD align="left"><select name="formatType" id="formatType">
						<option></option>
						<option value="1">YES</option>
						<option value="0">NO</option>
				</select></TD>
			</TR>

			<TR id="recapp3" style="display: none">
				<td scope="col" align="left"><strong><span class="style6">Routing
							required?</span> &nbsp;</span></strong></td>
				<TD align="left"><select name="routeType" id="routeType"
					>
						<option></option>
						<option value="1">YES</option>
						<option value="0">NO</option>
				</select></TD>
			</TR>

			


		</TABLE>
		<input type="submit" value="enter" onclick="myFunctionPrint()" /> <input
			type="hidden" name="output" id="output" /> 
			<!-- <label>Your input: </label> -->
		<p>
			<span id='display'></span>
		</p>
		
	</FORM>
	<div id="result">
    <pre>
    <% String graph = (String)request.getAttribute("message") ;
    if(graph != null) {
        graph = "INTEGRATION GRAPH \n \n" + graph;
    } else{
        graph = "";  
    }
     
    %>
       <%=graph%>
    </pre>
</div>
</div>
</body>
</html>
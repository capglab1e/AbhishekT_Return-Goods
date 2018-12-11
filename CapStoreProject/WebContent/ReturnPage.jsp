<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css"></style>
<title>Insert title here</title>
</head>
<body>
<center>
<div style=" border-radius: 15px; padding: 20px; width: 600px; box-shadow:5px 5px 5px 5px red;">
<h1>Return Item
</h1>
<table>
<sf:form action="getPage.obj" modelAttribute="my" >
<tr><td>Order Id: <td><sf:input path = "order_Id"/></td>
<tr><td>Customer Name* :<td><input type="text" size=20 required></td>
<tr><td>Enter Mobile Number* :<td><input type="text" size=20 required></td></tr>
 			
			
<tr>
	  <td align="left">Why are you returning this? : </td>
           <td><select  name="reason" >
	  <option value="Choose a response" selected>Select appropriate reason</option>
			 <option value="Performance or Quality not adequate">Performance or Quality not adequate</option>
		  <option value="The Product is No Longer Needed">The Product is No Longer Needed</option>
		  <option value="Product Didn't Match Its Description">Product Didn't Match Its Description</option>
			 <option value="Missing parts or accessories">Missing parts or accessories</option>
			   <option value="Both product and shipping box damaged">Both product and shipping box damaged</option>
			  <option value="Wrong item was sent">Wrong item was sent</option>
			  <option value="Item defective or doesn't work">Item defective or doesn't work</option>
				<option value="Issue with the product">Issue with the product</option>   
				</select></td>
	        </tr>
	        
	       
<tr> <td align="left">Describe The Issue* :</td>
                <td>
                	<textarea rows="5" cols="18" required></textarea>
					</td>
			</tr></td>
			</tr>
		
<tr><td><td><input type="submit" value="Return"></td></td></tr></sf:form>
</table>
</div>
</center>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="d" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>
 List of All Orders:
 </h1>
<table border="3">
<d:form modelAttribute="my">
<tr><!-- <th>user_Id --><th>order_Id<th>payment_Id<th>order_status<th>order_date<th>total_price<th>product_Id<th>coupon_Id
</th></tr>
<c:forEach items="${list}" var="ord"> 
<tr><td><%-- ${ord.user_Id}<td> --%>${ord.order_Id}<td>${ord.payment_Id}<td>${ord.order_status}
<td>${ord.order_date}<td>${ord.total_price}<td>${ord.product_Id}<td>${ord.coupon_Id}
<%-- <td><a href="getReturnPage.obj?order_Id=${ord.order_Id }">Return Item</a> --%>
<tr>
		<td colspan="5" align="center"><a href="getReturnPage.obj?ordId=${ord.order_Id}"> Click Here To Return Item With Order_Id:${ord.order_Id}
		</a></td>
		
	</tr>
	
</c:forEach>
</d:form>
</table>
</body>
</html>
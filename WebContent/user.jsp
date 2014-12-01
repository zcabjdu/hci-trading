<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link type="text/css"
    href="css/ui-lightness/jquery-ui-1.8.18.custom.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.18.custom.min.js"></script>
<title>Add new user</title>
</head>
<body>

    <form method="POST" action='UserController' name="frmAddUser">
        User ID : <input type="text" readonly="readonly" name="userid"
            value="<c:out value="${user.userid}" />" /> <br /> 
        Full Name : <input
            type="text" name="fullname"
            value="<c:out value="${user.fullname}" />" /> <br /> 
        Username : <input
            type="text" name="username"
            value="<c:out value="${user.username}" />" /> <br /> 
        Email : <input type="text" name="email"
            value="<c:out value="${user.email}" />" /> <br /> 
        Password : <input type="text" name="password"
            value="<c:out value="${user.password}" />" /> <br />     
        Address : <input type="text" name="address"
            value="<c:out value="${user.address}" />" /> <br />
        Gender : <input type="text" name="gender"
            value="<c:out value="${user.gender}" />" /> <br />                    
        <input type="submit" value="Submit" />
    </form>
</body>
</html>
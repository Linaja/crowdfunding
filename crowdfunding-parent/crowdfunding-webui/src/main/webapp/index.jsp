<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>index.jsp</h2>
<form action="${pageContext.request.contextPath}/admin/login" method="post">
    <label>账号：
        <input type="text" name="account">
    </label><br>
    <label>密码：
        <input type="password" name="password">
    </label><br>
    <input type="submit" value="登录">
</form>
</body>
</html>

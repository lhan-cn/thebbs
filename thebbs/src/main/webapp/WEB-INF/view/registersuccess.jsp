<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/3/30
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" />
<title></title>
<script type="text/javascript">
var time = 4;

function returnUrlByTime() {
window.setTimeout('returnUrlByTime()', 1000);
time = time - 1;
if(time <= 0) {
time = 0;
window.setTimeout("location.href='/registersuccess/run';", 0);
}
document.getElementById("layer").innerHTML = time;
}
</script>

<body onload="returnUrlByTime()">
<div class="alert alert-success" role="alert">
    <h3>
        <a href="javascript:void(0)" onclick="window.location.href='/registersuccess/run' ">
            <font size="5px">恭喜您注册成功，<b><span id="layer">3</span></b>秒后会自动跳转，如果没有跳转，请点这里......</font>
        </a>
    </h3>
</div>
</body>

</html>
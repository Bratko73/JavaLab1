<%--
  Created by IntelliJ IDEA.
  User: Александр
  Date: 29.10.2022
  Time: 6:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Date Time</title>
</head>
<body>
<div class=glow-button><span><h1>Current server time: <%=request.getAttribute("date")%></h1></span></div>
<img src="https://cs11.pikabu.ru/post_img/2018/12/17/8/1545050494117988750.jpg" alt="я красивая картинка">
</body>
<style>
    body {
        background: url(https://html5book.ru/wp-content/uploads/2015/07/background39.png);
        text-align: center;
    }
    form {
        text-align: center;
    }
    .d1 h1:before {
        content: "";
        position: absolute;
        top: calc(50% - 6px);
        left: 0;
        right: 0;
        height: 12px;
        background: #A6D8CB;
        z-index: -1;
    }
    .d1 span {
        background: white;
        padding: 0 15px;
        margin-left: 20px;
    }
    .d2 h3 {
        display: table;
        width: auto;
        margin: 15px auto;
        letter-spacing: 2px;
    }
    .d2 h3:before {
        content: "";
        position: absolute;
        top: 50%;
        margin-top: -8px;
        left: -35px;
        width: 10px;
        height: 10px;
        border: 3px solid #fed57b;
        transform: rotate(45deg)
    }
    .d2 h3:after {
        content: "";
        position: absolute;
        top: 50%;
        margin-top: -8px;
        right: -35px;
        width: 10px;
        height: 10px;
        border: 3px solid #fed57b;
        transform: rotate(45deg)
    }
    .glow-button {
        text-decoration: none;
        display: inline-block;
        padding: 15px 30px;
        margin: 10px 20px;
        border-radius: 10px;
        box-shadow: 0 0 40px 40px #d39353 inset, 0 0 0 0 #d39353;
        font-family: 'Montserrat', sans-serif;
        font-weight: bold;
        letter-spacing: 2px;
        color: dimgray;
        transition: .15s ease-in-out;
    }
    .glow-button:hover {
        box-shadow: 0 0 10px 0 #d39353 inset, 0 0 10px 4px #d39353;
        color: #d39353;
    }
</style>
</html>

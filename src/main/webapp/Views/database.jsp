<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Submit</title>
</head>
<body>
<form method="post">
    <h1 class="d1">ADD USERS!!!</h1>
    <div class="text-field">
    <label class="text-field-label">Login:
        <input class="text-field-input" type="text" name="name">
    </label>
    <br/>
    <label class="text-field-label">Password:
        <input type="password" name="pass" class="text-field-input">
    </label>
    <br/>
    </div>
    <button class="glow-button">DO IT!</button>
    <br/>
    <div class="d2">
    <h3>Is user added: <%=request.getAttribute("isUserAdded")%></h3>
    <br/>
    </div>
    <a href="login-servlet" class="glow-button">ToLogInForm</a>
</form>
</body>
<style>
    body {
        background: url(https://html5book.ru/wp-content/uploads/2015/07/background39.png);
    }
    form{
        text-align: center;
    }
    .text-field {
        font-family: 'Montserrat', sans-serif;
        margin-bottom: 1rem;
    }

    .text-field-label {
        font-family: inherit;
        display: block;
        margin-bottom: 0.25rem;
    }

    .text-field-input {
        font-family: inherit;
        display: block;
        width: 100%;
        height: calc(2.25rem + 2px);
        padding: 0.375rem 0.75rem;
        font-size: 1rem;
        font-weight: 400;
        line-height: 1.5;
        color: #212529;
        background-color: #fff;
        background-clip: padding-box;
        border: 1px solid #bdbdbd;
        border-radius: 0.25rem;
        transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
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
        color: white;
        transition: .15s ease-in-out;
    }
    .glow-button:hover {
        box-shadow: 0 0 10px 0 #d39353 inset, 0 0 10px 4px #d39353;
        color: #d39353;
    }
</style>
</html>

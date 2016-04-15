<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="cp" value="${pageContext.request.servletContext.contextPath}" scope="request" />

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Spring Coffee</title>
        <link rel="stylesheet" type="text/css" href="${cp}/resources/css/site.css" />
        <link rel="stylesheet" type="text/css" href="${cp}/resources/css/bootstrap.css" />
    </head>
    <body>            
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Spring Coffee</a>
                </div>
            </div>
        </nav>

        <div class="container">
            <div id="login">

                <h2 class="form-signin-heading"><i class="glyphicon glyphicon-lock"></i> Acesso ao Sistema</h2>
                <hr />

                <form:form method="POST" modelAttribute="user">

                    <fieldset>

                        <p><label path="username">Usuário:</label></p>
                        <p><form:input path="login" placeholder="usuario" /></p>

                        <p><label path="password">Senha:</label></p>
                        <p><form:input path="password" type="password" placeholder="senha" /></p>

                        <p><input type="submit" value="Entrar" /></p>

                    </fieldset>

                </form:form>

            </div> <!-- end login -->

        </div>

        <script src="${cp}/resources/js/bootstrap.js"></script>
    </body>
</html>
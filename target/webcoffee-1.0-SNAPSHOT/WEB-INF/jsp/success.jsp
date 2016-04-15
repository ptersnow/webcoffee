<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="cp" value="${pageContext.request.servletContext.contextPath}" scope="request" />

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Spring Coffee</title>
        <link rel="stylesheet" type="text/css" href="${cp}/resources/css/bootstrap.css" />
    </head>
    <body>
        <div class="container">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">Spring Coffee</a>

                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Usuários<span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Cadastrar usuário</a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Caixa<span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Abrir caixa</a></li>
                                    <li><a href="#">Fechar caixa</a></li>
                                </ul>
                            </li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#">Logout</a></li>
                        </ul>
                    </div><!--/.navbar-collapse-->
                </div><!--/.container-fluid-->
            </nav>
        </div>

        <script src="${cp}/resources/js/js.js"></script>
    </body>
</html>

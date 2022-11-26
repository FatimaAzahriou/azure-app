<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/security/tags"%>


<jsp:include page="../fragments/adminHeader.jsp" />

<div class="container">

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">

            <jsp:include page="../fragments/menu.jsp" />

        </div>
    </nav>


    <div>
        <h3>Accounts</h3>
    </div>

    <div>



        <table class="table">
            <thead>
            <tr>
                <th scope="col">Titre module</th>
                <th scope="col">Code module</th>
                <th scope="col">Niveau</th>

            </tr>
            </thead>
            <c:forEach items="${moduleNiveauList}" var="a">
                <tr>
                    <td><c:out value="${a.titre}" /></td>
                    <td><c:out value="${a.code}"/></td>
                    <td><c:out value="${a.niveau.titre}" /></td>

                </tr>

            </c:forEach>

        </table>
    </div>

<jsp:include page="../fragments/adminfooter.jsp" />
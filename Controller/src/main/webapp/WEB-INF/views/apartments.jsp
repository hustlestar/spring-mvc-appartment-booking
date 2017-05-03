<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="template/head.jsp"/>
<title>Airbnb!</title>
<c:import url="template/nav.jsp"/>
<div class="container-fluid">
    <div class="row">
        <c:import url="template/side.jsp"/>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h1 class="page-header">Apartments for you</h1>
            <table class="table">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Title</th>
                    <th>Country</th>
                    <th>City</th>
                    <th>N of guests</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="apartment" items="${requestScope.apartments}">
                    <tr>
                        <td>${apartment.id}</td>
                        <td><a href="apartments/${apartment.id}">${apartment.title}</a></td>
                        <td>${apartment.country}</td>
                        <td>${apartment.city}</td>
                        <td>${apartment.guests}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>
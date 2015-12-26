<!DOCTYPE html>
<head>
	<meta name="layout" content="main"/>
    <title>Users List</title>
</head>

<body>
<g:each in="${users}" var="userInstance">
        <tr>
            <td>${fieldValue(bean: userInstance, field: "id")}</td>
            <td>${fieldValue(bean: userInstance, field: "username")}</td>
            <td>${fieldValue(bean: userInstance, field: "password")}</td>
        </tr>
</g:each>
</body>
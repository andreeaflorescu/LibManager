<!DOCTYPE html>
<head>
	<meta name="layout" content="main"/>
    <title>Login</title>
</head>
<body>
	<g:if test="${flash.error}">
  		<div class="error" style="display: block; color: red!important; margin-left: 30px"><h3>${flash.error}</h3></div>
	</g:if>
	<g:form name="registerForm" url="[controller:'login',action:'register']">
		<table>
			<tr>
				<td>
					<h4><label for="username">Username</label></h4>
					
				</td>
				<td>
					<g:textField name="username"></g:textField>
				</td>
			</tr>
			<tr>
				<td>
					<h4><label for="password">Password</label></h4>
				</td>
				<td>
					<g:passwordField name="password"></g:passwordField>
				</td>
			</tr>
			<tr>
				<td>
					<h4><label for="repassword">Re-enter Password</label></h4>
				</td>
				<td>
					<g:passwordField name="repassword"></g:passwordField>
				</td>
			</tr>
			<tr>
				<td>
					<h4><label for="adminpass">Admin Passcode*</label></h4>
				</td>
				<td>
					<g:passwordField name="adminpass"></g:passwordField>
				</td>
			</tr>
			<tr>
				<td></td>
				<td>
					<g:actionSubmit style="width:206px; color: green;" value="Register" action="register"></g:actionSubmit>
				</td>
			</tr>
		</table>
	</g:form>
</body>
</html>
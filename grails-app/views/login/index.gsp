<!DOCTYPE html>
<head>
	<meta name="layout" content="main"/>
    <title>Login</title>
</head>
<body>
	<g:if test="${flash.error}">
  		<div class="error" style="display: block; color: red!important; margin-left: 30px"><h3>${flash.error}</h3></div>
	</g:if>
	<h1 style="margin-left:30px">Login as a reader into Lib Manager</h1>

	<g:form name="myForm" url="[controller:'login',action:'login']">
		<g:hiddenField name="role" value="reader" />
		<table>
			<tr>
				<td>
					<h4><label for="username">Username</label><h3>
					
				</td>
				<td>
					<g:textField name="username"></g:textField>
				</td>
			</tr>
			<tr>
				<td>
					<h4><label for="password">Password</label><h3>
				</td>
				<td>
					<g:passwordField name="password"></g:passwordField>
				</td>
			</tr>
			<tr>
				<td></td>
				<td>
					<g:actionSubmit style="width:206px; color: green;" value="Login" action="login"></g:actionSubmit>
				</td>
				
			</tr>
		</table>
	</g:form>
	<h1 style="margin-left:30px">Login as an admin into Lib Manager</h1>
	<g:form name="myForm" url="[controller:'login',action:'login']">
		<g:hiddenField name="role" value="admin" />
		<table>
			<tr>
				<td>
					<h4><label for="username">Username</label><h3>
					
				</td>
				<td>
					<g:textField name="username"></g:textField>
				</td>
			</tr>
			<tr>
				<td>
					<h4><label for="password">Password</label><h3>
				</td>
				<td>
					<g:passwordField name="password"></g:passwordField>
				</td>
			</tr>
			<tr>
				<td></td>
				<td>
					<g:actionSubmit style="width:206px; color: green;" value="Login" action="login"></g:actionSubmit>
				</td>
				
			</tr>
		</table>
	</g:form>

	<button>
		<g:link controller="login" action="list">List</g:link>
	</button>
</body>
</html>



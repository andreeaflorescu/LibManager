<!DOCTYPE html>
<head>
	<meta name="layout" content="main"/>
    <title>Login</title>
</head>
<body>
	<g:if test="${flash.error}">
  		<div class="error" style="display: block; color: red!important; margin-left: 30px"><h3>${flash.error}</h3></div>
	</g:if>
	<h1 style="margin-left:30px">You can only use LibManager as a loged-in user.</h1>

	<g:form name="loginForm" url="[controller:'login',action:'login']">
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
				<td></td>
				<td>
					<g:actionSubmit style="width:206px; color: green;" value="Login" action="login"></g:actionSubmit>
				</td>	
			</tr>
		</table>
	</g:form>
	<h3 style="margin-left:23px">Don't have an account? Sign up <a href="registerIndex">here</a>.</h3>
	<!-- <button> -->
		<!-- <g:link controller="login" action="list">List</g:link> -->
	<!-- </button> -->
</body>
</html>



<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Find Books</title>
	</head>
	<body>
		<div class="nav">
			<ul>
				<li><g:link class="home" action="renderClientBooksPage">Find Books</g:link></li>
				<li><g:link action="renderClientReservationsPage">My Reserved Books</g:link></li>
				<li><g:link action="renderClientLoansPage">My Loaned Books</g:link></li>
			</ul>
		</div>
		<div class="content scaffold-create" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<fieldset class="form">
			    <g:form action="list" method="GET">
			            <label for="query">Search for book:</label>
			            <g:textField name="query" value="${params.query}"/>
			    </g:form>
			</fieldset>
			<div class="columncontainer">
				<div class="bookcontainer" style="width: 40%; float: left">
				<table>
					  <colgroup>
					    <col style="width:30%">
					    <col style="width:70%">
					  </colgroup> 
					<tr>
						<td>
							<asset:image style="max-height: 100px" src="covers/cumsaitisimplificiviata.jpg" alt="Grails"/>
						</td>
						<td>
							<div>
								<h3>Book</h3>
								<table>
									<tr>
										<td>
											<span>Title</span>
											<span>, </span>
											<span>Authors</span>
										</td>
										<td>Copy ID</td>
									</tr>
									<tr>
										<td>Time until expiration: </td>
										<td>10h30m</td>
									</tr>
								</table>
							</div>
						</td>
					</tr>
				</table>
			</div>

			<div class="bookcontainer" style="width: 40%; float:left">
				<table>
					  <colgroup>
					    <col style="width:30%">
					    <col style="width:70%">
					  </colgroup> 
					<tr>
						<td>
							<asset:image style="max-height: 100px" src="covers/cumsaitisimplificiviata.jpg" alt="Grails"/>
						</td>
						<td>
							<div>
								<h3>Book</h3>
								<table>
									<tr>
										<td>
											<span>Title</span>
											<span>, </span>
											<span>Authors</span>
										</td>
										<td>Copy ID</td>
									</tr>
									<tr>
										<td>Time until expiration: </td>
										<td>10h30m</td>
									</tr>
								</table>
							</div>
						</td>
					</tr>
				</table>
			</div>
			</div>
			

						<div class="bookcontainer" style="width: 40%; float: left">
				<table>
					  <colgroup>
					    <col style="width:30%">
					    <col style="width:70%">
					  </colgroup> 
					<tr>
						<td>
							<asset:image style="max-height: 100px" src="covers/cumsaitisimplificiviata.jpg" alt="Grails"/>
						</td>
						<td>
							<div>
								<h3>Book</h3>
								<table>
									<tr>
										<td>
											<span>Title</span>
											<span>, </span>
											<span>Authors</span>
										</td>
										<td>Copy ID</td>
									</tr>
									<tr>
										<td>Time until expiration: </td>
										<td>10h30m</td>
									</tr>
								</table>
							</div>
						</td>
					</tr>
				</table>
			</div>

			<div class="bookcontainer" style="width: 40%; float:left">
				<table>
					  <colgroup>
					    <col style="width:30%">
					    <col style="width:70%">
					  </colgroup> 
					<tr>
						<td>
							<asset:image style="max-height: 100px" src="covers/cumsaitisimplificiviata.jpg" alt="Grails"/>
						</td>
						<td>
							<div>
								<h3>Book</h3>
								<table>
									<tr>
										<td>
											<span>Title</span>
											<span>, </span>
											<span>Authors</span>
										</td>
										<td>Copy ID</td>
									</tr>
									<tr>
										<td>Time until expiration: </td>
										<td>10h30m</td>
									</tr>
								</table>
							</div>
						</td>
					</tr>
				</table>
			</div>
		</div>

	</body>
</html>
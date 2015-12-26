<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Add Books</title>
	</head>
	<body>
		<div class="nav">
			<ul>
				<li><g:link action="renderAdminBooksPage">Add Books/Copies</g:link></li>
				<li><g:link class="home" action="renderAdminLoansPage">Loans</g:link></li>
				<li><g:link action="renderAdminReservationsPage">Reservations</g:link></li>
				<li><g:link action="renderAdminRequestsPage">Requests</g:link></li>
			</ul>
		</div>
		<div class="content scaffold-create" role="main">
			<div class="bookcontainer">
				<table>
					  <colgroup>
					    <col style="width:30%">
					    <col style="width:70%">
					  </colgroup> 
					<tr>
						<td>
							<asset:image style="max-height: 200px" src="covers/cumsaitisimplificiviata.jpg" alt="Grails"/>
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
										<td>Due Date: </td>
										<td>10/12/2015</td>
									</tr>
									<tr>
										<td colspan="2">
											<g:submitButton style="width:100%; padding: 10px;" name="bookreturned" value="Book Returned"/>
										</td>
									</tr>
								</table>

								<h3>Grade Reader</h3>
								<table>
									<tr>
										<td>Reader Name</td>
										<td>Ion George</td>
									</tr>
									<tr>
										<td style="vertical-align: middle">
											<input type="text" name="grade" placeholder="Grade">
										</td>
										<td>
											<g:submitButton style="width:100%; padding: 10px;" name="gradereader" value="Grade Reader"/>
										</td>
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
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Reserved Books</title>
	</head>
	<body>
		<div class="nav">
			<ul>
				<li><g:link action="renderClientBooksPage">Find Books</g:link></li>
				<li><g:link class="home" action="renderClientReservationsPage">My Reserved Books</g:link></li>
				<li><g:link action="renderClientLoansPage">My Loaned Books</g:link></li>
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
										<td>ISBN:</td>
										<td>4w9043295</td>
									</tr>
									<tr>
										<td>Publisher: </td>
										<td>Humanitas</td>
									</tr>
									<tr>
										<td>Category:</td>
										<td>Science Fiction</td>
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
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Add Books</title>
	</head>
	<body>
		<div class="nav">
			<ul>
				<li><g:link class="home" action="renderAdminBooksPage">Add Books/Copies</g:link></li>
				<li><g:link action="renderAdminLoansPage">Loans</g:link></li>
				<li><g:link action="renderAdminReservationsPage">Reservations</g:link></li>
				<li><g:link action="renderAdminRequestsPage">Requests</g:link></li>
			</ul>
		</div>
		<div class="content scaffold-create" role="main">
			<h1>Add Book</h1>
			<g:if test="${flash.message}"><div class="message" role="status">${flash.message}</div></g:if>
			<g:uploadForm action="upload">
				<fieldset class="form">
					<table>
						<tr>

							<td><label>Cover Photo</label></td>
							<td><input type="file" name="file" /></td>
						</tr>
						<tr>
							<td><label>Book Title</label></td>
							<td><input type="text" name="book_title" placeholder="Book Title"/></td>
						</tr>	
						<tr>
							<td><label>Number of Pages</label></td>
							<td><input type="text" name="nr_pages" placeholder="Number of Pages"></td>
						</tr>
						<tr>
							<td><label>Authors</label></td>
							<td><input type="text" name="author#1" placeholder="Author Name"/></td>
						</tr>
						<tr>
							<td><label>Publisher</label></td>
							<td><input type="text" name="publisher" placeholder="Publisher"></td>
						</tr>
						<tr>
							<td><label>ISBN</label></td>
							<td><input type="text" name="isbn" placeholder=ISBN></td>
						</tr>
						<tr>
							<td><label>Category</label></td>
							<td>
								<select name="category">
								  <option value="Science Fiction">Science Fiction</option>
								  <option value="Inovation and Technology">Inovation and Technology</option>
								  <option value="Psychology">Psychology</option>
								</select>
							</td>
						</tr>
						<tr>
							<td><label>Maximum Loan Days</label></td>
							<td><input type="text" name="max_loan_days" placeholder="Maximum Loan Days"></td>
						</tr>
					</table>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="upload" class="save" value="Add Book"/>
				</fieldset>
			</g:uploadForm>
		</div>

		<div class="content scaffold-create" role="main">
			<h1>Add Copy</h1>
			<g:if test="${flash.message}"><div class="message" role="status">${flash.message}</div></g:if>
			<g:uploadForm action="upload">
				<fieldset class="form">
					<label>Select Book</label>
					<select name="book">
					  <option value="TODO">TODO</option>
					</select>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="upload" class="save" value="Add Copy"/>
				</fieldset>
			</g:uploadForm>
		</div>

	</body>
</html>
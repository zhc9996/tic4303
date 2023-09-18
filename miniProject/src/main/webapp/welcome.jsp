<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<title>Welcome page</title>
</head>
<body>


   

<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">TIC4303</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            More
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">section 1</a></li>
            <li><a class="dropdown-item" href="#">section 2</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">section 3</a></li>
          </ul>
        </li>
      </ul>
      <form class="d-flex" role="search" >
        <input class="form-control me-2" name=txtSearch type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="button" disabled>Search</button>
      </form>
    </div>
  </div>
</nav>

<h2 class="d-flex justify-content-center"> user Information </h2>
<table class=" table table-striped d-flex justify-content-center" >
		<tr>
			<td>name</td>
            <td>email</td>
            <td>contact</td>
            <td>gender</td>
            <td>country</td>
            <td>qualification</td>
		</tr>
<%for(int i = 1; i <  (Integer)request.getAttribute("rowTatal"); i+=1) {%>
		<tr>
			<td><%=request.getAttribute("name" + i)%> </td>
			<td><%=request.getAttribute("email" + i)%> </td>
			<td><%=request.getAttribute("phoneNo" + i)%> </td>
			<td><%=request.getAttribute("gender" + i)%> </td>
			<td><%=request.getAttribute("country" + i)%> </td>
			<td><%=request.getAttribute("qualification" + i)%> </td>
		</tr>
<% } %>
</table>

</br></br>
<h2 class="d-flex justify-content-center"> update user Information here</h2>
<form action=FormServlet method=post>
<table>
<div class="input-group mb-3 d-flex justify-content-center" >
  <input type="text" placeholder="Name" name=txtName>
</div>
<div class="input-group mb-3 d-flex justify-content-center" >
  <input type="text" placeholder="Email" name=txtEmail>
</div>
<div class="input-group mb-3 d-flex justify-content-center" >
  <input type="text" placeholder="Phone number" name=txtNumber>
</div>
<div class="input-group mb-3 d-flex justify-content-center" >
  <input type="text" placeholder="Country" name=txtCountry>
</div>
<div class="input-group mb-3 d-flex justify-content-center" >
  <input type="text" placeholder="Gender" name=txtGender>
</div>
<div class="input-group mb-3 d-flex justify-content-center" >
  <input type="text" placeholder="Qualification" name=txtQual>
</div>
<input type="hidden" id="version" name="txtUname" value= <%=request.getAttribute("uname")%> />
<div class="input-group mb-3 d-flex justify-content-center" >
<input type=submit class="btn btn-primary" value=Submit> &nbsp &nbsp <input class="btn btn-info" type=reset>
</div>
</table>
</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
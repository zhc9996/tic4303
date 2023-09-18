<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<title>Login page</title>
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

<div align=center>
<h1> User Login </h1>
</div>
<form action=IndexServlet method=post>
<table>
</br></br></br></br>
<div class="input-group mb-3 d-flex justify-content-center" >
  <input type="text" placeholder="Username" name=txtName>
</div>
<div class="input-group mb-3 d-flex justify-content-center" >
  <input type="text" placeholder="Password" name=txtPwd>
</div>
<div class="input-group mb-3 d-flex justify-content-center" >
<input type=submit class="btn btn-primary" value=Login> &nbsp &nbsp <input class="btn btn-info" type=reset>
</div>
</table>
</form>
<div class="input-group mb-3 d-flex justify-content-center" >
<font color=red size=4> ${error} </font>
</div>




<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
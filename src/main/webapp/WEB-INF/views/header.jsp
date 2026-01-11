<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored ="False" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title}</title>

<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr"
	crossorigin="anonymous">

 <style>
    html, body {
      height: 100%;
      margin: 0;
    }
    .full-height {
      height: 100%;
    }
  </style>
  
</head>
<body >

	<div class="fluid">
		<div class="row">
			<div class="column">
				<nav class="navbar navbar-expand-lg  bg-body-secondary ">
					<div class="container-fluid">
						<a class="navbar-brand text-primary" href="<%=request.getContextPath()%>/">Ghalib</a>
						<button class="navbar-toggler" type="button"
							data-bs-toggle="collapse"
							data-bs-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav me-auto mb-2 mb-lg-0">
								<li class="nav-item"><a class="nav-link active"
									aria-current="page" href="<%=request.getContextPath()%>/">Home</a></li>
								<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/events">Events and News</a>
								</li>
								<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/results">Results</a>
								<li class="nav-item"><a class="nav-link" href="#">Jobs</a>
								</li>
								<li class="nav-item"><a class="nav-link" href="<%= request.getContextPath()%>/teacher/teachersList">Teachers</a>
								</li>
								<li class="nav-item"><a class="nav-link" href="<%= request.getContextPath()%>/staffs/staff">Staff</a>
								</li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#" role="button"
									data-bs-toggle="dropdown" aria-expanded="true">Login as
								</a>
									<ul class="dropdown-menu">
										<li><a class="dropdown-item" href="<%=request.getContextPath() %>/login/teacherLogin">Teacher</a></li>
										<li><a class="dropdown-item" href="<%=request.getContextPath() %>/login/staffLogin">Stuff</a></li>
										<li><a class="dropdown-item" href="<%=request.getContextPath() %>/login/hrLogin">HR</a></li>
									</ul></li>
							</ul>
								<a href="<%=request.getContextPath() %>/login/adminLogin" class="btn bg-primary-subtle">Admin </a>
						</div>
					</div>
				</nav>
			</div>
		</div>
	</div>
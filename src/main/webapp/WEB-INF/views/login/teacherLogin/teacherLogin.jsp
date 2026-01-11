<%@ include file="../../header.jsp"%>

<div class="container mt-5 ">
	<div class="row">
		<div class="col-6 mx-auto bg-dark bg-gradient text-white pb-4">
			<p class="fs-3 text-center">Teacher Log in</p>
			<div class="px-5">
				<hr class="border border-warning border-3 opacity-75">
			</div>
			<form action="" method="">
				<div class="mb-3">
					<label for="inputEmail1" class="form-label">Email address</label> <input
						type="emailtxt" class="form-control" id="inputEmail1"
						aria-describedby="emailHelp">
				</div>
				<div class="mb-3">
					<label for="inputPassword1" class="form-label">Password</label> <input
						type="password" class="form-control" id="inputPassword1">
				</div>
				<button type="submit" class="btn btn-warning form-control">Log
					in</button>
			</form>
			<div class="text-center mt-4">
				<a href="#" class="text-white text-decoration-none">Forgot password?</a>
			</div>
		</div>
	</div>
</div>

<%@ include file="../../footer.jsp"%>
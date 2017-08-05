<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<html>

 <jsp:include page="fragments/header.jsp" />
<head>
<spring:url value="/resources/core/css/home.css" var="coreCss" />
<spring:url value="/resources/core/css/bootstrap.min.css"
	var="bootstrapCss" />

<link href="${bootstrapCss}" rel="stylesheet" />
<link href="${coreCss}" rel="stylesheet" />


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<body>
	<div class="container center_div ">
	<div class="col-lg-1 col-offset-6 centered">
		<form:form class="form-horizontal" modelAttribute="student"
			action="registerProcess" method="post" role="form" align="center">
			<h2>Registration Form</h2>

			<%-- <form:hidden path="id" /> --%>

			<spring:bind path="firstname">
				<div class="form-group ${status.error ? 'has-error' : ''}">
				<div class="text-right">	<label class="col-sm-3 control-label">FIRSTNAME</label></div>
					<div class="col-sm-9 col-sm-offset-3">
					
						<form:input type="text" path="firstname" placeholder="firstname"
							class="form-control" />

						<form:errors path="firstname" class="control-label" />
					</div>
				</div>
			</spring:bind>


			<spring:bind path="lastname">
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<label class="col-sm-3 control-label">LASTNAME</label>
					<div class="col-sm-9 col-sm-offset-3">
						<form:input type="text" path="lastname" placeholder="lastname"
							class="form-control" id="lastname" />

						<form:errors path="lastname" class="control-label" />
					</div>
				</div>
			</spring:bind>


			<spring:bind path="email">
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<label class="col-sm-3 control-label">EMAIL</label>
					<div class="col-sm-9 col-sm-offset-3">
						<form:input type="text" path="email" placeholder="email"
							class="form-control" id="email" />

						<form:errors path="email" class="control-label" />
					</div>
				</div>
			</spring:bind>



			<spring:bind path="password">
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<label class="col-sm-3 control-label">PASSWORD</label>
					<div class="col-sm-9 col-sm-offset-3">
						<form:input type="text" path="password" placeholder="password"
							class="form-control" id="password" />

						<form:errors path="password" class="control-label" />
					</div>
				</div>
			</spring:bind>



			<spring:bind path="age">
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<label class="col-sm-3 control-label">AGE</label>
					<div class="col-sm-9 col-sm-offset-3">
						<form:input type="text" path="age" placeholder="age"
							class="form-control" id="age" />

						<form:errors path="age" class="control-label" />
					</div>
				</div>
			</spring:bind>

			<spring:bind path="standard">
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<label class="col-sm-3 control-label">STANDARD</label>
					<div class="col-sm-9 col-sm-offset-3">
						<form:input type="text" path="standard" placeholder="standard"
							class="form-control" id="standard" />

						<form:errors path="standard" class="control-label" />
					</div>
				</div>
			</spring:bind>



			<spring:bind path="address">
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<label class="col-sm-3 control-label">ADDRESS</label>
					<div class="col-sm-9 col-sm-offset-3">
						<form:input type="text" path="address" placeholder="address"
							class="form-control" id="address" />

						<form:errors path="address" class="control-label" />
					</div>
				</div>
			</spring:bind>


			<spring:bind path="phone">
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<label class="col-sm-3 control-label">PHONE</label>
					<div class="col-sm-9 col-sm-offset-3">
						<form:input type="text" path="phone" placeholder="phone"
							class="form-control" id="phone" />

						<form:errors path="phone" class="control-label" />
					</div>
				</div>
			</spring:bind>

			<spring:bind path="gender">
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<label class="col-sm-3 control-label">GENDER</label>

					<div class="col-sm-9 col-sm-offset-3">
						<div class="row">
							<div class="col-sm-4">
								<label class="radio-inline"> <form:radiobutton
										path="gender" id="femaleRadio" value="Female" />Female
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <form:radiobutton
										path="gender" id="maleRadio" value="Male" />Male
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <form:radiobutton
										path="gender" id="uncknownRadio" value="Unknown" />Unknown
								</label>
							</div>
						</div>

						<%-- <form:input type="text" path="gender"  placeholder="gender" class="form-control"  id="gender"  /> --%>

						<form:errors path="gender" class="control-label" />
					</div>
				</div>
			</spring:bind>



			<div class="form-group">
				<div class="col-sm-9 col-sm-offset-3">
					<button type="submit" class="btn btn-primary btn-block">Register</button>
				</div>
			</div>




		</form:form>
	</div>
	</div>

	 <jsp:include page="fragments/footer.jsp" />

</body>
</html>
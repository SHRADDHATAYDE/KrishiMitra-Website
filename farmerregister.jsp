<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Farmer Registration</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
         <link rel="stylesheet" href="Style.css">
         
           
</head>
<body>
<header class="head text-center pb-5 mb-5">
        <nav class="navbar navbar-expand-lg navbar-light fixed-top bg-body-tertiary">
            <div class="container-fluid">
                <a class="navbar-brand text-uppercase fw-bold text-white ms-5 ps-5 pe-5" style="background-color: darkcyan
                    " href="#">krishi mitra</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse d-flex justify-content-center" id="navbarNavDropdown">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link text-uppercase" aria-current="page" href="Home.jsp">Home</a>
                        </li>
                        
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-uppercase" href="#" id="navbarDropdownMenuLink"
                                role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                farmer's market
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <li><a class="dropdown-item" href="#">Fruits</a></li>
                                <li><a class="dropdown-item" href="#">Cereals and pulses</a></li>
                                <li><a class="dropdown-item" href="#">Seeds</a></li>
                                <li><a class="dropdown-item" href="#">vegetables</a></li>
                                <li><a class="dropdown-item" href="#">Dry Fruits and Nuts</a></li>
                                <li><a class="dropdown-item" href="#">Edible Oil</a></li>
                                <li><a class="dropdown-item" href="#">Herbal Products</a></li>
                                <li><a class="dropdown-item" href="#">Other Agro Product</a></li>
                                <li><a class="dropdown-item" href="#">Beverages</a></li>
                            </ul>
                        </li>


                       
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-uppercase" href="#" id="navbarDropdownMenuLink"
                                role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                News & Contact
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <li><a class="dropdown-item" href="News.html">News</a></li>
                                <li><a class="dropdown-item" href="blog.html">Article</a></li>

                            </ul>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-uppercase" href="#" id="navbarDropdownMenuLink"
                                role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                my contact
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <li><a class="dropdown-item" href="#">Action</a></li>
                                <li><a class="dropdown-item" href="#">Another action</a></li>
                                <li><a class="dropdown-item" href="#">Something else here</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-uppercase" href="#">contact</a>
                        </li>
                    </ul>

                </div>
            </div>
        </nav>
    </header>

  <form method="post" action="FarmerRegisterServlet">
<div class="container pt-5 bg-body-tertiary mt-5">
<div class="row">
<div class="login col-12 col-md-6 col-lg-4">

<img src="./image/register1.webp">

</div>
<div  class="col-12 col-md-6 col-md-8">
<div class="mb-3">
<h3>Registration Panel</h3>
<label for="farmerName" class="form-label">Farmer Name</label>
 <input type="text" class="form-control"  required name="input1" required>
  </div>
  <div class="mb-3">
    <label for="email" class="form-label">Email</label>
    <input type="email" class="form-control"  name="input2" required>
  </div>
  
  <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" class="form-control"  name="input3" required>
                </div>

                <div class="mb-3">
                    <label for="address" class="form-label">Address</label>
                    <input type="text"  class="form-control" id="address" name="input4" required>
                </div>
				<div class="mb-3">
                    <label for="address" class="form-label">State</label>
                    <input type="text" id="state" class="form-control" id="state" name="input5" required>
                </div>
              
                <div class="mb-3">
                    <label for="contactNumber" class="form-label">Contact Number</label>
                    <input type="tel" class="form-control" name="input6" required>
                </div>
   
             <button type="submit" class="btn btn-primary text-center">Create Account</button>
  

</div>

  
</div>
</div>

</form>
</body>
</html>
 

        

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
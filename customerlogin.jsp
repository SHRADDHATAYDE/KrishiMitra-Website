<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Login</title>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
           
            font-family: Arial, sans-serif;
        }
        .login-container {
            display: flex;
            background-color: #fff;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 800px;
            width: 100%;
        }
        .login-image {
            background-color: #a3d9c8;
            width: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }
        .login-image img {
            width: 100%;
            height: auto;
        }
        .login-form {
            padding: 40px;
            width: 50%;
        }
        .login-form h2 {
            margin-bottom: 20px;
            font-size: 24px;
        }
        .login-form .form-control {
            margin-bottom: 15px;
        }
        .login-form .btn-primary {
            width: 100%;
        }
        .login-form .alternative-signin {
            margin-top: 10px;
            text-align: center;
        }
    </style>
</head>
<body >
<header class="head text-center pb-5">
        <nav class="navbar navbar-expand-lg navbar-light fixed-top bg-body-tertiary">
            <div class="container-fluid">
                  <a class="nav-link text-uppercase pt-3 ps-3 mt-3 pb-3 " style="background-color: #F8F9FB;"  aria-current="page" href="home.jsp">Home/Contact Me</a>
                
              </div>
                    
        </nav>
    </header>
    <div class="login-container">
        <div class="login-image">
            <img src="./image/customer.png">
        </div>
        <div class="login-form">
            <h2>Customer Login Panel</h2>
            <form action="CustomerLoginServlet" method="post">
                <div class="form-group">
                    <input type="text" name="input1" class="form-control" placeholder="Username" required>
                </div>
                <div class="form-group">
                    <input type="password" name="input2" class="form-control" placeholder="Password" required>
                </div>
                <button type="submit" class="btn btn-primary">Sign In</button>
                
            </form>
            <p>Don't have an account? <a href="customerregister.jsp">Create one</a></p>
            
        </div>
    </div>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

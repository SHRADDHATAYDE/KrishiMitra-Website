<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <style>
    
    .navbar-brand {
    padding: 16px;
    margin-right: 0%;
}
.btn {
    background-color: darkcyan;
    color: #ffff;
}


.collapse {
    background-color: #ffff;
    padding: 10px;
    margin-right: 10em;

}

.nav-item {
    font-size: 15px;
    font-weight: 400;
}

.nav-item :hover {
    color: darkcyan;
}
    </style>
</head>
<body>
 <form method="post" action="StaffLogin" >
 <header class="head text-center ">
        <nav class="navbar navbar-expand-lg navbar-light bg-light bg-transparent display-1 fixed-top">
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
                            <a class="nav-link text-uppercase" aria-current="page" href="home.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-uppercase" aria-current="page" href="farmermarket.jsp">Farmer's Markets</a>
                        </li>
                        
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-uppercase" href="#" id="navbarDropdownMenuLink"
                                role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                News & Contact
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <li><a class="dropdown-item" href="news.jsp">News</a></li>
                                <li><a class="dropdown-item" href="blog.jsp">Article</a></li>

                            </ul>
                        </li>
                       
                        <li class="nav-item">
                            <a class="nav-link text-uppercase" href="#">contact</a>
                        </li>
                    </ul>

                </div>
            </div>
        </nav>
        <section class="sec-1" id="home">
            <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="img carousel-item active" data-bs-interval="10000">
                        <div class="container center ">
                            <div class=" text-center p-lg-5 p-md-3 p-2   col-lg-6 col-md-6">

                                <h1 class="heading jost fw-bold pb-3 text-white">Krishi Mitra-Change The Way You
                                    Trade...
                                </h1>
                                <p class="jost hero-para animated animatedFadeInUp fadeInUp text-white text-uppercase">
                                    Farmers plant the
                                    seeds, nurture growth, and create a brighter future for all. “Agriculture:
                                    Cultivating
                                    the Future”: Farming is about nurturing both crops and the prospects for future
                                    generations. </p>
                                <button type="button"
                                    class="hero-button text-uppercase p-2 ps-5 pe-5 bg-transparent border-white text-white rounded-pill ">Get
                                    Started</button>
                            </div>
                        </div>

                    </div>
                    <div class="img2 carousel-item" data-bs-interval="2000">
                        <div class="container center1 ">
                            <div class=" text-center p-lg-5 p-md-3 p-2 col-lg-6 col-md-6">

                                <h1 class="heading jost fw-bold pb-3 text-white">Krishi Mitra-Change The Way You
                                    Trade...
                                </h1>
                                <p class="jost hero-para animated animatedFadeInUp fadeInUp text-white text-uppercase">
                                    A
                                    reminder that each crop
                                    contributes to feeding the world's growing population. “Sow, Grow, and Glow”:
                                    Farmers
                                    plant the seeds, nurture growth, and create a brighter future for all.</p>
                                <button type="button"
                                    class="hero-button text-uppercase p-2 ps-5 pe-5 animated animatedFadeInUp fadeInUp bg-transparent  border-white text-white rounded-pill">Get
                                    Started</button>
                            </div>
                        </div>

                    </div>
                </div>

                <button class=" carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval"
                    data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval"
                    data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>

            </div>
        </section>
    </header>
   

    <section class="sec-2 pt-5">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-lg-6 ">
                    <img src="./image/vegetable1.jpg" class="w-100 h-100 ">

                </div>
                <div class="col-md-6 col-lg-6">
                    <p><i>
                            <b>Mission:</b> To provide technology and services to farmers, merchants, and farm
                            labourers to
                            help
                            them expand their business and provide them with a wider market. And to improve the present
                            farming processes and to provide knowledge about recent agricultural issues.
                        </i>


                    </p>
                    <p><i><b>Vision:</b> To provide a helping hand to the farmers and farm labourers in Improving
                            their lives through the medium of technology, thereby improving the Agricultural Sector in
                            the
                            Indian Economy
                        </i>
                    </p>
                    <ul>
                        <li><i class="fa-sharp fa-solid fa-square-check"></i> Agri Buzz' is a model farmer management
                            website application...
                        </li>
                        <li><i class="fa-sharp fa-solid fa-square-check"></i> Agri Buzz provides a concept of virtual
                            agricultural trade to its users.
                        </li>
                        <li><i class="fa-sharp fa-solid fa-square-check"></i> It helps the wholesalers and retailers in
                            buying produce from larger number of farmers.</li>
                    </ul>

                </div>

            </div>

        </div>

    </section>
    <section class="sec-3 pt-5 pb-5">
        <div class="container">
            <div class="row">

                <div class="effect col-md-6 col-lg-6 pb-3">
                    <div class="card text-start shadow">

                        <div class="card-body text-center p-5">
                            <h4 class="card-title fw-bold">Customer</h4>
                            <img src="./image/customer1.jpeg">
                            <p class="card-text m-3">Are you willing to purchases products from farmer?</p>
                            <a href="" class="text-dark"><b>Login/Register as customer</b></a>
                            <div class="mt-3">
                                  <a  href="customerlogin.jsp" class="p-2 btn">Click Here</a>
                            </div>

                        </div>
                    </div>

                </div>
                <div class="effect col-md-6 col-lg-6 pb-3">
                    <div class="card text-start shadow">

                        <div class="card-body text-center p-5">
                            <h4 class="card-title fw-bold">Farmer</h4>
                            <img src="./image/farmer.jpg">
                            <p class="card-text m-3">Online market where you can shell fruits, and vegetables,agri
                                products etc...</p>
                            <a href=""class="text-dark"><b>Login/Register as Farmer</b></a>
                            <div class="mt-3">
                               
                                <a  href="farmerlogin.jsp" class="p-2 btn">Click Here</a>
                            </div>

                        </div>
                    </div>

                </div>
                

            </div>

        </div>

    </section>

     <footer class="pt-5 pb-3 " style="background-color:#F0F8FF">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-4 col-lg-4">
                    <h3>Krishi Mitra</h3>
                    <address>
                        Pune,Maharastra<br><br>
                        <p>Phone:9146844569</p>
                        <p>Email:nikeetarpatil1051@gmail.com</p>
                    </address>

                </div>
                <div class="col-12 col-md-4 col-lg-4">
                    <h5 class="ps-md-4">Useful Links</h5>
                    <ul>
                        <li><i class="fa-solid fa-angle-right"></i> Home</li><br>
                        <li><i class="fa-solid fa-angle-right"></i> About</li><br>
                        <li><i class="fa-solid fa-angle-right"></i> Contact</li><br>
                    </ul>

                </div>
               
                <div class="col-12 col-md-4 col-lg-4">
                    <h5>Staff Login</h5>
                    <p>The Feature Is Only Available For Administrator </p>
                    <div class="staff">
                        <a href="login.jsp"><button type="button" class="rounded footer-btn p-2" style="background-color: darkcyan;
    color: #ffff;border:none
                        ">Click here to Login<i
                                class="fa-solid fa-angles-right"></i></button></a>
                    </div>

                </div>

            </div>

        </div>
    </footer>


 
 </form>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
   

</body>
</html>
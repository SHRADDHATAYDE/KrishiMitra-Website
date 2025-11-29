<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Carousel with Read More Button in JSP</title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="./assest/blog.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

    <!-- Owl Carousel CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">

    <!-- jQuery (Required for Owl Carousel) -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <!-- Owl Carousel JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
 <style>
    li {
    list-style: none;
}

a {
    text-decoration: none;
}

.image {

    background-image: linear-gradient(rgba(10, 10, 10, 0.5), rgba(10, 10, 10, 0.5)), url(./image/nasscom\ agri.jpg);
    height: 25vh;
    width: 100%;
    background-position: center;
    background-size: cover;

}

.image h1 {
    width: 100%;
    height: 100%;
    align-items: center;
    justify-content: center;
    display: flex;

}

.card-title {
    color: darkcyan;
}

.blog-btn {
    background-color: darkcyan;
    border: none;
    color: white;
}

footer {
    background-color: aliceblue;
}

li i {
    color: darkcyan;
}

.footer-btn {
    background-color: green;
    color: #ffff;
    border: none;
}

/* Price Section */
summary {
    color: darkcyan;
}

.farmer a {
    background-color: darkcyan;
    color: white;
    padding: 8px 13px 8px 13px;

}

.newfarmer a {
    background-color: rgb(255, 225, 0);
    color: black;
    padding: 8px 13px 8px 13px;
    background-color: #008B8B;
}
    
    
    
        .owl-carousel .item {
            background: #f4f4f4;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            text-align: center;
        }
        .product-image {
            max-width: 100%;
            height: auto;
        }
        .product-name {
            font-size: 18px;
            font-weight: bold;
            margin: 10px 0;
        }
        .product-price {
            color: #4CAF50;
            font-size: 16px;
            margin: 5px 0;
        }
        .read-more {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
            text-decoration: none;
            display: inline-block;
        }
        .read-more:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<header class="head text-center pb-5">
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
                            <a class="nav-link text-uppercase" aria-current="page" href="home.jsp">Home</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-uppercase" href="#" id="navbarDropdownMenuLink"
                                role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                News & Contact
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <li><a class="dropdown-item" href="News.html">News</a></li>
                                <li><a class="dropdown-item" href="blog.jsp">Article</a></li>

                            </ul>
                        </li>
                        
                         
                        
                     
                        
                        
                    </ul>

                </div>
            </div>
        </nav>
    </header>

 <section class="blog-sec-1">
        <div class="image">
            <h1 class="text-uppercase text-white fs-1">Latest Blog</h1>
        </div>

    </section>

<!-- Owl Carousel HTML structure for products -->
<div class="owl-carousel owl-theme pt-3">
    <!-- Product 1 -->
    <div class="item">
       <img src="./image/pm-kisan-18th-installment.webp" alt="Product 1" class="product-image">
        <div class="product-name">Pm Kisan Yojna</div>
        <a href="productDetails.jsp?productId=1" class="read-more">Read More</a>
    </div>

    <!-- Product 2 -->
    <div class="item">
         <img src="./image/pm-kisan-samman-nidhi-registration.webp" alt="Product 3" class="product-image">
        <div class="product-name ">pm-kisan-samman-nidhi</div>
        <a href="productDetails.jsp?productId=2" class="read-more">Read More</a>
    </div>

    <!-- Product 3 -->
    <div class="item">
       <img src="./image/viskarmayojna.webp" alt="Product 3" class="product-image">
        <div class="product-name">PM viskarma yojna</div>
        <a href="productDetails.jsp?productId=3" class="read-more">Read More</a>
    </div>

    <!-- Add more products as needed -->
</div>

<!-- Owl Carousel Initialization Script with Autoplay -->
<script>
    $(document).ready(function(){
        $(".owl-carousel").owlCarousel({
            loop: true,
            margin: 10,
            nav: true,
            autoplay: true,               // Enable autoplay
            autoplayTimeout: 3000,         // Time between slides (in milliseconds)
            autoplayHoverPause: true,      // Pause on mouse hover
            responsive: {
                0: {
                    items: 1
                },
                600: {
                    items: 2
                },
                1000: {
                    items: 4
                }
            }
        });
    });
</script>

</body>
</html>

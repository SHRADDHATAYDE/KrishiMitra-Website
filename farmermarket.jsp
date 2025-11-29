<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tabbed Interface with Carousel in JSP</title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

    <!-- Owl Carousel CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">

    <!-- jQuery (Required for Owl Carousel) -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <!-- Owl Carousel JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>

    <!-- Tab CSS -->
    <style>
        /* Tab styling */
        .tab {
            overflow: hidden;
            border-bottom: 1px solid #ccc;
            background-color: #f1f1f1;
        }
        .tab button {
            background-color: inherit;
            float: left;
            border: none;
            outline: none;
            cursor: pointer;
            padding: 14px 16px;
            transition: 0.3s;
        }
        .tab button:hover {
            background-color: #ddd;
        }
        .tab button.active {
            background-color: #ccc;
        }
        .tabcontent {
            display: none;
            padding: 6px 12px;
            border-top: none;
        }

        /* Owl Carousel styling */
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
                        <li class="nav-item">
                            <a class="nav-link text-uppercase" aria-current="page" href="farmermarket.jsp">Farmer Market</a>
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
                            <a class="nav-link text-uppercase" aria-current="page" href="addressPaymentForOrder.jsp">Contact</a>
                        </li>
                         
                        
                     
                        
                           
                        
                      
                    </ul>

                </div>
            </div>
        </nav>
    </header>



<!-- Tab Navigation -->
<div class="tab">
    <button class="tablinks" onclick="openTab(event, 'CarouselTab')" id="defaultOpen">Pulses</button>
    <button class="tablinks" onclick="openTab(event, 'AboutTab')">Seeds</button>
    <button class="tablinks" onclick="openTab(event, 'ContactTab')">Contact</button>
</div>

<!-- Tab Content 1: Carousel -->
<div id="CarouselTab" class="tabcontent">
    
    <!-- Owl Carousel HTML structure for products -->
    <div class="owl-carousel owl-theme">
        <!-- Product 1 -->
        <div class="item">
            <img src="./image/Moong dal.webp" alt="Product 1" class="product-image">
            <div class="product-name">Moong Dal</div>
            <div class="product-price"><i class="fa fa-inr"></i>1000</div>
            <a href="productDetails.jsp?productId=1" class="read-more">Read More</a>
        </div>

        <!-- Product 2 -->
        <div class="item">
            <img src="./image/uraddal.jpg" alt="Product 2" class="product-image">
            <div class="product-name">Urad Dal</div>
            <div class="product-price"><i class="fa fa-inr"></i>500</div>
            <a href="productDetails.jsp?productId=2" class="read-more">Read More</a>
        </div>

        <!-- Product 3 -->
        <div class="item">
            <img src="./image/turdal.webp" alt="Product 3" class="product-image">
            <div class="product-name">Toor Dal</div>
          <div class="product-price"><i class="fa fa-inr"></i>300</div>
            <a href="productDetails.jsp?productId=3" class="read-more">Read More</a>
        </div>

        <!-- Add more products as needed -->
    </div>
</div>

<!-- Tab Content 2: About -->
<div id="AboutTab" class="tabcontent">
     <!-- Owl Carousel HTML structure for products -->
    <div class="owl-carousel owl-theme">
        <!-- Product 1 -->
        <div class="item">
            <img src="./image/pumpkinseed.jpg" alt="Product 1" class="product-image">
            <div class="product-name">Pumkin Seeds</div>
            <div class="product-price"><i class="fa fa-inr"></i>300</div>
            <a href="productDetails.jsp?productId=1" class="read-more">Read More</a>
        </div>

        <!-- Product 2 -->
        <div class="item">
            <img src="./image/chiaseed.webp" alt="Product 2" class="product-image">
            <div class="product-name">chia seeds</div>
            <div class="product-price"><i class="fa fa-inr"></i>500</div>
            <a href="productDetails.jsp?productId=2" class="read-more">Read More</a>
        </div>

        <!-- Product 3 -->
        <div class="item">
            <img src="./image/sunflower.webp" alt="Product 3" class="product-image">
            <div class="product-name">Sunflower</div>
          <div class="product-price"><i class="fa fa-inr"></i>700</div>
            <a href="productDetails.jsp?productId=3" class="read-more">Read More</a>
        </div>
</div>

<!-- Tab Content 3: Contact -->
<div id="ContactTab" class="tabcontent">
    <h2>Contact Us</h2>
    <p>This is the Contact section. Add your contact details here.</p>
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

    // Function to switch between tabs
    function openTab(evt, tabName) {
        var i, tabcontent, tablinks;
        tabcontent = document.getElementsByClassName("tabcontent");
        for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablinks");
        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" active", "");
        }
        document.getElementById(tabName).style.display = "block";
        evt.currentTarget.className += " active";
    }

    // Open the default tab
    document.getElementById("defaultOpen").click();
</script>

</body>
</html>

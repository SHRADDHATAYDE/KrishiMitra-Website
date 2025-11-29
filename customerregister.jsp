<!DOCTYPE html>
<html>
<head>
    <title>Customer Registration Form</title>
    
    
    <style>
        body {
            font-family: Arial, sans-serif;
           
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .form-container {
            background-color: white;
            border-radius: 10px;
            padding: 20px;
            width: 400px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .form-container h2 {
            text-align: center;
            margin-bottom: 10px;
        }
        .form-container p {
            text-align: center;
            color: grey;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
        }
        .form-group input, .form-group select {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }
        .submit-button {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: green;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 16px;
            border-radius: 5px;
        }
        
.playfair-display {
  font-family: "Playfair Display", serif;
  font-optical-sizing: auto;
  font-weight: 400;
  font-style: normal;
}
    </style>
</head>
<body>
    <div class="form-container">
        <h2 class="playfair-display ">Customer Registration Form</h2>
        
       
        <form action="CustomerRegisterServlet" method="post">
            <div class="form-group">
                <label for="firstName" class="playfair-display">Full Name</label>
                <input type="text" id="firstName" name="input1" placeholder="Enter Your Name" required>
            </div>
            <div class="form-group">
                <label for="lastName" class="playfair-display">Email-Id</label>
                <input type="email" id="email" name="input2" placeholder="ex: myname@example.com"" required>
            </div>
             <div class="form-group">
                <label for="lastName" class="playfair-display">Password</label>
                <input type="password" id="email" name="input3" placeholder="password" required>
            </div>
            <div class="form-group">
                <label for="lastName" class="playfair-display">Address</label>
                <input type="text" id="email" name="input4" placeholder="Address" required>
            </div>
            <div class="form-group">
                <label for="email" class="playfair-display">Mobile Number</label>
                <input type="text" id="email" name="input5" placeholder="Mobile Number"  pattern="[0-9]{10}" required>
            </div>
            <div class="form-group">
                <label for="date" class="playfair-display">Date Of Birth</label>
                <input type="date" id="date" name="input6" placeholder="Date Of Birth"  required>
            </div>
           
            <div class="form-group">
                <label for="classes" class="playfair-display">Gender</label>
                <select id="classes" name="input7" required>
                    <option value="" disabled selected>--Select--</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Other">Other</option>
                    
                </select>
            </div>
             <div class="form-group">
                <label for="classes" class="playfair-display">State</label>
                <select id="classes" name="input8" required>
                    <option value="" disabled selected>--Select--</option>
                    <option value="Maharastra">Maharastra</option>
                    <option value="Gujrat">Gujrat</option>
                    <option value="Madhy pradesh">Madhy Pradesh</option>
                    
                </select>
            </div>
            
            
           
            
            <input type="submit" class="submit-button" value="Submit">
        </form>
         
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    </div>
</body>
</html>

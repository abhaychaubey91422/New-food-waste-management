<html>
<head>
 <link rel="stylesheet" href="profile.css">
 <script src="js/client.js" defer></script>
</head>
<body>
<div class="signup-w3ls">   
    <div class="signup-agile1">
        <form action="voluntree-backend.jsp" method="post">

            <div class="form-control"> 
                <label class="header">Profile Photo:</label>

                <input id="image" type="file" name="profile_photo" placeholder="Photo" required="" capture>
            </div>

            <div class="form-control"> 
                <label class="header"> Name Of NGO:</label>
                <input type="text" id="store_name" name="ngo" placeholder="Name Of NGO/g" required="">
            </div>

            <div class="form-control">
                <label class="header">(provider/collector):</label>
                <input type="text" id="store_type" name="type" placeholder=" Type"  required="">
            </div>

            <div class="form-control">  
                <label class="header">Owner name :</label>
                <input type="text" id="owner_type" name="ownr" placeholder="Owner Type"  required="">
            </div>

            <div class="form-control">  
                <label class="header">Website :</label>
                <input type="url" id="website" name="website" placeholder="Website" id="password1" required="">
            </div>

            <div class="form-control">  
                <label class="header">Contact Number :</label>  
                <input type="text" id="contact_number" name="contact_number" placeholder="Contact Number" >
            </div>  

            <div class="form-control">  
                <label class="header">Contact Email :</label>   
                <input type="email" id="contact_email" name="contact_email" placeholder="Contact Email" required="">
            </div>  

            <input type="submit" class="register" value="Register">
        </form>

    </div>
</div>  
</div>
</body>
</html>
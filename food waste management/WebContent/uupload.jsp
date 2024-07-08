<html>
  <head>
    <meta charset="utf-8">
    <title>Facebook Post Box Clone | CodeWithNepal</title>
    <link rel="stylesheet" href="css/uupload.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>  
  </head>
  <body>
    <div class="container">
      <div class="wrapper">
        <section class="post">
          <header>Upload</header>
          <form action="#">
            <div class="content">
              <img src="cwn.png" alt="logo">
             
            </div>
            <textarea placeholder="What's on your mind, CodeWithNepal?" spellcheck="false" required></textarea>
            
            <div class="options">
             
              
            

    <script>
      const container = document.querySelector(".container"),
      privacy = container.querySelector(".post .privacy"),
      arrowBack = container.querySelector(".audience .arrow-back");


      privacy.addEventListener("click", () => {
        container.classList.add("active");
      });


      arrowBack.addEventListener("click", () => {
        container.classList.remove("active");
      });
    </script>
    
  </body>
</html>>
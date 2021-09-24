<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact us!!</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&family=Roboto+Slab&display=swap" rel="stylesheet">
   
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous"><link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
</head>
<style>
*{
    padding: 0;
    margin: 0;
    color: #fff;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
    border: none;
}
body{
    background-image: url('images/photo5.jpeg');
    width: 100%;
    height: 100vh;
    background-size: 100% 110vh;
    position: relative;
    background-repeat: no-repeat;
}
header{
    position: absolute;
    text-align: center;
    width: 75%;
    left: 12%;
    top: 2rem;
}
header h1{
    font-size: 30px;
}
.empty{
    width: 100%;
    height: 100vh;
    background-color: rgba(0,0,0,0.5);
    position: absolute;
    top: 0px;
    left: 0;
    z-index: -1;
}

.content{
    display: flex;
    min-height: 110vh;
}
.content section{
    margin-top: 8vh;
    margin-left: 20vh;
}
.content-form{
    margin-top: 7rem;
}
section i{
    border-radius: 50%;
    width: 40px;
    height: 40px;
    background-color: rgba(255,255,255,0.8);
    color: black;
    text-align: center;
}



.media{
    position: absolute;
    top: 85vh;
    right: 20vh;
    display: flex;
    list-style: none;
}
.media li{
    margin: 20px 30px;
}
@media screen and (max-width: 900px){
    body{
        background-repeat: repeat-y;
        overflow: auto;
    }
    header{
        position: absolute;
        left: 0;
        top: 20%;
        width: 100%;
    }
  
    .content-form{
        display: grid;
        grid-template-columns: repeat(3, 1fr);
        grid-gap: 0;
        margin-top: 53vh;
        margin-left: 10vh;
    }
   
    .media{
        position: absolute;
        top: 190vh;
        right: 30px;
    }
}</style>
<body style="background-image: url(https://source.unsplash.com/650x550)">
    <div class="container">
        <header>
            <h1>Contact Us</h1>
            
        </header>
        <div class="content">
            <div class="content-form">
                <section>
                    <i class="fa fa-map-marker fa-2x" aria-hidden="true"></i>
                    <h2>address</h2>
                    <p>
                        Belapur Bk., sathbhai wasti, <br>
                        Shrirampur, <br>
                        Ahemednagar
                    </p>
                </section>

                <section>
                    <i class="fa fa-phone fa-2x" aria-hidden="true"></i>
                    <h2>Phone</h2>
                    <p>7057081393   </p>
                    <p>7517577378</p>
                </section>

                <section>
                    <i class="fa fa-envelope fa-2x" aria-hidden="true"></i>
                    <h2>E-mail</h2>
                    <p>yogeshjadhav41447@gmail.com</p>
                    <p>sunnykale7517@gmail.com</p>
                </section>
            </div>
        </div>

      
        <div class="media">
            <li><i class="fa fa-facebook-square fa-2x" aria-hidden="true"></i></li>
            <li><i class="fa fa-instagram fa-2x" aria-hidden="true"></i></li>
            <li><i class="fa fa-whatsapp fa-2x" aria-hidden="true"></i></li>
            <li><i class="fa fa-twitter-square fa-2x" aria-hidden="true"></i></li>
        </div>
        <div class="empty">

        </div>
    </div>    
</body>
</html>
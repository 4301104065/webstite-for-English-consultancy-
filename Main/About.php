<!--PHP LOGIN-->
<?php
    include_once("Processes/Login.php");
?>




<!--Header-->
<nav class="navbar navbar-expand-md bg-dark navbar-dark">
<?php
    include("View/Header.php");
?>
</nav>

<!--Breadcrumb-->
<nav aria-label="breadcrumb" class="bg-dark">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.php?page=OwO">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Our Story</li>
        </ol>
    </nav><br /><br />

<!--Introduction-->
<div class="container text-center">
    <div><img src="Picture/Logo.jpg" style="max-width:300px" /></div>
        <h1>English Warrior</h1><br />
        <div class="container col-6 text-left">
            <p style="font-size:18px">Tiếng anh là một đấu trường sinh tử khắc nghiệt, nhưng sẽ không vấn đề nếu bạn trở thành 1 warrior, chào mừng gia nhập cùng bọn mình</p>
            <p style="font-size:18px">
                Chúng tôi xin hân hạnh giới thiệu cho các bạn trang web tư vấn tài liệu tiếng anh uy tín cho các bạn học sinh, sinh viên của mọi lứa tuổi.
            </p>
            <p style="font-size:18px">Nếu các bạn cần tư vấn gì hãy liên hệ các warrior bên dưới:</p>
        </div><br />

        <div class="card border-warning p-0 col-sm-4 ml-auto mr-auto mb-5">
            <div class="card-header bg-primary text-white font-weight-bold">Mai Huy</div>
            <img src="Picture/Warriors3.jpg" style="width:100%" />
            <div class="card-body" style="background-color:#f2f2f2">
                <h5>- Lost faith in humanity</h5>
                <h5>- Dead inside.</h5>
            </div>
        </div>

        <div class="card border-danger p-0 col-sm-4 ml-auto mr-auto mb-5">
            <div class="card-header bg-danger text-white font-weight-bold">Nguyễn Trung Hiếu</div>
            <img src="Picture/Warrior1.jpg" style="width:100%" />
            <div class="card-body" style="background-color:#f2f2f2">
                <h5>- Sad all the time.</h5>
                <h5>D:</h5>
            </div>
        </div>

        <div class="card border-primary p-0 col-sm-4 ml-auto mr-auto mb-5">
            <div class="card-header bg-warning text-white font-weight-bold">Nguyễn Thành Đạt</div>
            <img src="Picture/Warrior2.jpg" style="width:100%" />
            <div class="card-body" style="background-color:#f2f2f2">
                <h5>- We gho dIdneey lenD</h5>
                <h5>- Seems fine to me</h5>
            </div>
        </div>

</div>

<!--Footer-->
<footer class="card-footer text-center bg-dark text-white">
        <h4 class="font-weight-bold">FOLLOW US FOR MORE EXCLUSIVE CONTENTS AND INFORMATION</h4><br />
        <div class="container">
            <a href="#"><img src="Pics/tumblr_logo.png" style="max-width:45px" /></a>
            <a href="#"><img src="Pics/twitter_logo.png" style="max-width:45px" /></a>
            <a href="#"><img src="Pics/facebook_logo.png" style="max-width:45px" /></a>
        </div>
        <br />
        <h6>&copy; ÒwÓ Powered by Bootstrap 4</h6>
</footer>


<!----Modal----->
<?php
    include("View/Modals.php");
?>



<!--PHP Register-->
<?php
    include_once("Processes/Register.php")
?>



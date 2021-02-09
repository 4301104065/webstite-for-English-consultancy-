<!--PHP LOGIN-->
<?php
    include_once("Processes/Login.php");
    $otterly = "";
?>

<?php
    if(isset($_POST['btnLogout'])){
        unset($_SESSION['user']);
        header("Location: index.php?page=OwO");      
    }
?>
<!-- Header -->
<nav class="navbar navbar-expand-md bg-dark navbar-dark fixed-top">
<?php
    include("View/Header.php");
?>
</nav>

<!-- Carousel -->
<div id="demo" class="carousel slide" data-ride="carousel">

<!-- Indicators -->
<ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
</ul>

<!-- The slideshow -->
<div class="carousel-inner">
    <div class="carousel-item active">
        <img src="Picture/t-m-quan-tr-ng-va-l-i-ich-c-a-vi-c-h-c-ti-ng-anh-2d2ef0c58f556e0b3744.jpg" width="1100" height="500">
    </div>
    <div class="carousel-item">
        <img src="Picture/6-loi-ich-hoc-tieng-anh-cho-tre-em-1.png" width="1100" height="500">
    </div>
    <div class="carousel-item">
        <img src="Picture/lợi-ích-giỏi-tiếng-anh-01-1-1516x790.png" width="1100" height="500">
    </div>
</div><br />

<!-- Left and right controls -->
<a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
</a>
<a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
</a>
</div>

<?php
$result = DataProvider::ExecuteQuery("SELECT * from question");
if(!isset($_POST['submit'])){
?>
<div class="container ">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-10 col-lg-12 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
          
            <!-- Nested Row within Card Body -->
            
              <div class="col-lg-8 ml-auto mr-auto">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Tài liệu English nào tốt? Hỏi ngay English Warrior? Các Warrior sẽ tư vấn những tài liệu tốt nhất cho bạn.</h1>
                    <img src="Picture/icon.jpg" style="width:100%">
                  </div>
                  <br>
                  <form class="user" method="post" action="index.php?page=OwO" enctype="multipart/form-data">
                    <?php 
                    while($row = mysqli_fetch_array($result)){
                    ?>
                    <div class="form-group">
                      <?php echo $row['Description']; ?>
                      <select class="form-control" name="<?php echo $row['ID']; ?>" id="example1" value="1">
                            <?php if($row['Answer1'] !=""){
                            ?>
                                <option><?php echo $row['Answer1']; ?></option>
                            <?php 
                            }
                            ?>
                            <?php if($row['Answer2']!=""){
                            ?>
                                <option><?php echo $row['Answer2']; ?></option>
                            <?php 
                            }
                            ?>
                            <?php if($row['Answer3']!=""){
                            ?>
                                <option><?php echo $row['Answer3']; ?></option>
                            <?php 
                            }
                            ?>
                            <?php if($row['Answer4']!=""){
                            ?>
                                <option><?php echo $row['Answer4']; ?></option>
                            <?php 
                            }
                            ?>
                            <?php if($row['Answer5']!=""){
                            ?>
                                <option><?php echo $row['Answer5']; ?></option>
                            <?php 
                            }
                            ?>
                            <?php if($row['Answer6']!=""){
                            ?>
                                <option><?php echo $row['Answer6']; ?></option>
                            <?php 
                            }
                            ?>
                            <?php if($row['Answer7']!=""){
                            ?>
                                <option><?php echo $row['Answer7']; ?></option>
                            <?php 
                            }
                            ?>   
                      </select>
                    </div>
                    <?php }?>
                    <br/>
                    <input name="submit" type="submit" class="form-control btn-primary" value="Submit" /><br>
                    <h3 style="color:forestgreen" class="text-center"><?php echo $otterly; ?></h3>
                    
                  </form>
                  
                </div>
              </div>
            
          </div>
        </div>

      </div>

    </div>

  </div>
<?php
}
else{
    $result = DataProvider::ExecuteQuery("SELECT * from question");
    $numQ = mysqli_num_rows($result);
    $string="";
    $num=1;
    while($row = mysqli_fetch_array($result)){
        $answer= $_REQUEST[$num];
        $res = DataProvider::ExecuteQuery("SELECT * from event WHERE Attribute='".$answer."'");
        $kihieu = mysqli_fetch_array($res);
        if($num!=$numQ){
            $string.=$kihieu['Value']." ";
        }
        else $string.=$kihieu['Value'];
        $num=$num+1;
    }
?>
<!-- Divider -->
<div class="text-center size" style="color: red" id="Ielts"><h1>Cám ơn bạn đã sử dụng dịch vụ tư vấn của English Warrior, đây là các tài liệu phù hợp dành cho bạn.</h1></div> <br /> <br />
<div class="container">

    <div class="row">
        <?php 
            $result = DataProvider::ExecuteQuery("SELECT * from rule WHERE Array='".$string."'");
            $numR = mysqli_num_rows($result);
            $bool=0;
            if($numR!=0){
                $result = DataProvider::ExecuteQuery("SELECT * from product");
                    while($row = mysqli_fetch_array($result)){
                        $id=$row['ID'];
                        if($row['Rule']!=""){
                                $rules = $row['Rule'];
                                $arrrule=explode(',', $rules);
                                $arrstring=explode(' ',$string);
                                foreach ($arrrule as $rule) {
                                    $arrR=explode(' ',$rule);
                                    $i=0;
                                    $sum=0;
                                    $n=count($arrstring);
                                    $n1=count($arrR);
                                    if($n==$n1){
                                        foreach ($arrstring as $k) {
                                            if($k==$arrR[$i]){
                                                $sum++;
                                            }
                                            $i++;
                                        }
                                    }
                                    if($sum==$n) {
                                         $result1 = DataProvider::ExecuteQuery("SELECT * FROM product WHERE ID='".$id."'");
                                         $bool=1;

                                        include("Processes/GetProducts.php");
                                    }
                                }
                        }
                       
                    }
                   
                  
            }
        ?>
           
          
    </div>
    <?php
    if($bool==0){
     ?>
        <div style="text-align: center;font-size: 25px">None</div>
        </br>
        <center><img class="img-responsive" src="Picture/sadicon.jpg" style="width:10%;vertical-align: : center;"></center>
        </br>
    <?php    
    }
    ?>
    <div style="text-align: center;font-size: 25px"><a href="index.php?page=OWO">Quay lại  trang chủ</a></div>
</div><br /> <br />
<?php } ?>

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


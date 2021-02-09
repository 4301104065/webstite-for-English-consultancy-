

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
    <?php
        $result = DataProvider::ExecuteQuery("SELECT * FROM product WHERE ID=$_GET[id]");
        while($product = mysqli_fetch_array($result)){
    ?>
<!--Breadcrumb-->
<nav aria-label="breadcrumb" class="bg-dark">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="index.php?page=OwO">Home</a></li>
        <li class="breadcrumb-item active" aria-current="page"><?php echo $product['Name']?></li>
    </ol>
</nav><br /><br />

<!--Product Deatail s-->
<div class="container" style="min-height:60vh">
    <div class="card">
        <div class="row">
            <div class="col-sm-5 border-right">
                <img src="Picture/<?php echo $product['Pic']?>" style="width:100%">
            </div>
            <div class="col-sm-7">
                <form method="post" action="index.php?page=Product_Detail&id=<?php echo($_GET['id']); ?>">
                <article class="card-body p-5">
                    <h3 class="title mb-3 tex"><?php echo $product['Name']?></h3>
                    <p class="price-detail-wrap">
                        <span class="price h3 text-warning">
                            <span style="color:forestgreen">For level: <?php echo $product['Level']?></span>
                        </span>
                    </p> <!--price-detail-wrap -->
                    <dl>
                        <dt>Authors</dt>
                        <dd>
                            <p>
                                <?php echo $product['Developers']?>
                            </p>
                        </dd>
                    </dl>
                     <dl>
                        <dt>Skill</dt>
                        <dd>
                            <p>
                                <?php echo $product['Skill']?>
                            </p>
                        </dd>
                    </dl>
                    <dl>
                        <dt>Description</dt>
                        <dd>
                            <p>
                                <?php echo $product['Description']?>
                            </p>
                        </dd>
                    </dl>
                    
                    
                    <?php
                        
                            if( isset($_SESSION['user']) && !empty($_SESSION['user']) ){
                                ?>
                                <!--CODE WRITE THERE-->
                            
                                <a class="btn btn-lg btn-outline-primary text-uppercase" href="<?php echo $product['Link']?>"target="_blank"> 
                                <i class="fa fa-cloud-download"> Link dowload</i>
                                </a>
                                
                                

                                


                                <?php
                            }

                            else{
                                ?>
                                <a href="" class="btn btn-lg btn-outline-primary text-uppercase" data-toggle="modal" data-target="#NotificationModal"> 
                                    <i class="fa fa-shopping-cart"></i> Link Dowload
                                </a>
                                <!--Notification-->
                                <div class="modal fade" id="NotificationModal">
                                    <div class="modal-dialog modal-sm">
                                        <div class="modal-content">
                                            <div class="modal-header text-center bg-danger">
                                                <h6 class="modal-title w-100 font-weight-bold">Access Failed</h6>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                            </div>
                                                <div class="modal-body mx-3">You must Login.</div>
                                        </div>
                                    </div>
                                </div>
                                <?php
                            }
                        }
                        
                    ?>
                </article>
                </form>
            </div>
        </div>
    </div>
</div><br /><br /><br />

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
<?php
	while($product = mysqli_fetch_array($result1))
	{
?>
    <!--Start-->

    <div class="col-sm-4 mb-xl-5">
                <div class="card rounded scale">
                    <div class="hovereffect">
                        <img class="img-responsive img-fluid" src="Picture/<?php echo $row['Pic']?>" style="width:100%;">
                        <div class="overlay">
                            <a class="info" href="index.php?page=Product_Detail&id=<?php echo $row['ID']; ?>"target="_blank">READ MORE</a>
                        </div>
                    </div>
                    <div style="background-color:#f2f2f2" class="p-1">
                        <h5 class="text-center"><b><?php echo $product['Name']?></b></h5><br>
                    </div>
                </div>
            </div>
    <!--End-->
    
<?php       
    }
?>

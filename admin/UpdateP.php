<?php
include_once("DataProvider.php");
$id=$_REQUEST['ID'];
$otterly = "<div class='text-center'><a href='products.php?id=".$_GET['id']."'>Cancel</a></div>";
?>

<?php
if(isset($_POST['submit'])){
    $type = $_REQUEST['type'];
    $skill = $_REQUEST['skill'];
    $name =$_REQUEST['name'];
    $developers = $_REQUEST['developers'];
    $description = $_REQUEST['description'];
    $link = $_REQUEST['link'];
    $level = $_REQUEST['level'];
    $rule = $_REQUEST['rule'];
    if (!empty($_FILES['picture']['name'])){
      $picture = $_FILES['picture']['name'];
      move_uploaded_file($_FILES['picture']['tmp_name'], '../Main/Picture/'.$_FILES['picture']['name']);
      $result = DataProvider::ExecuteQuery("update product set Type='".$type."',  Name='".$name."', Pic='".$picture."', Developers='".$developers."', Description='".$description."',Link='".$link."',Skill='".$skill."',Level='".$level."',Rule='".$rule."' where ID='".$id."'");
    }
    else $result = DataProvider::ExecuteQuery("update product set Type='".$type."',  Name='".$name."',Developers='".$developers."', Description='".$description."',Link='".$link."',Skill='".$skill."',Level='".$level."',Rule='".$rule."' where ID='".$id."'");
    if ($result){
      $otterly = "<h3 style='color:forestgreen' class='text-center'>Record Updated Successfully.</h3> </br>
      <div class='text-center ml-auto mr-auto'><a href='products.php?id=".$_GET['id']."'>View Updated Record</a></div>";
    }
    else $otterly = "<h3 style='color:red' class='text-center'>Record Updated Failed.</h3> </br>
    <div class='text-center ml-auto mr-auto'><a href='products.php?id=".$_GET['id']."'>View Updated Record</a></div>";
}
?>
<?php
$result = DataProvider::ExecuteQuery("SELECT * from product where id='".$id."'");
$row = mysqli_fetch_array($result);
?>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Edit Products</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-10 col-lg-12 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
          
            <!-- Nested Row within Card Body -->
            
              <div class="col-lg-8 ml-auto mr-auto">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Update Product's Record</h1>
                    <img src="../Main/Picture/<?php echo $row['Pic'] ?>" style="width:100%">
                  </div>
                  
                  <form class="user" method="post" action="" enctype="multipart/form-data">
                    <div class="form-group">
                      Type:
                      <select name="type" class="form-control">
                        <?php 
                            $interests = array(
                                'Ielts' => 'Ielts',
                                'Toeic' => 'Toeic',
                            );
                            foreach( $interests as $var => $interest ): 
                        ?>
                        <option value="<?php echo $var ?>"<?php if( $var == $row['Type'] ): ?> selected="selected"<?php endif; ?>><?php echo $interest ?></option>
                        <?php endforeach; ?>
                     </select>
                    </div>
                    <?php
                      if($row['Type']="Ielts"){
                    ?>
                          <div class="form-group">
                            Type:
                            <select name="skill" class="form-control">
                              <?php 
                                  $interests = array(
                                      'Reading' => 'Reading',
                                      'Listening' => 'Listening',
                                      'Speaking' => 'Speaking',
                                      'Writing' => 'Writing',
                                  );
                                  foreach( $interests as $var => $interest ): 
                              ?>
                              <option value="<?php echo $var ?>"<?php if( $var == $row['Skill'] ): ?> selected="selected"<?php endif; ?>><?php echo $interest ?></option>
                              <?php endforeach; ?>
                           </select>
                          </div>
                    <?php
                      }
                      else if($row['Type']="Toeic"){
                    ?>
                           <div class="form-group">
                            Type:
                            <select name="skill" class="form-control">
                              <?php 
                                  $interests = array(
                                      'Reading' => 'Reading',
                                      'Listening' => 'Listening',
                                  );
                                  foreach( $interests as $var => $interest ): 
                              ?>
                              <option value="<?php echo $var ?>"<?php if( $var == $row['Skill'] ): ?> selected="selected"<?php endif; ?>><?php echo $interest ?></option>
                              <?php endforeach; ?>
                           </select>
                          </div>
                    <?php
                      }
                    ?>
                    <div class="form-group">
                      Type:
                      <select name="level" class="form-control">
                        <?php 
                            $interests = array(
                                'Elementary' => 'Elementary',
                                'Intermediate' => 'Intermediate',
                                'Advanced' => 'Advanced',
                            );
                            foreach( $interests as $var => $interest ): 
                        ?>
                        <option value="<?php echo $var ?>"<?php if( $var == $row['Level'] ): ?> selected="selected"<?php endif; ?>><?php echo $interest ?></option>
                        <?php endforeach; ?>
                     </select>
                    </div>
                    <div class="form-group">
                      Name: <input type="text" class="form-control" name="name" placeholder="Enter Product Name..." value="<?php echo $row['Name'];?>" required>
                    </div>
                    <div class="form-group">
                      Authors: <input type="text" class="form-control" name="developers" placeholder="Enter Authors's Name..." value="<?php echo $row['Developers'];?>">
                    </div>
                    <div class="form-group">
                      Description: <textarea style="height:100px" class="form-control" name="description" placeholder="Enter Product's Description..."><?php echo $row['Description']; ?></textarea>
                    </div>
                    <div class="form-group">
                      Link: <input type="text" class="form-control" name="link" placeholder="Enter Book's Link..." value="<?php echo $row['Link'];?>">
                    </div>
                    <div class="form-group">
                      Rule: <input type="text" class="form-control" name="rule" placeholder="Rule..." value="<?php echo $row['Rule'];?>">
                    </div>
		    <div class="form-group">
                      New Picture:<input type="file" name="picture">
                    </div>
                    <br/>
                    <input name="submit" type="submit" class="form-control btn-primary" value="Submit" /><br>
                    <?php echo $otterly; ?>
                  </form>
                  
                </div>
              </div>
            
          </div>
        </div>

      </div>

    </div>

  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

</body>

</html>

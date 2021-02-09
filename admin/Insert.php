<?php
include("DataProvider.php");
$otterly = "";
if(isset($_POST['submit'])){
    $type = $_REQUEST['type'];
    $name =$_REQUEST['name'];
    $pic = $_FILES['picture']['name'];
    $developers = $_REQUEST['developers'];
    $skill = $_REQUEST['skill'];
    $level = $_REQUEST['level'];
    $description = $_REQUEST['description'];
    $link = $_REQUEST['link'];
    $rule = $_REQUEST['rule'];
    $idA=$_GET['id'];
    $res = DataProvider::ExecuteQuery("SELECT MAX(ID) from product order by ID DESC");
    while($product = mysqli_fetch_array($res)){
        $id=$product['ID'];
    }
    move_uploaded_file($_FILES['picture']['tmp_name'], '../Main/Picture/'.$_FILES['picture']['name']);

    $result=DataProvider::ExecuteQuery("INSERT into product (Type, Skill, Level, Name, Pic, Developers, Description, Link, Rule) values ('$type','$skill','$level', '$name', '$pic', '$developers', '$description','$link','$rule')");
    $res = DataProvider::ExecuteQuery("SELECT MAX(ID) as IDP from product order by ID DESC");
    $id=1;
    while($product = mysqli_fetch_array($res)){
        $id=$product['IDP'];
    }
    if ($result){
    ?>
    <script>
        window.location.href="UpdateP.php?id=<?php echo $idA?>&ID=<?php echo $id ?>"; 
    </script>
    <?php
    }
      else $otterly ="Insert failed";
}


?>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SB Admin - Insert Product</title>

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
                    <h1 class="h4 text-gray-900 mb-4">Insert New Book</h1>
                  </div>
                  <form class="user" method="post" action="" enctype="multipart/form-data">
                    <div class="form-group">
                      Type:
                      <select class="form-control" name="type" id="example1" value="1">
                        <option>Ielts</option>
                        <option>Toeic</option>
                      </select>
                    </div>
                    <div class="form-group">
                      Type:
                      <select class="form-control" name="skill" id="example2" value="1">
                        <option>Listening</option>
                        <option>Reading</option>
                        <option>Speaking</option>
                        <option>Writing</option>
                      </select>
                    </div>
                     <div class="form-group">
                      Type:
                      <select class="form-control" name="level" id="example3" value="1">
                        <option>Elementary</option>
                        <option>Intermediate</option>
                        <option>Advanced</option>
                      </select>
                    </div>
                    <div class="form-group">
                      Name: <input type="text" class="form-control" name="name" placeholder="Enter Book Name..." required>
                    </div>                   
                    <div class="form-group">
                      Author: <input type="text" class="form-control" name="developers" placeholder="Enter Author's Name...">
                    </div>
                    <div class="form-group">
                      Description: <textarea style="height:100px" class="form-control" name="description" placeholder="Enter Book's Description..."></textarea>
                    </div>
                    <div class="form-group">
                      Link: <input type="text" class="form-control" name="link" placeholder="Enter Book's link...">
                    </div>
                    <div class="form-group">
                      Rule: <input type="text" class="form-control" name="rule" placeholder="Book's rule...">
                    </div>
                    <div>
                      Picture: <input type="file" name="picture" />
                    </div>
                    <br/>
                    <input name="submit" type="submit" class="form-control btn-primary" value="Submit" /><br>
                    <h3 style="color:forestgreen" class="text-center"><?php echo $otterly; ?></h3>
                    <div class="text-center"><a href="products.php?id=<?php echo $_GET['id']?>">Cancel</a></div>
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

<?php
include_once("DataProvider.php");
$id=$_REQUEST['ID'];
$otterly = "<div class='text-center'><a href='Event.php?id=".$_GET['id']."'>Cancel</a></div>";
?>

<?php
if(isset($_POST['submit'])){
    $attribute = $_REQUEST['attribute'];
    $value = $_REQUEST['value'];
    $sql = "SELECT * FROM event WHERE Value = '$value'";
    $query = DataProvider::ExecuteQuery($sql);
    $numValue = mysqli_num_rows($query);
    while ($res = mysqli_fetch_array($query)){
      if($numValue!=0 && $res['ID']!=$id){
            $otterly="<h3 style='color:red' class='text-center'>This Value  is already exist.</h3> </br>
            <div class='text-center ml-auto mr-auto'><a href='Event.php?id=".$_GET['id']."'>Cancel</a></div>";
      }
      else{
        $result = DataProvider::ExecuteQuery("update event set Attribute='".$attribute."',  Value='".$value."' where ID='".$id."'");
        if ($result){
          $otterly = "<h3 style='color:forestgreen' class='text-center'>Record Updated Successfully.</h3> </br>
          <div class='text-center ml-auto mr-auto'><a href='Event.php?id=".$_GET['id']."'>View Updated Record</a></div>";
        }
        else $otterly = "<h3 style='color:red' class='text-center'>Record Updated Failed.</h3> </br>
        <div class='text-center ml-auto mr-auto'><a href='Event.php?id=".$_GET['id']."'>View Updated Record</a></div>";
      }
    }
    if($numValue==0){
        $result = DataProvider::ExecuteQuery("update event set Attribute='".$attribute."',  Value='".$value."' where ID='".$id."'");
        if ($result){
          $otterly = "<h3 style='color:forestgreen' class='text-center'>Record Updated Successfully.</h3> </br>
          <div class='text-center ml-auto mr-auto'><a href='Event.php?id=".$_GET['id']."'>View Updated Record</a></div>";
        }
        else $otterly = "<h3 style='color:red' class='text-center'>Record Updated Failed.</h3> </br>
        <div class='text-center ml-auto mr-auto'><a href='Event.php?id=".$_GET['id']."'>View Updated Record</a></div>";
    }
}
?>
<?php
$result = DataProvider::ExecuteQuery("SELECT * from Event where id='".$id."'");
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

  <title>Edit Event</title>

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
                    <h1 class="h4 text-gray-900 mb-4">Update Event</h1>
                  </div>
                  
                  <form class="user" method="post" action="" enctype="multipart/form-data">
                    <div class="form-group">
                      Attribute: <input type="text" class="form-control" name="attribute" placeholder="Enter Attribute Name..." value="<?php echo $row['Attribute'];?>" required>
                    </div>
                    <div class="form-group">
                      Value: <input type="text" class="form-control" name="value" placeholder="Enter Attribute's value..." value="<?php echo $row['Value'];?>">
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
  <script src="js/sb-admin-.min.js"></script>

</body>

</html>

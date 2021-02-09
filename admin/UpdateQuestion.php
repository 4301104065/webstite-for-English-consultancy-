<?php
include_once("DataProvider.php");
$id=$_REQUEST['ID'];
$otterly = "<div class='text-center'><a href='Question.php?id=".$_GET['id']."'>Cancel</a></div>";
?>

<?php
if(isset($_POST['submit'])){
    $content = $_REQUEST['content'];
    $answer1 = $_REQUEST['answer1'];
    $answer2 = $_REQUEST['answer2'];
    $answer3 = $_REQUEST['answer3'];
    $answer4 = $_REQUEST['answer4'];
    $answer5 = $_REQUEST['answer5'];
    $answer6 = $_REQUEST['answer6'];
    $answer7 = $_REQUEST['answer7'];
    $result = DataProvider::ExecuteQuery("update question set Description='".$content."',Answer1='".$answer1."',Answer2='".$answer2."',Answer3='".$answer3."',Answer4='".$answer4."',Answer5='".$answer5."',Answer6='".$answer6."',Answer7='".$answer7."' where ID='".$id."'");
    if ($result){
          $otterly = "<h3 style='color:forestgreen' class='text-center'>Record Updated Successfully.</h3> </br>
          <div class='text-center ml-auto mr-auto'><a href='Question.php?id=".$_GET['id']."'>View Updated Record</a></div>";
    }
    else $otterly = "<h3 style='color:red' class='text-center'>Record Updated Failed.</h3> </br>
    <div class='text-center ml-auto mr-auto'><a href='Question.php?id=".$_GET['id']."'>View Updated Record</a></div>";
}
?>
<?php
$result = DataProvider::ExecuteQuery("SELECT * from question where id='".$id."'");
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

  <title>Edit Question</title>

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
                    <h1 class="h4 text-gray-900 mb-4">Update Question</h1>
                  </div>
                  
                  <form class="user" method="post" action="" enctype="multipart/form-data">
                    <div class="form-group">
                      Nội dung câu hỏi: <input type="text" class="form-control" name="content" placeholder="Enter Question's content..." value="<?php echo $row['Description'];?>" required>
                    </div>                   
                    <div class="form-group">
                      Câu trả lời 1: <input type="text" class="form-control" name="answer1" placeholder="Enter Answer1..." value="<?php echo $row['Answer1'];?>">
                    </div>
                    <div class="form-group">
                      Câu trả lời 2: <input type="text" class="form-control" name="answer2" placeholder="Enter Answer2..."value="<?php echo $row['Answer2'];?>">
                    </div>
                    <div class="form-group">
                      Câu trả lời 3: <input type="text" class="form-control" name="answer3" placeholder="Enter Answer3..."value="<?php echo $row['Answer3'];?>">
                    </div>
                    <div class="form-group">
                      Câu trả lời 4: <input type="text" class="form-control" name="answer4" placeholder="Enter Answer4..."value="<?php echo $row['Answer4'];?>">
                    </div>
                    <div class="form-group">
                      Câu trả lời 5: <input type="text" class="form-control" name="answer5" placeholder="Enter Answer5..."value="<?php echo $row['Answer5'];?>">
                    </div>
                    <div class="form-group">
                      Câu trả lời 6: <input type="text" class="form-control" name="answer6" placeholder="Enter Answer6..."value="<?php echo $row['Answer6'];?>">
                    </div>
                    <div class="form-group">
                      Câu trả lời 7: <input type="text" class="form-control" name="answer7" placeholder="Enter Answer7..."value="<?php echo $row['Answer7'];?>">
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

<?php
include("../DataProvider.php");
$id=$_REQUEST['ID'];
$idA=$_GET['id'];
$result = DataProvider::ExecuteQuery("DELETE FROM question WHERE ID=$id");
?>
<script>
window.location.href="../Question.php?id=<?php echo $idA;?>";
</script>
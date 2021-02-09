<?php
include("../DataProvider.php");
$id=$_REQUEST['ID'];
$idA=$_GET['id'];
$result = DataProvider::ExecuteQuery("DELETE FROM event WHERE ID=$id");
?>
<script>
window.location.href="../event.php?id=<?php echo $idA;?>";
</script>
<?php
include("../DataProvider.php");
$id=$_REQUEST['ID'];
$idA=$_GET['id'];
$result = DataProvider::ExecuteQuery("DELETE FROM rule WHERE ID=$id");
?>
<script>
window.location.href="../Rule.php?id=<?php echo $idA;?>";
</script>
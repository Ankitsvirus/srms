<?php
$na=$_REQUEST["na"];
$id=$_REQUEST["id"];
$cour=$_REQUEST["cour"];
$seme=$_REQUEST["sem"];
$sub=$_REQUEST["sub"];
$tec=$_REQUEST["tec"];
$noc=$_REQUEST["noc"];
$dis=$_REQUEST["dis"];
$rate=$_REQUEST["rate"];
$con=mysqli_connect("localhost","root","","srms");
if($con)
{
	$cmd="insert into tblfeedback values('$na','$id','$cour','$sem','$sub','$tec','$noc','$dis','$rate')";

if(mysqli_query($con,$cmd))
	{
		
		echo"data inserted";
	}
	else
	{
		echo"data not inserted".mysqli_error($con);
	}
}
else
{
	echo"connection failed".mysqli_connect_error($con);
}
?>
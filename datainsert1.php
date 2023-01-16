<?php
$na=$_REQUEST["na"];
$id=$_REQUEST["id"];
$em=$_REQUEST["em"];
$cour=$_REQUEST["cour"];
$seme=$_REQUEST["seme"];
$subj=$_REQUEST["subj"];
$tec=$_REQUEST["tec"];
$et=$_REQUEST["et"];
$con=mysqli_connect("localhost","root","","srms");
if($con)
{
	$cmd="insert into tblreexam values('$na','$id','$em',$cour','$seme','$subj','$tec','$et')";

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
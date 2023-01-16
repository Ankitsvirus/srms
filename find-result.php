<?php
session_start();
//error_reporting(0);
include('includes/config.php');?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
        <title>School Result Management System</title>
        <link rel="stylesheet" href="css/bootstrap.min.css" media="screen" >
        <link rel="stylesheet" href="css/font-awesome.min.css" media="screen" >
        <link rel="stylesheet" href="css/animate-css/animate.min.css" media="screen" >
        <link rel="stylesheet" href="css/icheck/skins/flat/blue.css" >
        <link rel="stylesheet" href="css/main.css" media="screen" >
        <link rel="stylesheet" href="css/ani.css" media="screen" >
		<meta charset="UTF-8">
  <link rel="stylesheet" type="text/css" href="css/rate.css">
  <title>Star rating using pure CSS</title>
        <script src="js/modernizr/modernizr.min.js"></script>
    </head>
    <body class="">
        <div class="main-wrapper">

            <div class="login-bg-color bg-black-300">
                <div class="row">
                    <div class="col-md-4 col-md-offset-4">
                        <div class="panel login-box">
                            <div class="panel-heading">
                                <div class="panel-title text-center">
                                    <h4>School Result Management System</h4>
                                </div>
                            </div>
                            <div class="panel-body p-20">

                           

                                <form action="result.php" method="post">
                                	<div class="form-group">
                                		<label for="rollid">Enter your Roll Id</label>
                                        <input type="text" class="form-control" id="rollid" placeholder="Enter Your Roll Id" autocomplete="off" name="rollid">
                                	</div>
									<tr>
					<td><b>Course</b></td><br>
					<td><select Name="cour" id="cour">
					<option>select Course</option>
					<option>MCA</option>
					<option>B.tech</option>
					<option>BCA</option>
					<option>B.sc</option>
					</select></td>
                               <div class="form-group">
                                                        <label for="default" class="col-sm-2 control-label">Class</label>
 <select name="class" class="form-control" id="default" required="required">
<option value="">Select Course</option>
<?php $sql = "SELECT * from tblclasses";
$query = $dbh->prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
if($query->rowCount() > 0)
{
foreach($results as $result)
{   ?>
<option value="<?php echo htmlentities($result->id); ?>"><?php echo htmlentities($result->ClassName); ?>&nbsp; Section-<?php echo htmlentities($result->Section); ?></option>
<?php }} ?>
 </select>
</div>

    
                                    <div class="form-group mt-20">
                                        <div class="">
                                      
                                            <button type="submit" class="btn btn-success btn-labeled pull-right">Search<span class="btn-label btn-label-right"><i class="fa fa-check"></i></span></button>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>

                                       <div class="col-sm-6">
                                                               <a href="index.php">Back to Home</a>
                                                            </div><br>
                                       <div class="col-sm-6">
                                       <div class="box">
		<a class="button" href="#popup1">Feedback</a>
	</div>
	<div id="popup1" class="overlay">
		<div class="popup">
			<a class="close" href="#">&times;</a>
			<div class="content">
			<form  action="datainsert.php" onsubmit="return validate()">
				<table  id="tab"align="center" cellpadding="10" width="80%" height="70%" bgcolor="yellow" cellspacing="2">
					<caption id="cap1"><h1><u>Feedback form</u></h1></caption>
					<tr>
						<br>
					<td><b>Name</b></td>
					<td><input type="text" name="na" id="textname" size="30" placeholder="Inter your full name"></td>
					<td><label id="msg"></label></td>
					</tr>
					<tr>
					<td><b>ID</b></td>
					<td><input type="text" name="id" id="id" size="30" placeholder="Inter your Collage id"></td>
					</tr>
					<tr>
					<td><b>Course</b></td>
					<td><select Name="cour" id="cour">
					<option>select Course</option>
					<option>MCA</option>
					<option>B.tech</option>
					<option>BCA</option>
					<option>B.sc</option>
					</select></td>
					</tr>
					<tr>
					<td><b>Semester</b></td>
					<td><select Name="sem" id="sem" onchange="slctsub(this.selectedIndex)">
					<option>select semester</option>
					<option>1st sem</option>
					<option>2nd sem</option>
					<option>3rd sem</option>
					<option>4th sem</option>
					<option>5th sem</option>
					<option>6th sem</option>
					<option>7th sem</option>
					<option>8th sem</option>
					</select></td>
					</tr>
					<tr>
					<td><b>Subject</b></td>
					<td><select name="sub" id="sub">
					<option>Select subject</option>
					</select></td>
					</tr>
					
					<tr>
					<td><b>Teacher</b></td>
					<td><select name="tec" id="tec">
				    <option >select..</option>
					<option>Prof. (Dr.) W. Jeberson</option>
					<option>Er. Prateek Singh</option>
					<option>Dr. Sanjay Kumar Yadav</option>
					<option>Dr. (Mrs) Tulika</option>
					<option>Er. P. Stanley</option>
					<option>Dr. Hari Mohan Singh</option>
					<option>Dr. (Mrs) Klinsega Jeberson</option>
					<option>Er. Sanjay T. Singh</option>
					<option>Mr. R. Dileep Kumar</option>
					<option>Dr. Narendra Kumar Gupta</option>
					<option>Dr. Surya Prakash Mishra</option>
					<option>Mr. Indresh Bahadur Rajwade</option>
					<option>Er.(Mrs.) Archana Singh</option>
					<option>Er. Anchit Sajal Dhar</option>
					<option>Dr. Arun Kumar Shukla</option>
					<option>Er. Gaurav Pandey</option>
					<option>Er. Rishabh Chaudhary</option>
					<option>Er. Mohit Paul</option>
					<option>Er. Abdul Rub</option>
					<option>Er. Vineesh Cutting</option>
					<option>Er. Nehemiah N. Stephen</option>
					<option>Mrs. Mudita Srivastava</option>
					<option>Er. Binnu Paul</option>
					<option>Dr. Shashi Prabha</option>
					<option>Mrs. Tahera Mahmood</option>
					<option>Er.jata Shankar Mishra</option>
					</select></td>
					</tr>
					<tr>
					<td><b>No.of class</b></td>
					<td><input type="text" name="noc" id="cl" size="30" placeholder="No. of classes"></td>
					</tr>
					<tr>
					<td><b>Discription</b></td>
					<td><input type="textarea" name="dis" id="dis" size="30" placeholder="write sone think about teacher"></td>
					</tr>
					<tr>
						<td>
					<div class="rate">
    <input type="radio" id="star5" name="rate" value="5" />
    <label for="star5" title="text">5 stars</label>
    <input type="radio" id="star4" name="rate" value="4" />
    <label for="star4" title="text">4 stars</label>
    <input type="radio" id="star3" name="rate" value="3" />
    <label for="star3" title="text">3 stars</label>
    <input type="radio" id="star2" name="rate" value="2" />
    <label for="star2" title="text">2 stars</label>
    <input type="radio" id="star1" name="rate" value="1" />
    <label for="star1" title="text">1 star</label>
  </div></td>
     </tr>
	
					<tr>
					<td colspan="2" align="center"><input type="submit" value="Submit Form" >
					<input type="reset" name="rest"></td>
</tr>
				</table>
				</form>
			</div>
		</div>
	</div>
  </div><br><br>
   
 <div class="box">
		<a class="button" href="#popup2">Repeat/Reregistration Form</a>
	</div>
	<div id="popup2" class="overlay">
		<div class="popup1">
			<a class="close" href="#">&times;</a>
			<div class="content">
				<form  action="datainsert1.php" onsubmit="return validate()">
				<table align="center" cellpadding="10" width="80%" height="70%" bgcolor="" cellspacing="2">
					<caption id="cap1"><h2><u>Repeat/Reregistration Form</u></h2></caption>
					<tr>
					<td><b>Name<b></td>
					<td><input type="text" name="na" id="na" size="30" placeholder="Inter your full name"></td>
					<td><label id="msg"></label></td>
					</tr>
					<tr>
					<td><b>ID</b></td>
					<td><input type="text" name="id" id="id" size="30" placeholder="Inter your Collage id"></td>
					</tr>
					<tr>
					<td><b>Email</b></td>
					<td><input type="email" name="em" id="em" size="30" placeholder="Inter your Collage email"></td>
					</tr>
					<tr>
					<td><b>Course</b></td>
					<td><select Name="cour" id="cour">
					<option>select Course</option>
					<option>MCA</option>
					<option>B.tech</option>
					<option>BCA</option>
					<option>B.sc</option>
					</select></td>
					</tr>
					<tr>
					<td><b>Semester</b></td>
					<td><select Name="seme" id="seme" onchange="slctsubj(this.selectedIndex)">
					<option>select semester</option>
					<option>1st sem</option>
					<option>2nd sem</option>
					<option>3rd sem</option>
					<option>4th sem</option>
					<option>5th sem</option>
					<option>6th sem</option>
					<option>7th sem</option>
					<option>8th sem</option>
					</select></td>
					</tr>
					<tr>
					<td><b>Subject</b></td>
					<td><select name="subj" id="subj">
					<option>Select subject</option>

					</select></td>
					</tr>
					
					<tr>
					<td><b>Teacher</b></td>
					<td><select name="tec" id="tec"><option >select Teacher</option>
					<option>Prof. (Dr.) W. Jeberson</option>
					<option>Er. Prateek Singh</option>
					<option>Dr. Sanjay Kumar Yadav</option>
					<option>Dr. (Mrs) Tulika</option>
					<option>Er. P. Stanley</option>
					<option>Dr. Hari Mohan Singh</option>
					<option>Dr. (Mrs) Klinsega Jeberson</option>
					<option>Er. Sanjay T. Singh</option>
					<option>Mr. R. Dileep Kumar</option>
					<option>Dr. Narendra Kumar Gupta</option>
					<option>Dr. Surya Prakash Mishra</option>
					<option>Mr. Indresh Bahadur Rajwade</option>
					<option>Er.(Mrs.) Archana Singh</option>
					<option>Er. Anchit Sajal Dhar</option>
					<option>Dr. Arun Kumar Shukla</option>
					<option>Er. Gaurav Pandey</option>
					<option>Er. Rishabh Chaudhary</option>
					<option>Er. Mohit Paul</option>
					<option>Er. Abdul Rub</option>
					<option>Er. Vineesh Cutting</option>
					<option>Er. Nehemiah N. Stephen</option>
					<option>Mrs. Mudita Srivastava</option>
					<option>Er. Binnu Paul</option>
					<option>Dr. Shashi Prabha</option>
					<option>Mrs. Tahera Mahmood</option>
					<option>Er.jata Shankar Mishra</option>
					</select></td>
					</tr>
					<tr>
					<td><b>Exam Type</b></td>
					<td><select name="et" id="et">
					<option>select Type</option>
					<option>Repeat</option>
					<option>Reregistration</option>
                    </select></td>
					</tr>
					<tr>
					<td>
					<tr>
					<td colspan="2" align="center"><input type="submit" value="Submit Form" >
					<input type="reset" name="rest">
					</td>
</tr>
				</table>
				</form>
			</div>
	</div>
  </div>
  </form>
   <hr>
 </div>
 </div>
 <!-- /.panel -->
 <p class="text-muted text-center"><small>Student Result Management System</small></p>
 </div>
                    <!-- /.col-md-6 col-md-offset-3 -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /. -->

        </div>
        <!-- /.main-wrapper -->

        <!-- ========== COMMON JS FILES ========== -->
        <script src="js/jquery/jquery-2.2.4.min.js"></script>
        <script src="js/jquery-ui/jquery-ui.min.js"></script>
        <script src="js/bootstrap/bootstrap.min.js"></script>
        <script src="js/pace/pace.min.js"></script>
        <script src="js/lobipanel/lobipanel.min.js"></script>
        <script src="js/iscroll/iscroll.js"></script>

        <!-- ========== PAGE JS FILES ========== -->
        <script src="js/icheck/icheck.min.js"></script>

        <!-- ========== THEME JS ========== -->
        <script src="js/main.js"></script>
        <script>
            $(function(){
                $('input.flat-blue-style').iCheck({
                    checkboxClass: 'icheckbox_flat-blue'
                });
            });
			var asub=[[],["Fundamentals of Computes & Emerging Technologies","Programming & Problem Solving with 'C","Computer Organization & Architecture","Computer Organization & Architecture","Web Technologies","Discrete mathmatics","Essentials of Management"],
			["Operating System","Database Management Systems","Computer Networks","Data Structures","Object oriented Programming","Theory Of Automata and Formal Languages"],
			["Software Engineering","Design and Analysis of Algorithms","Data Warehouse and Data Mining","Artificial Intelligence","Java Programming","Python Programming","Mini Project","Cyber Security"],
			["Cloud Computing Technologies","Distributed System","Machine Learning","Major Project"]];
		function slctsub(index)
		{
				//alert(index);
				if(index>0)
				{
					var slcdst=asub[index];
					//alert(slcdst);
					var subject = document.getElementById("sub");
					document.getElementById("sub").innerHTML="";
					var op = document.createElement("option");
					op.text="Select Subject";
					subject.append(op);
					for(var c= 0;c<slcdst.length;c++)
					{
						var op = document.createElement("option");
						op.text=slcdst[c];
						subject.append(op);
					}
				}
		}
		var bsub=[[],["Fundamentals of Computes & Emerging Technologies","Programming & Problem Solving with 'C","Computer Organization & Architecture","Computer Organization & Architecture","Web Technologies","Discrete mathmatics","Essentials of Management"],
			["Operating System","Database Management Systems","Computer Networks","Data Structures","Object oriented Programming","Theory Of Automata and Formal Languages"],
			["Software Engineering","Design and Analysis of Algorithms","Data Warehouse and Data Mining","Artificial Intelligence","Java Programming","Python Programming","Mini Project","Cyber Security"],
			["Cloud Computing Technologies","Distributed System","Machine Learning","Major Project"]];
		function slctsubj(index)
		{
				//alert(index);
				if(index>0)
				{
					var slcdst=bsub[index];
					//alert(slcdst);
					var subject = document.getElementById("subj");
					document.getElementById("subj").innerHTML="";
					var op = document.createElement("option");
					op.text="Select Subject";
					subject.append(op);
					for(var c= 0;c<slcdst.length;c++)
					{
						var op = document.createElement("option");
						op.text=slcdst[c];
						subject.append(op);
					}
				}
		}
        </script>

        <!-- ========== ADD custom.js FILE BELOW WITH YOUR CHANGES ========== -->
    </body>
</html>

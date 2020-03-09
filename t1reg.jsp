<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>CTAC</title>
    <script type="text/javascript">
              function validate()
            {
                  var b = document.myForm.email.value;
                  if(b.indexOf('@',0)<0){
                    alert("email id must contain @");
                    document.myForm.email.focus();
                    return false;
                }
                if(b.indexOf('.',0)<0)
                {
                    alert("email id must contain .");
                    document.myForm.email.focus();
                    return false;
                }
                if (isGmailAddress(b)) {
                     alert("enter valid  email address ");
  
                                  document.myForm.email.focus();
                                  return false;
                }else {
				
                return true;
            }
            
        </script>

    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

    <!-- Plugin CSS -->
    <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="css/creative.min.css" rel="stylesheet">



</head>

<body id="page-top">

    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">CTAC</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    
                    <li>
                        <a class="page-scroll" href="t1log.jsp">Back</a>
                    </li>
                </ul>
            </div>
            
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <header>
       <div class="header-content">
            <div class="header-content-inner">
			<form  name="myForm" action="t1reg1.jsp" method="post"  onsubmit="return validate()">
                                        <center>
                <h1 id="homeHeading">Tenant1 Register</h1>
              
                <table>
				<div><tr><td><label style="margin-right: 10px;margin-top: 10px;margin-left: 10px;margin-bottom: 10px;"><h3>Name:</h3></label></td>
				<td><input type="text"  name="name"   pattern="[a-zA-Z0-9]+"  required maxlength="10"  placeholder="enter user name"  style="margin-right: 10px;margin-top: 25px;margin-left: 10px;margin-bottom: 10px;color: #31708f;"></td></tr></div>
				<div><tr><td><label style="margin-right: 10px;margin-top: 10px;margin-left: 10px;margin-bottom: 10px;"><h3>Password:</h3></label></td>
				<td><input type="password"  name="pass" pattern="[a-zA-Z0-9]+" maxlength="10" required placeholder="enter password " style="margin-right: 10px;margin-top: 25px;margin-left: 10px;margin-bottom: 10px;color: #31708f;"></td></tr></div>
				<div><tr><td><label style="margin-right: 10px;margin-top: 10px;margin-left: 10px;margin-bottom: 10px;"><h3>Email:</h3></label></td>
				<td><input type="email" required name="email"   placeholder="enter email id "  maxlength="60" style="margin-right: 10px;margin-top: 25px;margin-left: 10px;margin-bottom: 10px;color: #31708f;"></td></tr></div>
				<div><tr><td><label style="margin-right: 10px;margin-top: 10px;margin-left: 10px;margin-bottom: 10px;"><h3>Gender:</h3></label></td>
				<td><input type="radio" name="gender" value="Male" style="margin-right: 10px;margin-top: 25px;margin-left: 10px;margin-bottom: 10px;">Male
				<input type="radio" name="gender" value="Female" style="margin-right: 10px;margin-top: 25px;margin-left: 10px;margin-bottom: 10px;">Female</td></tr></div>
				<div><tr><td><label style="margin-right: 10px;margin-top: 10px;margin-left: 10px;margin-bottom: 10px;"><h3>DOB:</h3></label></td>
				<td><input type="date" required name="dob"  min="2018-01-01" max="2040-12-31"  style="margin-right: 10px;margin-top: 25px;margin-left: 10px;margin-bottom: 10px;color: #31708f;"></td></tr></div>
			
                                <div><tr><td><label  style="margin-right: 10px;margin-top: 10px;margin-left: 10px;margin-bottom: 10px;"><h3>Country:</h3></label></td>
   <td><select name="country" style="margin-right: 10px;margin-top: 25px;margin-left: 10px;margin-bottom: 10px;color: #31708f;">

  <option value="-1" selected>select your country..</option>

  <option value="india">INDIA</option>

 </select> </td></tr></div></table>
<input type="submit" value="Register" class="btn btn-primary btn-xl page-scroll" style="margin-right: 10px;margin-top: 25px">
</center></form>
            </div>
        </div>
    </header>


    <!-- jQuery -->
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="vendor/scrollreveal/scrollreveal.min.js"></script>
    <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

    <!-- Theme JavaScript -->
    <script src="js/creative.min.js"></script>

</body>

</html>

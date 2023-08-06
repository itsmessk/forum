<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ADmin Forum List Navigation Bar</title>
<link rel="stylesheet" href="css/header_navigationbar.css" />
<link rel="stylesheet" href="css/forum_list.css" />

<body>

<table class="table">
<tr>
<td>
<ul class="ul1">
	
  	<li class="li1 active"><a href="forum_list.php"><span class="span1">E-Forum</span></a></li>
    <div class="dropdown-content">
    		<a href="add_forum_post.php">Add New Forum Post</a>
            <a href="delete_forum_post.php">Delete Forum Post</a>
   		</div>
    </div>
	<div class="dropdown">
  	
	<span class="span2"><?php
	echo "Welcome"." Admin  ".$username1;
	?></span>
    <li class="li2"><a href="logout.php"><span class="span1">Logout</span></a></li>
</ul>
</td>
</tr>
</table>



</body>
</html>
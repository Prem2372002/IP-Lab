<?php
 $servername="127.0.0.1";
 $username="root";
 $password="";
 $db="expt11";
 $conn= new mysqli($servername,$username,$password,$db);
 if($conn->connect_error){
 die("connetion failed".$conn->connect_error);}
else{
echo "connected";}


$sql="create table users(username varchar(20),password varchar(50))";
if($conn->query($sql)===true)
{
 echo "table created";
}
else
{
 echo"not created";
}


?>

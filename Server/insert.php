<?php
  $servername = "localhost"; //always as local host
 $username = "id20560043_aahaardb" ; //database username in form id13982090_
 $password = "id20560043_aahaar_123" ; //db password
 $dbname = "Abinashmahapatra@123" ;//db name

 //create a connection

 $conn=mysqli_connect($servername,$username,$password,$dbname);

 if($conn)
 {
    //echo "connection established" ;
 }

 else
 {
  die("connection failed because of: ".mysqli_connect_error());
 }

  $light = $_GET['light'];
  if( $light != "")
  {
  $query = "INSERT INTO bin (light) VALUES ('$light')";
  $data=mysqli_query($conn,$query);
  if($data)
  {
  echo ( "\r\ndata inserted") ;
  }
  else
  {
  echo "\r\ninserting failed" ;
 
  }
  }
  else
  {
      echo "empty";
  }
?>


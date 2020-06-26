<?php 
 
$host="localhost";
$user="root";
$password="";
$db="web";
 
$conn = mysqli_connect('localhost','root','');
mysqli_select_db($conn,'web');

if(isset($_POST['username'])){
    
    $uname=$_POST['username'];
    $password=$_POST['password'];
    
    $sql="select * from user where username='".$uname."'AND password1='".$password."' limit 1";
    
    $result=mysqli_query($conn,$sql);
    
    if(mysqli_num_rows($result)==1){
        echo " You Have Successfully Logged in";
        header("Location: signup.html");
        exit();
        
        
    
    }
    else{
        echo " You Have Entered Incorrect Password";
        exit();
    }
        
}
?>
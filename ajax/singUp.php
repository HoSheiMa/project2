<?php


$c = mysqli_connect('127.0.0.1', 'root', '', 'db_side');
$info = $_POST['data'];
$user = $info[0];
$pass = $info[1];
$name = $info[2];
$id = rand(0, 999999);
$q1 = "SELECT `username`FROM `users` WHERE 1";
$r1 = mysqli_query($c, $q1);
$exist = false;
while ($x = mysqli_fetch_array($r1))      {
    if ($x[0] == $user) {
        $exist = true;
        echo "Not work Change username";
    }
}
if ($exist == false) {

    $q = "INSERT INTO `users`(`name`, `username`, `password`, `id`) VALUES ('$name','$user','$pass',$id)";

    $r = mysqli_query($c, $q);
    if ($r) {
        $_SESSION['who'] = [$name, $id];
        $_SESSION['log'] = true;
        echo "Good Work!";
    }
}
?>
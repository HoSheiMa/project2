<?php
session_start();

$c = mysqli_connect('127.0.0.1', 'root', '', 'db_side');
if ($_SESSION['log'] == true) {
    $id = $_POST['id'];
    if ($_POST['name'] ==true) {
        $q = "SELECT `name` FROM `users` WHERE `id`=${id}";
        $r = mysqli_fetch_array(mysqli_query($c, $q))[0];
        echo $r;
    }
}
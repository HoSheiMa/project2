

<?php

session_start();

$c = mysqli_connect('127.0.0.1', 'root', '', 'db_side');


if ($_SESSION['log'] == true) {
    $t = $_POST['title'];
    $b = $_POST['body'];
    $id = $_SESSION["who"][1];
    $name = $_SESSION["who"][0];
    $q = "SELECT `id` FROM `last_post` WHERE 1";
    $id_post = mysqli_fetch_array(mysqli_query($c, $q))[0];
    $id_new_post = +$id_post + 1;
    $today = date("F j, Y, g:i a");
    $q = "UPDATE `last_post` SET `id`='${id_new_post}' WHERE 1";
    $r = mysqli_query($c, $q);
    $q = "INSERT INTO `posts`(`id`, `id_post`, `story_title`, `story_txt`, `likes`, `name`, `date`) 
        VALUES ('${id}','${id_post}','${t}','${b}','[]','${name}','${today}')";
    $r = mysqli_query($c, $q);
    if ($r) {
        echo "<script>window.location.assign('./')</script>";
    } else {
        echo "<script>M.toast({html: 'Some thing wrong try again !!'});</script>";
    }
}
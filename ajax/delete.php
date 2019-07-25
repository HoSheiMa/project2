
<?php

session_start();
$c = mysqli_connect('127.0.0.1', 'root', '', 'db_side');
$id_post = $_POST['id_post'];


if ($_SESSION['log'] == true) {
    $q = "SELECT `id`FROM `posts` WHERE `id_post`=${id_post}";
    $r = mysqli_fetch_array(mysqli_query($c, $q))[0];

    if ($r == $_SESSION['who'][1]) {
        $q2 = "DELETE FROM `posts` WHERE `id_post`=${id_post}";
        $r2 = mysqli_query($c, $q2);
        if ($r2) {
            echo "good Work";
        }
    }
}
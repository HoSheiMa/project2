<?php
session_start();
$c = mysqli_connect('127.0.0.1', 'root', '', 'db_side');
$req = $_POST['req'];

$arr = [];
if ($_SESSION['log'] == true) {
    if ($req == "get") {

        if (!isset($_POST['id_focus'])) {
            // last_id_post
            $q1 = "SELECT * FROM `last_post` WHERE 1";
            $r = mysqli_fetch_array(mysqli_query($c, $q1))[0];
            if ($r) {
                $_SESSION['last_id_post'] = $r;
            }
            $q2 = "SELECT * FROM `posts` WHERE `id_post`<" . $_SESSION['last_id_post'] . " ORDER BY `autokey` DESC LIMIT 8";
            $r2 = mysqli_query($c, $q2);

            while ($r3 = mysqli_fetch_array($r2)) {
                array_push($arr, $r3);
                $_SESSION['last_id_post']--;

            }

            echo json_encode($arr);
            $arr = [];
        } else {
// last_id_post
            $id_focus = $_SESSION['who'][1];
        $q1 = "SELECT * FROM `posts` WHERE `id`=${id_focus}";
            $r2 = mysqli_query($c, $q1);

            while ($r3 = mysqli_fetch_array($r2)) {
                array_push($arr, $r3);

            }
            echo json_encode($arr);
            $arr = [];
        }
        





    } else {
        $q2 = "SELECT * FROM `posts` WHERE `id_post`<" . $_SESSION['last_id_post'] . " ORDER BY `autokey` DESC LIMIT 8";
        $r2 = mysqli_query($c, $q2);

        while ($r3 = mysqli_fetch_array($r2)) {
            array_push($arr, $r3);
            $_SESSION['last_id_post']--;

        }

        echo json_encode($arr);
        $arr = [];
    }
}
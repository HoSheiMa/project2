<?php


    session_start();

    $c = mysqli_connect('127.0.0.1', 'root', '', 'db_side');

    if ($_SESSION['log'] == true) {



        $p = $_POST['id'];
        $t = $_POST['title'];
        $b = $_POST['body'];


        $q = "SELECT * FROM `posts` WHERE `id_post`=${p}";

        $r = mysqli_fetch_array(mysqli_query($c, $q));

        if ($r) {

            if ($r[0] == $_SESSION['who'][1]) {

            $q = "UPDATE `posts` SET `story_title`='${t}',`story_txt`='${b}' WHERE `id_post`=${p}";
                $r = mysqli_query($c, $q);
                if ($r ) {
                    echo "<script>window.location.assign('./')</script>";
                }
            } else {
                echo "no";
            }

        }

    }
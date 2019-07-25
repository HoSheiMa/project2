
<?php 
session_start();
function like_fun() {
    $c = mysqli_connect('127.0.0.1', 'root', '', 'db_side');

    if ($_SESSION['log'] == true) {
        $id_post = $_POST['id'];
        $own_id = $_SESSION['who'][1];

        $q = "SELECT `likes` FROM `posts` WHERE `id_post`=${id_post}";
        $r = mysqli_fetch_array(mysqli_query($c, $q))[0];
        $r = (array)json_decode($r);

        for ($i = 0; $i < sizeof($r); $i++) {
            if ($r[$i] == $_SESSION['who'][1]) {
                unset($r[$i]);
                $r = json_encode($r);
                $q2 = "UPDATE `posts` SET `likes`='${r}' WHERE `id_post`=${id_post}";
                $r2 = mysqli_query($c, $q2);
                return false;
            }
        }

        array_push($r, $_SESSION['who'][1]);
        $r = json_encode($r);
        $q2 = "UPDATE `posts` SET `likes`='${r}' WHERE `id_post`=${id_post}";
        $r2 = mysqli_query($c, $q2);
        if ($r2) return;



    }
}
like_fun();
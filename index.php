<?php
session_start();

$c = mysqli_connect('127.0.0.1','root','', 'db_side');
if (!$c) die("Error Log in");
if (!isset($_SESSION['log'])) {
    $_SESSION['log'] = false;
    $_SESSION['who'] = [];
}
?>
<?php
if (isset($_POST['ouT_'])) {
    $_SESSION['log'] = false;
    $_SESSION['who'] = [];
}
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Story</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="lib/dist/jquery-confirm.min.css">
    <link rel="stylesheet" href="lib/materialize.min.css">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <link rel="stylesheet" href="./style/ico.css">
</head>
<body>
    <?php
    if ($_SESSION['log'] == true) {
        ?>
        <script>window.id___ = <?php  echo $_SESSION['who'][1];
                                /** / for get some id*/ ?> </script>
        <nav>
            <div class="nav-wrapper cyan">
                      <a href="#" class="brand-logo center">Story</a>

                <ul class="right">
                    
        <form action="" method="post">
            
                <li>
                    <a href="profile.php?id=<?php echo $_SESSION['who'][1];?>"><i class="material-icons">
                person_pin
                </i></a> 
                </li>
                <li>
                    <a><button class="btn waves-effect" name="ouT_" type="submit">Log out</button></a> 
                </li>
                </form>
                    
                </ul>
            </div>
        </nav>
        
            <div class="fly-o">
                        <button onclick="window.location.assign('post_story.php?q=0')" class="btn-floating btn-large waves-effect waves-light cyan"><i class="material-icons">add</i></button>
                    </div>

            <div class="container post_contant">
                
            </div>
        
<?php

    } else {
        ?>
        
        <div class="row bg bs">
            <div class="col col_login s12 m12 l6 x6">

                <div class="container">
                    <h3 class="blue-text a-font"><span class="grey-text">Web</span> Story</h3>
                </div>
                
                    <form class="mg" action='' method='POST'>
                    <div class="container">
                        
                    <span class="blue-text">Username</span><br>
                    <input class="black-text" type="text" name="username"> <br>
                    <span class="blue-text">Password</span><br>
                    <input class="black-text" type="password" name="password"><br><br>
                    <button type="submit" name="log_in" class="btn waves-effect">Log In</button>
                    <button type="submit" onclick="return false" class="btn-flat waves-effect Sing_Up">Sing Up</button>
                    <?php
                    
                        if (isset($_POST['log_in'])) {
                            $user = $_POST['username'];
                            $pass = $_POST['password'];

                            if ($user && $pass) {
                                if (!($user== "" && $pass == "")) {
                                    $q = "SELECT * FROM `users` WHERE `username`='${user}' AND `password`='${pass}'";
                                    $r = mysqli_query($c, $q);
                                    $r = mysqli_fetch_array($r);
                                    if ( $r == Null) {
                                        echo "<br><br><span class='red-text'>Uncorrect UserName Or Password!</span>
                                        <script>window.onload = () =>M.toast({html: 'Uncorrect UserName Or Password!!'})</script>";
                                    } else {
                                        $name = $r['name'];
                                        $id = $r['id'];
                                        $_SESSION['log'] = true;
                                        $_SESSION['who'] = [$name, $id];
                                        echo "<script>window.onload = () =>window.location.reload()</script>"; 
                                            
                                        
                                    }
                                    

                                }
                            }
                        }   
                    ?>
                    </div>
                </form>
            </div>
            <div class="col s12 m12 l6 x6"></div>
        </div>
        <?php
    }
    ?>

    <script src="lib/jquery.min.js"></script>
    <?php
    if($_SESSION['log'] == true) echo '<script src="script_posts.js"></script>'
    ?>
    <script src="lib/dist/jquery-confirm.min.js"></script>
        <script src="main.js"></script>

    <script src="lib/materialize.min.js"></script>
</body>
</html>
<?php


session_start();

$c = mysqli_connect('127.0.0.1', 'root', '', 'db_side');

?>

<?php
if ($_SESSION['log'] != true ) echo "<script>window.location.assign('./')</script>";
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
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    
    <link rel="stylesheet" href="lib/dist/jquery-confirm.min.css">
    <link rel="stylesheet" href="lib/materialize.min.css">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <link rel="stylesheet" href="./style/ico.css">
</head>
<body>
 <nav>
            <div class="nav-wrapper cyan">
                      <a href="#" class="brand-logo center"><?php echo $_SESSION['who'][0]; ?></a>

                <ul class="right">
                    
        <form action="" method="post">
             <li>
                    <a href="./">Home</a> 
                </li>
                <li>
                    <a><button class="btn waves-effect" name="ouT_" type="submit">Log out</button></a> 
                </li>
                </form>
                    
                </ul>
            </div>
        </nav>

        <div class='row center'><h3>profile storys</h3></div>
<div class="container post_contant">
                
            </div>
        <script>window.id___ = parseInt((window.location.href).split('=')[1]);
</script>

<script src="lib/jquery.min.js"></script>


<script src='lib/dist/jquery-confirm.min.js'></script>
<script src="lib/materialize.min.js"></script>
<script src="script_posts2.js"></script>

    
</body>
</html>
<?php


session_start();

$c = mysqli_connect('127.0.0.1', 'root', '', 'db_side');

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
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link rel="stylesheet" href="lib/materialize.min.css">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <link rel="stylesheet" href="style/ico.css">
    <script src="include.js"></script>


</head>
<body>


<?php

    if ($_SESSION['log'] == true){
        if ($_GET['q'] == 0){
        ?>
        
        <script type='text/javascript'> $Spelling.SpellCheckAsYouType('myTextArea')</script>
            	<script type='text/javascript'> $Spelling.SpellCheckAsYouType('myTextArea2')</script>
        <nav>
            <div class="nav-wrapper cyan">
                      <a href="#" class="brand-logo center">Story</a>

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
    <div class="container mg2 h">
	<textarea name="myTextArea"  id="myTextArea2" cols="50" rows="20"></textarea>

	<textarea name="myTextArea"  id="myTextArea" cols="50" rows="20"></textarea>
</div>
            <div class="container mg2 ">
    
              
                   <div class='col right share_btn_col'>
                            <button class="btn waves-effect share_btn" >
                               
                            <i class="material-icons">share</i> </button>
                        
        </div>
            </div>
    
        <script src="lib/jquery.min.js"></script>
        <script src="main2.js"></script>
        <script src="lib/materialize.min.js"></script>
        <?php
    } 
    
    
     // edit post
    else {

        ?>
        
        <nav>
            <div class="nav-wrapper cyan">
                      <a href="#" class="brand-logo center">Story</a>

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
    <div class="container mg2 h">
	<textarea name="myTextArea"  id="myTextArea2" cols="50" rows="20"></textarea>

	<textarea name="myTextArea"  id="myTextArea" cols="50" rows="20"></textarea>
</div>
            <div class="container mg2 ">
    
              
                   <div class='col right share_btn_col'>
                            <button class="btn waves-effect edit_btn" >
                               
                            <i class="material-icons">edit</i> </button>
                        
        </div>
            </div>
    
        <script src="lib/jquery.min.js"></script>
        <script src="main3.js"></script>
        <script src="lib/materialize.min.js"></script>
        
        <?php
        $id_post = $_GET['q'];
        echo "<script>window.post_id_focus = ${id_post} </script>";
    }
} else {
        echo "<script>window.location.assign('./')</script>";
    }
?>

<script src=jquery.nicescroll.min.js></script>

<script>
function resizescroll() {
    $("#myTextArea___livespell_proxy").niceScroll().resize();
    setTimeout(() => {
        resizescroll()
    }, 300);
}
resizescroll()
</script>
</body>
</html>
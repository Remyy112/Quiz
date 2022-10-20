<!DOCKTYPE html>
<head>
    <meta charset="UTF-8">
        <title>zadanie</title>
</head>
<body>
    <?php
        print_r($_POST);
        $count;
        if(isset ($_POST["c"])){
            $count=$_POST["c"];
            $count++;
        }
        else {
            $count=0;
        }
    ?>
    <form method="POST">
        <input name="imie">
        <input name="nazwisko">
        <input type="submit">
        <input type="hidden" name="c" value="<?php echo $count; ?>">
    </form>
</body>
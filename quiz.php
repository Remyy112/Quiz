<!DOCKTYPE html>
<head>
    <meta charset="UTF-8">
        <title>Quiz</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="header">
        Quiz
    </div>
    <div class="body1">
        <?php
            $con = new mysqli("127.0.0.1", "root", "", "quiz");
            $res = $con->query("SELECT question FROM questions WHERE id=6");
            $rows = $res->fetch_all(MYSQLI_ASSOC);
                for($i=0; $i<count($rows); $i++){
                    echo $rows[$i]["question"]."<br>";
                }
        ?>
    </div>
    <div class="body2">
        <?php
            $con = new mysqli("127.0.0.1", "root", "", "quiz");
            $res = $con->query("SELECT answers FROM `answers` WHERE id=11 OR id=12 OR id=13 OR id=14;");
            $rows = $res->fetch_all(MYSQLI_ASSOC);
                for($i=0; $i<count($rows); $i++){
                    echo "<button>".$rows[$i]["answers"]."</button>";
                }
        ?>
    </div>
</body>
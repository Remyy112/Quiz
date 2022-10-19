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
            $res = $con->query("SELECT COUNT(`id`) FROM `questions` WHERE 1;");
            $max = $res->fetch_array()[0];
            $numerPytania = rand(1, $max);
            $res = $con->query("SELECT question FROM questions WHERE id=".$numerPytania.";");
            $rows = $res->fetch_all(MYSQLI_ASSOC);
                for($i=0; $i<count($rows); $i++){
                    echo $rows[$i]["question"]."<br>";
                }
        ?>
    </div>
    <div class="body2">
        <?php
            $con = new mysqli("127.0.0.1", "root", "", "quiz");
            $res = $con->query("SELECT `answers` FROM `answers` JOIN questions_has_answers ON questions_has_answers.answers_id = id WHERE questions_has_answers.questions_id = ".$numerPytania.";");
            $rows = $res->fetch_all(MYSQLI_ASSOC);
                for($i=0; $i<count($rows); $i++){
                    echo "<button>".$rows[$i]["answers"]."</button><br>";
                }
        
            <form method = "POST">
                <input type="hidden" name="question" value="'.$id."/>
                <input type="checkbox" name=""/>
                <input type="sumbit"/
            </form>

        ?>
    </div>
</body>

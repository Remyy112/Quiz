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
            $res = $con->query("SELECT `id`, `answers` FROM `answers` JOIN questions_has_answers ON questions_has_answers.answers_id = id WHERE questions_has_answers.questions_id = ".$numerPytania.";");
                echo '<form method = "POST">';
                echo '<input type="hidden" name="Pytanie" value="'.$numerPytania.'"/>';
            $rows = $res->fetch_all(MYSQLI_ASSOC);
                for($i=0; $i<count($rows); $i++){
                    echo '<label><input type="checkbox" name="Odpowiedz[]" value="'.$rows[$i]["id"].'"/>'.$rows[$i]["answers"].'</label>'."<br>";
                }
                echo '<input type="submit"/>'."<br>";
            print_r($_POST["Odpowiedz"]);
        
            for($i=0; $i<count($_POST["Odpowiedz"]); $i++){
                    $res = $con->query("SELECT `correct` FROM `questions_has_answers` WHERE `answers_id`= ".$_POST["Odpowiedz"][$i].";");
                    $rows = $res->fetch_all(MYSQLI_ASSOC);
                    for($l=0; $l<count($rows); $l++){
                        echo $rows[$l]["correct"]."<br>";
            }
            }
            
        ?>
    </div>
</body>
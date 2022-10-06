<!DOCKTYPE html>
<head>
    <meta charset="UTF-8">
        <title>Quiz</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    
    <?php
        $con = new mysqli("127.0.0.1", "root", "", "quiz");
        $res = $con->query("SELECT id FROM questions");
    ?>
    
    <div class="header">
        Quiz
    </div>
</body>
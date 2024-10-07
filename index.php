<?php
// index.php
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to PHP Quiz App</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: #f8f9fa;
        }

        .welcome-container {
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .card {
            width: 100%;
            max-width: 500px;
            padding: 20px;
            border: none;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            background: #ffffff;
        }

        .btn-primary {
            width: 100%;
        }
    </style>
</head>

<body>
    <div class="container welcome-container">
        <div class="card">
            <h2 class="text-center mb-4">Welcome to the PHP Quiz App!</h2>
            <form action="quiz.php" method="GET">
                <div class="mb-3">
                    <label for="num_questions" class="form-label">Select Number of Questions:</label>
                    <select class="form-select" id="num_questions" name="num_questions" required>
                        <option value="" selected disabled>Choose...</option>
                        <option value="5">5 Questions</option>
                        <option value="10">10 Questions</option>
                        <option value="15">15 Questions</option>
                        <option value="20">20 Questions</option>
                        <option value="25">25 Questions</option>
                        <option value="30">30 Questions</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Start Quiz</button>
            </form>
            <hr>
            <div class="text-center">
                <a href="add_question.php" class="btn btn-secondary">Admin: Add Questions</a>
            </div>
        </div>
    </div>
</body>

</html>
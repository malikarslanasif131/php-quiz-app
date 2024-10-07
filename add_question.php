<?php
// Connect to the database
$conn = new mysqli('localhost', 'root', '', 'php_quiz_app');

$alert = '';

// Count the total number of questions
$result = $conn->query("SELECT COUNT(*) AS total_questions FROM questions");
$row = $result->fetch_assoc();
$total_questions = $row['total_questions'];

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $question = $_POST['question'];
    $option1 = $_POST['option1'];
    $option2 = $_POST['option2'];
    $option3 = $_POST['option3'];
    $option4 = $_POST['option4'];
    $correct = $_POST['correct'];

    // Insert question into the database
    $sql = "INSERT INTO questions (question_text, option1, option2, option3, option4, correct_option) 
            VALUES ('$question', '$option1', '$option2', '$option3', '$option4', $correct)";

    if ($conn->query($sql) === TRUE) {
        // Update question count after adding the new question
        $result = $conn->query("SELECT COUNT(*) AS total_questions FROM questions");
        $row = $result->fetch_assoc();
        $total_questions = $row['total_questions'];

        $alert = '<div class="alert alert-success alert-dismissible fade show" role="alert">
                    New question added successfully!
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                  </div>';
    } else {
        $alert = '<div class="alert alert-danger alert-dismissible fade show" role="alert">
                    Error: ' . $sql . '<br>' . $conn->error . '
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                  </div>';
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Question</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: #f1f3f5;
        }

        .add-question-container {
            padding-top: 50px;
            padding-bottom: 50px;
        }

        .card {
            max-width: 700px;
            margin: auto;
            padding: 20px;
            border: none;
            border-radius: 10px;
            background: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>

<body>
    <div class="container add-question-container">
        <div class="card">
            <span class="badge bg-primary w-25 ms-auto"><?php echo $total_questions; ?> Total Questions</span>
            <h2 class="mb-4">Add a New Question
            </h2>

            <!-- Display alert if a message exists -->
            <?php echo $alert; ?>

            <form method=" POST" action="add_question.php">
                <div class="mb-3">
                    <label for="question" class="form-label">Question</label>
                    <textarea class="form-control" id="question" name="question" rows="3" required></textarea>
                </div>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="option1" class="form-label">Option 1</label>
                        <input type="text" class="form-control" id="option1" name="option1" required>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="option2" class="form-label">Option 2</label>
                        <input type="text" class="form-control" id="option2" name="option2" required>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="option3" class="form-label">Option 3</label>
                        <input type="text" class="form-control" id="option3" name="option3" required>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="option4" class="form-label">Option 4</label>
                        <input type="text" class="form-control" id="option4" name="option4" required>
                    </div>
                </div>
                <div class="mb-3">
                    <label for="correct" class="form-label">Correct Option</label>
                    <select class="form-select" id="correct" name="correct" required>
                        <option value="" selected disabled>Select correct option</option>
                        <option value="1">Option 1</option>
                        <option value="2">Option 2</option>
                        <option value="3">Option 3</option>
                        <option value="4">Option 4</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Add Question</button>
                <a href="index.php" class="btn btn-secondary">Back to Home</a>
            </form>
        </div>
    </div>

    <script src="js/bootstrap.min.js"></script>
</body>

</html>
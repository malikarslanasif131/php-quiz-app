<?php
// quiz.php

// Connect to the database
$conn = new mysqli('localhost', 'root', '', 'php_quiz_app');

if (isset($_GET['num_questions'])) {
    $num_questions = intval($_GET['num_questions']);
    if ($num_questions <= 0) {
        $num_questions = 10; // Default value
    }
} else {
    $num_questions = 10; // Default value
}

// Fetch random questions based on the selected number
$stmt = $conn->prepare("SELECT * FROM questions ORDER BY RAND() LIMIT ?");
$stmt->bind_param("i", $num_questions);
$stmt->execute();
$result = $stmt->get_result();
$questions = $result->fetch_all(MYSQLI_ASSOC);
$stmt->close();

$total_questions = count($questions);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PHP Quiz</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: #e9ecef;
        }

        .quiz-container {
            padding-top: 50px;
            padding-bottom: 50px;
        }

        .card {
            max-width: 900px;
            margin: auto;
            padding: 30px;
            border: none;
            border-radius: 10px;
            background: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .question-number {
            font-weight: bold;
        }
    </style>
</head>

<body>
    <div class="container quiz-container">
        <div class="card">
            <h2 class="mb-4">PHP Quiz</h2>
            <p class="mb-4">You have selected <strong><?php echo $total_questions; ?></strong> questions.</p>
            <form id="quizForm">
                <input type="hidden" name="num_questions" value="<?php echo $total_questions; ?>">
                <?php foreach ($questions as $index => $question): ?>
                    <div class="card my-3">
                        <input type="hidden" name="question_ids[]" value="<?php echo $question['id']; ?>">
                        <div class="">
                            <p class="question-number fw-light " style="text-decoration-line: underline;">Question
                                <?php echo ($index + 1); ?> of
                                <?php echo $total_questions; ?>:
                            </p>
                            <h5><?php echo htmlspecialchars($question['question_text']); ?></h5>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="question<?php echo $question['id']; ?>"
                                    id="q<?php echo $question['id']; ?>a1" value="1" required>
                                <label class="form-check-label" for="q<?php echo $question['id']; ?>a1">
                                    <?php echo htmlspecialchars($question['option1']); ?>
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="question<?php echo $question['id']; ?>"
                                    id="q<?php echo $question['id']; ?>a2" value="2" required>
                                <label class="form-check-label" for="q<?php echo $question['id']; ?>a2">
                                    <?php echo htmlspecialchars($question['option2']); ?>
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="question<?php echo $question['id']; ?>"
                                    id="q<?php echo $question['id']; ?>a3" value="3" required>
                                <label class="form-check-label" for="q<?php echo $question['id']; ?>a3">
                                    <?php echo htmlspecialchars($question['option3']); ?>
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="question<?php echo $question['id']; ?>"
                                    id="q<?php echo $question['id']; ?>a4" value="4" required>
                                <label class="form-check-label" for="q<?php echo $question['id']; ?>a4">
                                    <?php echo htmlspecialchars($question['option4']); ?>
                                </label>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
                <button type="submit" class="btn btn-primary">Submit Quiz</button>
                <a href="index.php" class="btn btn-secondary">Back to Home</a>
            </form>

        </div>
    </div>
    <!-- Result Modal -->
    <div class="modal fade" id="resultModal" tabindex="-1" aria-labelledby="resultModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="resultModalLabel">Quiz Results</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body" id="resultContent">
                    <!-- Result will be displayed here -->
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <a href="index.php" class="btn btn-primary">Take Another Quiz</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and jQuery -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#quizForm').on('submit', function (e) {
                e.preventDefault();
                $.ajax({
                    type: 'POST',
                    url: 'result.php',
                    data: $(this).serialize(),
                    success: function (response) {
                        $('#resultContent').html(response);
                        var resultModal = new bootstrap.Modal(document.getElementById('resultModal'));
                        resultModal.show();
                    },
                    error: function () {
                        alert('An error occurred while processing your quiz. Please try again.');
                    }
                });
            });
        });
    </script>
</body>

</html>
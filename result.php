<?php
// Connect to the database
$conn = new mysqli('localhost', 'root', '', 'php_quiz_app');

$score = 0;
$output = '';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Get the total number of questions the user selected (10, 15, or 25)
    $num_questions = intval($_POST['num_questions']);

    // Get the question IDs array from the form
    $question_ids = $_POST['question_ids'];

    // Loop through the question IDs and compare answers
    foreach ($question_ids as $index => $q_id) {
        // Fetch the question from the database using its ID
        $stmt = $conn->prepare("SELECT * FROM questions WHERE id = ?");
        $stmt->bind_param("i", $q_id);
        $stmt->execute();
        $question = $stmt->get_result()->fetch_assoc();
        $stmt->close();

        $correct_option = $question['correct_option'];
        $user_answer = isset($_POST["question$q_id"]) ? intval($_POST["question$q_id"]) : 0;

        // Check if the user's answer is correct
        if ($user_answer === $correct_option) {
            $output .= "<p>Question " . ($index + 1) . ": <span class='text-success'>You are right!</span></p>";
            $score++;
        } else {
            // Fetch the correct answer text
            $correct_text = htmlspecialchars($question['option' . $correct_option]);
            $output .= "<p>Question " . ($index + 1) . ": <span class='text-danger'>Wrong Answer!</span> Correct Answer: <strong>$correct_text</strong></p>";
        }
    }

    // Display the total score
    $output .= "<hr><h4>Your total score is: $score out of $num_questions</h4>";

    // Output the result
    echo $output;
}

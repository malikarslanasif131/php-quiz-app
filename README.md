# PHP Multiple-Choice Quiz Application

This is a simple multiple-choice quiz application developed with custom core PHP and Bootstrap. The application allows an admin to add questions, and users can take a quiz and see their results immediately after submission.

## Features

- Admin can add multiple-choice questions to the database.
- Users can take a quiz and get instant feedback on correct/incorrect answers.
- Score calculation at the end of the quiz.
- Questions are dynamically fetched from a MySQL database.
- Bootstrap-based responsive UI for easy navigation.

## Prerequisites

To set up and run this application locally, you need the following:

- **XAMPP** or **WAMP** server with PHP and MySQL support.
- A web browser (e.g., Chrome, Firefox).
- Basic understanding of PHP, MySQL, and HTML.

## Installation and Setup Guide

### Step 1: Clone the repository

You can clone the repository from GitHub or download the zip file and extract it to your desired location.

```bash
git clone https://github.com/malikarslanasif131/php-quiz-app.git
```

### Step 2: Move the project folder to your web server directory

If you are using **XAMPP**:

1. Move the project folder (`php-quiz-app`) to the `htdocs` folder inside your XAMPP installation directory.

   For example:

   ```bash
   C:\xampp\htdocs\php-quiz-app
   ```

If you are using **WAMP**:

1. Move the project folder to the `www` directory inside your WAMP installation folder.

   For example:

   ```bash
   C:\wamp\www\php-quiz-app
   ```

### Step 3: Start your server

- Open **XAMPP** or **WAMP** and start the **Apache** and **MySQL** services.

### Step 4: Create the database

1. Open your browser and go to `http://localhost/phpmyadmin`.
2. Create a new database called `php_quiz_app`.
3. Import the `php_quiz_app.sql` file from the `database` folder into your newly created database.

   - To do this:
     - Click on the **Import** tab in phpMyAdmin.
     - Choose the `php_quiz_app.sql` file.
     - Click **Go** to import the data.

This will create the `questions` table with some sample data.

### Step 5: Configure the database connection

1. Open the project folder and navigate to the `config` directory.
2. Open the `db.php` file and update the database connection details to match your local setup:

```php
<?php
// Database connection settings
$servername = "localhost";   // Default is localhost
$username = "root";          // Default XAMPP username is root
$password = "";              // Leave empty for XAMPP
$dbname = "php_quiz_app";    // Database name
```

### Step 6: Run the application

1. Open your browser and navigate to the following URL:

   ```bash
   http://localhost/php-quiz-app/
   ```

2. You will see the home page of the quiz application. You can start the quiz by selecting the number of questions you want to attempt and clicking **Start Quiz**.

### File Overview

1. **index.php**: The home page where users can start the quiz.
2. **quiz.php**: Fetches random questions from the database and displays them to the user in a multiple-choice format.
3. **result.php**: Processes the quiz submission, checks the answers, and displays the score with feedback on correct and incorrect answers.

### Adding New Questions (For Admins)

To add new questions to the quiz, you can directly insert them into the database table `questions` using phpMyAdmin or via SQL queries.

The `questions` table has the following structure:

```sql
CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_text` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `correct_option` int(1) NOT NULL,
  PRIMARY KEY (`id`)
);
```

To add a new question, you can run a query like this:

```sql
INSERT INTO `questions` (`question_text`, `option1`, `option2`, `option3`, `option4`, `correct_option`)
VALUES ('What is the capital of France?', 'Paris', 'London', 'Berlin', 'Madrid', 1);
```

### Troubleshooting

- **Database connection error**: Check your `db.php` file to ensure the database connection settings match your local environment (server name, username, password, and database name).
- **Blank page**: Make sure the `Apache` and `MySQL` services are running in XAMPP/WAMP.
- **Questions not displaying**: Ensure that the `questions` table in your database is populated with questions.

### Future Improvements

- Admin panel to add, update, and delete questions.
- User authentication system.
- Track user scores and quiz attempts.
- Timer feature for quizzes.

---

This guide should help you get the quiz application running locally and understand how to interact with it. Feel free to explore the code and enhance the project according to your needs!

### License

This project is open-source and available for modification under the MIT license.

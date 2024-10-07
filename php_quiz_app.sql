-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2024 at 07:34 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_quiz_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question_text` varchar(255) NOT NULL,
  `option1` varchar(255) NOT NULL,
  `option2` varchar(255) NOT NULL,
  `option3` varchar(255) NOT NULL,
  `option4` varchar(255) NOT NULL,
  `correct_option` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question_text`, `option1`, `option2`, `option3`, `option4`, `correct_option`) VALUES
(12, 'What is PHP primarily used for?', 'Game development', 'Web development', 'Mobile app development', 'Data science', 2),
(13, 'Which of the following is a PHP framework?', 'Django', 'Rails', 'Laravel', 'Flask', 3),
(14, 'What does PHP stand for?', 'Personal Home Page', 'Programmer Hypertext Protocol', 'PHP Hypertext Processor', 'Portable Hypertext Protocol', 3),
(15, 'Which of the following is NOT a PHP data type?', 'Array', 'Object', 'Boolean', 'Character', 4),
(16, 'In PHP, what does the function `strlen()` do?', 'Returns the length of a string', 'Returns the length of an array', 'Returns the number of vowels in a string', 'Returns the number of words in a string', 1),
(17, 'How do you declare a variable in PHP?', 'let $variable;', 'var $variable;', '$variable;', 'declare $variable;', 3),
(18, 'What symbol is used to start a PHP variable?', '#', '$', '%', '&', 2),
(19, 'Which function is used to include a PHP file in another file?', 'include()', 'require_once()', 'load()', 'import()', 1),
(20, 'How do you create an array in PHP?', 'array[] = {...}', '$array = array()', 'new Array()', 'create_array()', 2),
(21, 'Which of the following is used to end a PHP statement?', '.', ';', ':', 'end', 2),
(22, 'How do you write a comment in PHP?', '/* Comment */', '// Comment', '# Comment', 'All of the above', 4),
(23, 'Which method is used to retrieve data from a form using the POST method in PHP?', '$_GET[]', '$_POST[]', 'getData()', 'request[]', 2),
(24, 'Which superglobal variable holds information about headers, paths, and script locations?', '$_ENV', '$_SESSION', '$_SERVER', '$_FILES', 3),
(25, 'Which version of PHP introduced the `namespace` feature?', 'PHP 5.0', 'PHP 5.3', 'PHP 7.0', 'PHP 8.0', 2),
(26, 'How can you start a PHP session?', 'session_start()', 'session_init()', 'start_session()', 'new Session()', 1),
(27, 'Which of these is used to create a constant in PHP?', 'define()', 'const()', 'constant()', 'const_define()', 1),
(28, 'Which function is used to get the length of an array in PHP?', 'count()', 'length()', 'sizeof()', 'arr_len()', 1),
(29, 'Which PHP error type is caused by trying to use an undefined variable?', 'Syntax error', 'Parse error', 'Warning', 'Notice', 4),
(30, 'What will `echo` do in PHP?', 'Print text', 'Return a value', 'Throw an error', 'Execute a function', 1),
(31, 'What is the default file extension for PHP files?', '.ph', '.php', '.phtml', '.htm', 2),
(32, 'How do you concatenate two strings in PHP?', 'str_add()', 'concatenate()', '.', '+', 3),
(33, 'Which function is used to redirect in PHP?', 'redirect()', 'header()', 'url_redirect()', 'move()', 2),
(34, 'Which of the following is a magic method in PHP?', '__construct()', 'magic()', '__init()', 'load()', 1),
(35, 'How do you check if a value exists in an array in PHP?', 'array_has()', 'in_array()', 'array_search()', 'has_value()', 2),
(36, 'What does the `isset()` function do in PHP?', 'Checks if a variable is set', 'Checks if a variable is empty', 'Sets a variable', 'Unsets a variable', 1),
(37, 'Which operator is used for equality in PHP?', '=', '==', '===', '!=', 2),
(38, 'Which function in PHP is used to stop script execution?', 'exit()', 'stop()', 'halt()', 'terminate()', 1),
(39, 'What is the correct way to include a PHP script in another file using absolute path?', 'include_once()', 'require()', 'require_once()', 'Both 2 and 3', 4),
(40, 'How do you define an object in PHP?', 'class Object', 'new Object()', 'Object {}', '$obj = new ClassName()', 4),
(41, 'Which function is used to get the current timestamp in PHP?', 'date()', 'timestamp()', 'time()', 'currentTime()', 3),
(42, 'Which of the following PHP extensions is used for working with XML?', 'xml_parser', 'xmlrpc', 'dom', 'simplexml', 4),
(43, 'What is the purpose of the `spl_autoload_register()` function in PHP?', 'To load external libraries', 'To load classes dynamically', 'To register user sessions', 'To start the application', 2),
(44, 'Which of the following is a valid way to define an abstract class in PHP?', 'class AbstractClass {}', 'abstract class AbstractClass {}', 'interface AbstractClass {}', 'class AbstractClass extends abstract {}', 2),
(45, 'Which method would you use to prevent SQL injection in prepared statements in PHP?', 'mysql_real_escape_string()', 'bindValue()', 'prepare()', 'bindParam()', 3),
(46, 'Which function in PHP is used to serialize a variable?', 'serialize()', 'json_encode()', 'toString()', 'var_export()', 1),
(47, 'What will the `get_class_methods()` function return?', 'An array of method names for a given class', 'An array of properties for a class', 'All class constants', 'All parent class methods', 1),
(48, 'What is the default visibility of a method in a PHP class if not specified?', 'public', 'private', 'protected', 'final', 1),
(49, 'Which of the following is true about interfaces in PHP?', 'Interfaces can have method definitions', 'Interfaces support multiple inheritance', 'Interfaces can contain properties', 'Interfaces can be instantiated directly', 2),
(50, 'What will happen if you try to define two methods with the same name but different visibility levels in PHP?', 'Syntax error', 'Both methods will be accessible', 'The private method will be used', 'Method overloading will occur', 1),
(51, 'How do you access a static property in PHP?', 'Using `->` operator', 'Using `::` operator', 'Using `$this` keyword', 'Using `self::` operator', 2),
(52, 'What will happen if a child class does not define all abstract methods of its parent abstract class?', 'An error will occur', 'The child class will become abstract', 'It will still work', 'The child class will inherit abstract methods', 1),
(53, 'What does the `PDO::FETCH_ASSOC` fetch mode in PHP do?', 'Returns an associative array', 'Returns a numerically indexed array', 'Returns both associative and numeric arrays', 'Returns an object', 1),
(54, 'Which of the following is a magic constant in PHP?', '__LINE__', '__END__', '__SIZE__', '__MAX__', 1),
(55, 'What is the output of the `count()` function on an object in PHP?', 'Length of the object', 'Number of public properties', 'Number of methods', 'Number of class constants', 2),
(56, 'What does the `__get()` magic method do in PHP?', 'It is called when a non-accessible property is accessed', 'It is used to define dynamic methods', 'It is called when an undefined method is called', 'It is used to serialize an object', 1),
(57, 'How do you throw an exception in PHP?', 'throw new Exception()', 'throw Exception()', 'trigger Exception()', 'Exception.throw()', 1),
(58, 'Which of the following is the correct syntax for a PHP trait?', 'trait MyTrait {}', 'MyTrait {trait}', 'class MyTrait {}', 'trait:MyTrait {}', 1),
(59, 'How can you catch multiple exceptions in PHP?', 'Using multiple `catch` blocks', 'Using a single `catch` block', 'Using `try...catchAll()`', 'PHP does not support this feature', 1),
(60, 'Which of the following methods is used to connect to a MySQL database using PDO in PHP?', 'connect()', 'new PDO()', 'openConnection()', 'mysqli_connect()', 2),
(61, 'Which of the following is true about namespaces in PHP?', 'They are required for all classes', 'They allow organizing code to avoid name collisions', 'They replace classes', 'They are a type of magic method', 2),
(62, 'What does the `final` keyword mean in PHP?', 'A class cannot be extended', 'A property cannot be modified', 'A method cannot be overridden', 'Both 1 and 3', 4),
(63, 'Which PHP feature allows you to run shell commands directly from the code?', 'exec()', 'shell_exec()', 'system()', 'All of the above', 4),
(64, 'What does the `use` keyword do in PHP?', 'Imports a namespace', 'Declares a function', 'Includes a file', 'Defines a constant', 1),
(65, 'How do you define a constant array in PHP 7.0 and later?', 'define()', 'const []', 'define_array()', 'Using `define()` with `json_encode()`', 2),
(66, 'Which method can be used to detect if a class uses a specific trait?', 'class_uses()', 'trait_exists()', 'trait_uses()', 'uses_trait()', 1),
(67, 'How can you specify a return type in a PHP function from PHP 7 onward?', 'function myFunc(): int {}', 'function myFunc returns int {}', 'function myFunc -> int {}', 'function myFunc : int {}', 1),
(68, 'Which of the following functions allows you to introspect the class of an object?', 'get_class()', 'get_object_vars()', 'class_exists()', 'class_vars()', 1),
(69, 'What does the `session_set_save_handler()` function do in PHP?', 'It sets custom session storage mechanisms', 'It sets session cookie properties', 'It configures session timeouts', 'It sets session name', 1),
(70, 'What is the default session handler in PHP?', 'File-based session storage', 'Memory-based session storage', 'Database session storage', 'Array-based session storage', 1),
(71, 'Which function is used to unregister a session variable?', 'unset()', 'session_unset()', 'session_destroy()', 'session_unregister()', 2),
(72, 'What is the `mysqli_real_escape_string()` function used for in PHP?', 'To escape special characters in a string for SQL statements', 'To remove leading whitespace from a string', 'To escape URL characters', 'To hash a string', 1),
(73, 'What does the `mysqli_multi_query()` function in PHP do?', 'Executes multiple queries in a single call', 'Executes multiple queries sequentially', 'Executes queries in parallel', 'None of the above', 1),
(74, 'What is a prepared statement in PHP?', 'A statement that is compiled once and executed many times', 'A cached version of an SQL query', 'An SQL statement that prevents errors', 'A statement that has placeholder values', 4),
(75, 'Which of the following features is introduced in PHP 8.0?', 'Arrow functions', 'Union types', 'Attributes (Annotations)', 'Both 2 and 3', 4),
(76, 'What is the output of `strcmp(\"123\", \"abc\")` in PHP?', '0', '-1', '1', 'Undefined', 2),
(77, 'How do you declare a weak reference in PHP?', 'weakref($object)', 'WeakReference::create($object)', 'new WeakRef($object)', 'Weak::create($object)', 2),
(78, 'What is JIT compilation in PHP 8?', 'Just-In-Time compilation for performance improvement', 'Compilation before runtime', 'A garbage collection mechanism', 'An error correction mechanism', 1),
(79, 'What is the purpose of `fn()` introduced in PHP 7.4?', 'To define anonymous functions', 'To define arrow functions', 'To create closures', 'To define recursive functions', 2),
(80, 'Which function is used to calculate the MD5 hash of a string?', 'md5_hash()', 'hash_md5()', 'md5()', 'hash()', 3),
(81, 'What does the `array_map()` function do in PHP?', 'Maps keys to values', 'Applies a callback function to elements of an array', 'Filters elements of an array', 'Sorts an array', 2),
(82, 'How do you define a constant class property in PHP?', 'const PROPERTY = value;', 'constant PROPERTY = value;', 'define PROPERTY = value;', 'constant PROPERTY();', 1),
(83, 'What is the `Null coalescing operator (??)` used for in PHP?', 'To check if a variable is null and return a default value', 'To assign null to a variable', 'To compare two values for equality', 'To coalesce two strings', 1),
(84, 'What is the difference between `==` and `===` in PHP?', '`==` compares values only; `===` compares both values and types', '`==` is faster than `===`', '`===` is only for arrays', '`==` is only for integers', 1),
(85, 'Which function is used to check if a variable is iterable?', 'is_iterable()', 'is_array()', 'is_collection()', 'is_traversable()', 1),
(86, 'What will `json_encode()` do in PHP?', 'Converts a string to JSON format', 'Converts an array or object to JSON format', 'Creates a new JSON object', 'Parses a JSON string', 2),
(87, 'What is the SPL in PHP?', 'Standard PHP Library', 'Special Parsing Library', 'Simple Programming Library', 'Scripting PHP Library', 1),
(88, 'What is the purpose of the `usort()` function in PHP?', 'To sort an array by user-defined comparison', 'To sort an array in reverse order', 'To remove duplicates from an array', 'To sort an array by values', 1),
(89, 'What does `array_filter()` do in PHP?', 'It filters elements of an array using a callback function', 'It sorts the array', 'It removes empty values from an array', 'It removes duplicate values from an array', 1),
(90, 'Which function is used to parse an INI file in PHP?', 'parse_ini_file()', 'load_ini()', 'parse_ini()', 'ini_load()', 1),
(91, 'What is the purpose of the `compact()` function in PHP?', 'To create an array from variables', 'To reduce the size of an array', 'To compress an array', 'To create an object from variables', 1),
(92, 'How do you set a cookie in PHP?', 'cookie_set()', 'setcookie()', 'set_cookie()', 'addcookie()', 2),
(93, 'What does the `explode()` function do in PHP?', 'Splits a string by a delimiter into an array', 'Joins array elements into a string', 'Removes empty spaces from a string', 'Reverses a string', 1),
(94, 'Which of the following is a predefined variable in PHP?', '$_ENV', '$_VAR', '$_COOKIE', 'Both 1 and 3', 4),
(95, 'Which function is used to check if a class exists in PHP?', 'class_exists()', 'is_class()', 'object_exists()', 'instance_exists()', 1),
(96, 'What does the `array_reduce()` function do in PHP?', 'Reduces the size of an array', 'Applies a callback function to elements of an array, reducing it to a single value', 'Removes duplicates from an array', 'Reverses the elements of an array', 2),
(97, 'What is the purpose of `ReflectionClass` in PHP?', 'To reflect variables', 'To inspect or manipulate classes at runtime', 'To create dynamic classes', 'To extend classes dynamically', 2),
(98, 'Which of the following features were introduced in PHP 7?', 'Scalar type declarations', 'Anonymous classes', 'Null coalescing operator', 'All of the above', 4),
(99, 'How can you declare a return type of `void` in PHP 7.1 or later?', 'function myFunc(): void {}', 'function myFunc return void {}', 'function myFunc -> void {}', 'function myFunc: void {}', 1),
(100, 'What does the `preg_match()` function do in PHP?', 'Performs a regular expression match', 'Replaces parts of a string', 'Splits a string by a regular expression', 'Escapes special characters', 1),
(101, 'How do you define a constant within a class in PHP?', 'define()', 'const', 'constant', 'use', 2),
(102, 'What is the result of `strpos(\"abcdef\", \"a\")` in PHP?', '0', '1', 'false', 'undefined', 1),
(103, 'How do you type hint a function argument as an array in PHP?', 'function foo(array $arg) {}', 'function foo(Array $arg) {}', 'function foo(arr $arg) {}', 'function foo([] $arg) {}', 1),
(104, 'Which PHP function is used to generate a unique ID?', 'unique_id()', 'generate_id()', 'uniqid()', 'get_unique()', 3),
(105, 'What is the purpose of the `get_parent_class()` function in PHP?', 'To get the class name of a parent class', 'To get the methods of a parent class', 'To instantiate a parent class', 'To get the parent class constants', 1),
(106, 'What is the purpose of the `call_user_func_array()` function in PHP?', 'Calls a function using an array of parameters', 'Calls a function using a single parameter', 'Maps user functions to arrays', 'Executes multiple functions', 1),
(107, 'Which of the following is used to iterate over an object’s properties in PHP?', 'foreach', 'for', 'while', 'do-while', 1),
(108, 'What does the `password_hash()` function do in PHP?', 'Encrypts a password using MD5', 'Hashes a password using a secure one-way hashing algorithm', 'Hashes a password using SHA-256', 'Encrypts passwords using SSL', 2),
(109, 'How do you define a default parameter in PHP?', 'function myFunc($param = \"default\")', 'function myFunc(\"default\" $param)', 'function myFunc($param default)', 'function myFunc($param := \"default\")', 1),
(110, 'What will `header(\"Location: http://example.com\")` do in PHP?', 'Redirects the user to the specified URL', 'Sends an HTTP header', 'Sets the content type to HTML', 'Modifies an HTTP cookie', 1),
(111, 'What is the purpose of the `mysqli_fetch_assoc()` function in PHP?', 'Fetches a row from a result set as an associative array', 'Fetches multiple rows as numeric arrays', 'Fetches all rows from a result set', 'Fetches the first and last rows', 1),
(112, 'Which of the following is a difference between `isset()` and `empty()` in PHP?', '`isset()` checks if a variable exists and is not null, while `empty()` checks if a variable has a falsey value', '`isset()` checks if a variable is an array, while `empty()` checks if it is empty', '`isset()` returns false for empty strings, while `empty()` returns true for them', '`isset()` returns true for false, while `empty()` returns false for false', 1),
(113, 'What does the `array_walk()` function do in PHP?', 'Iterates over an array and applies a user-defined function to each element', 'Walks through the array and removes duplicates', 'Traverses an array and converts it into an object', 'Sorts the array by applying a callback function', 1),
(114, 'Which function can be used to check if a string starts with a specific substring in PHP?', 'str_begins()', 'substr()', 'strpos()', 'str_starts_with()', 4),
(115, 'What is the role of the `__sleep()` magic method in PHP?', 'To prepare an object for serialization', 'To pause the execution of a script', 'To create a delay in a script', 'To terminate an object instance', 1),
(116, 'Which of the following is an SPL data structure in PHP?', 'Doubly Linked List', 'Heap', 'ArrayList', 'PriorityQueue', 4),
(117, 'What does the `openssl_encrypt()` function do in PHP?', 'Hashes data using MD5', 'Encrypts data using a specified encryption algorithm', 'Generates an SSL certificate', 'Creates a secure hash of data', 2),
(118, 'Which PHP function is used to compress a string?', 'gzcompress()', 'zlib_compress()', 'compress_string()', 'string_compress()', 1),
(119, 'What is the difference between `require()` and `include()` in PHP?', '`require()` will halt the script if the file is missing, while `include()` will not', '`require()` is used for libraries, while `include()` is used for scripts', '`require()` imports classes, while `include()` imports functions', '`require()` is for files within the same directory, while `include()` works for remote files', 1),
(120, 'How do you define an anonymous class in PHP?', 'new class {}', 'class {}', 'anonymous class {}', 'class new {}', 1),
(121, 'Which function in PHP is used to check whether a file or directory exists?', 'file_exists()', 'is_file()', 'dir_exists()', 'exists()', 1),
(122, 'What is the result of `count(null)` in PHP?', '0', '1', 'null', 'false', 1),
(123, 'Which function can be used to calculate the difference between two arrays in PHP?', 'array_diff()', 'array_merge()', 'array_subtract()', 'array_filter()', 1),
(124, 'How can you compare two objects in PHP?', 'Using `==` to check for equality', 'Using `===` to check for equality of identity and properties', 'Using `compare()`', 'Both 1 and 2', 4),
(125, 'What is the purpose of the `filter_var()` function in PHP?', 'To sanitize and validate data', 'To filter arrays based on a callback function', 'To filter out duplicates from an array', 'To apply a user-defined filter to strings', 1),
(126, 'How do you define a function with a variable number of arguments in PHP?', 'Using the `...` operator (spread operator)', 'Using an array as the last parameter', 'Using `func_get_args()`', 'Using a callback function', 1),
(127, 'What will happen if you call `json_decode()` with an invalid JSON string in PHP?', 'Returns null', 'Throws an exception', 'Returns false', 'Outputs a warning', 1),
(128, 'What is the purpose of the `headers_sent()` function in PHP?', 'To check if HTTP headers have been sent', 'To send a custom HTTP header', 'To reset HTTP headers', 'To check for the presence of HTTP headers', 1),
(129, 'How do you prevent a method from being overridden in PHP?', 'By marking it as `final`', 'By marking it as `private`', 'By marking it as `protected`', 'By marking it as `static`', 1),
(130, 'Which function is used to send an email in PHP?', 'mail()', 'send_email()', 'email()', 'smtp_send()', 1),
(131, 'What is the purpose of the `ob_start()` function in PHP?', 'To enable output buffering', 'To start a new session', 'To start an output stream', 'To close a file handle', 1),
(132, 'What will `is_callable()` do in PHP?', 'Check if a variable is a valid function name or array containing a class and method', 'Check if a string is a valid class name', 'Check if an object is an instance of a class', 'Check if a class has a constructor', 1),
(133, 'Which of the following functions returns the last inserted ID in a MySQL database using PDO?', 'PDO::lastInsertId()', 'PDO::insertId()', 'PDO::getLastId()', 'PDO::getInsertId()', 1),
(134, 'What will `array_flip()` do in PHP?', 'Exchanges keys with values in an array', 'Sorts an array by flipping its elements', 'Removes duplicate elements from an array', 'Inverts the order of array elements', 1),
(135, 'What is the purpose of the `intl` extension in PHP?', 'To handle internationalization functions', 'To enable international encryption', 'To support foreign language characters', 'To provide time zone support', 1),
(136, 'Which MySQL statement is used to create a new table?', 'CREATE TABLE', 'NEW TABLE', 'INSERT TABLE', 'ADD TABLE', 1),
(137, 'What does the `AUTO_INCREMENT` attribute do in MySQL?', 'Increments the value of a column automatically by 1', 'Increments the primary key by 2', 'Increments values in non-primary key columns', 'Randomly generates unique IDs', 1),
(138, 'What MySQL function is used to get the current date and time?', 'NOW()', 'CURDATE()', 'CURRENT_DATE()', 'GETDATE()', 1),
(139, 'Which of the following is true about the `INNER JOIN` in MySQL?', 'Returns all records from both tables', 'Returns records that have matching values in both tables', 'Returns records from one table that have no matching records in another', 'Returns records that match from one table', 2),
(140, 'What is the purpose of the `GROUP BY` clause in MySQL?', 'To group rows that have the same values into summary rows', 'To sort rows in ascending order', 'To filter rows by a condition', 'To join multiple tables', 1),
(141, 'Which of the following MySQL functions is used to return the number of rows in a result set?', 'SUM()', 'COUNT()', 'LENGTH()', 'MAX()', 2),
(142, 'What does the `LIMIT` clause do in MySQL?', 'Limits the number of columns', 'Limits the number of rows returned by a query', 'Limits the size of the database', 'Limits the number of joins in a query', 2),
(143, 'What is the purpose of the `HAVING` clause in MySQL?', 'To filter rows after the `GROUP BY` clause', 'To define conditions before grouping rows', 'To alias the table name', 'To limit the number of rows in a result set', 1),
(144, 'What does the `UNIQUE` constraint do in MySQL?', 'Prevents duplicate values in a column', 'Prevents null values in a column', 'Defines a column as the primary key', 'Ensures a column has a default value', 1),
(145, 'How can you change the data type of a column in MySQL?', 'ALTER COLUMN', 'MODIFY COLUMN', 'CHANGE TYPE', 'UPDATE COLUMN', 2),
(146, 'Which of the following is a MySQL aggregate function?', 'AVG()', 'SUM()', 'COUNT()', 'All of the above', 4),
(147, 'What is the default storage engine in MySQL from version 5.5 and above?', 'InnoDB', 'MyISAM', 'MEMORY', 'CSV', 1),
(148, 'What is the purpose of the `FOREIGN KEY` constraint in MySQL?', 'To enforce a link between data in two tables', 'To automatically update rows in a child table', 'To create an index on a column', 'To prevent null values in a column', 1),
(149, 'Which MySQL keyword is used to select unique values in a query?', 'DISTINCT', 'GROUP BY', 'UNIQUE', 'FILTER', 1),
(150, 'What does the `LEFT JOIN` do in MySQL?', 'Returns all rows from the left table and the matched rows from the right table', 'Returns rows from the right table and matching rows from the left', 'Returns only the matching rows from both tables', 'Returns only unmatched rows', 1),
(151, 'What is the purpose of the `TRUNCATE` statement in MySQL?', 'Deletes all rows in a table and frees the space', 'Deletes all rows without freeing space', 'Deletes the table structure', 'Deletes a specific column in a table', 1),
(152, 'Which command is used to remove a table from a MySQL database?', 'DELETE', 'DROP TABLE', 'REMOVE TABLE', 'TRUNCATE', 2),
(153, 'What is the function of `CHAR_LENGTH()` in MySQL?', 'Returns the number of characters in a string', 'Returns the number of bytes in a string', 'Returns the length of a numeric field', 'Returns the total size of a table', 1),
(154, 'What is a `VIEW` in MySQL?', 'A virtual table based on the result-set of an SQL query', 'A snapshot of the database schema', 'A table that is automatically updated', 'A table that holds a copy of data from another table', 1),
(155, 'Which MySQL clause is used to filter records before grouping them?', 'WHERE', 'HAVING', 'GROUP BY', 'ORDER BY', 1),
(156, 'Which MySQL function is used to return the current database name?', 'CURRENT_DB()', 'DATABASE()', 'GET_DB()', 'SHOW DATABASE()', 2),
(157, 'What does the `ON DELETE CASCADE` clause do in MySQL?', 'Deletes rows from a parent table and automatically deletes related rows from the child table', 'Prevents deletion of rows in a child table', 'Deletes rows in a table based on a condition', 'Deletes all rows when a table is dropped', 1),
(158, 'How do you rename a table in MySQL?', 'ALTER TABLE RENAME', 'RENAME TABLE', 'MODIFY TABLE', 'CHANGE TABLE', 2),
(159, 'What is the purpose of the `DESCRIBE` statement in MySQL?', 'Displays the structure of a table', 'Shows the first row of a table', 'Lists the names of all tables', 'Returns the number of columns in a table', 1),
(160, 'Which MySQL clause is used to sort the result set of a query?', 'ORDER BY', 'GROUP BY', 'SORT', 'LIMIT', 1),
(161, 'Which MySQL statement is used to update data in a table?', 'MODIFY', 'UPDATE', 'CHANGE', 'ALTER', 2),
(162, 'Which function is used to combine the values of two or more columns or strings in MySQL?', 'MERGE()', 'CONCAT()', 'COMBINE()', 'JOIN()', 2),
(163, 'How do you prevent SQL injection attacks in MySQL?', 'Use parameterized queries', 'Use `mysql_real_escape_string()`', 'Use `addslashes()`', 'All of the above', 1),
(164, 'What is the difference between `CHAR` and `VARCHAR` in MySQL?', '`CHAR` is a fixed-length string, while `VARCHAR` is a variable-length string', '`VARCHAR` is always faster than `CHAR`', '`CHAR` can store numbers only, while `VARCHAR` can store text', '`VARCHAR` is deprecated', 1),
(165, 'What is the purpose of the `EXPLAIN` statement in MySQL?', 'Shows how MySQL executes a query', 'Shows the result of a query', 'Executes the query', 'Describes the schema of a database', 1),
(166, 'Which of the following is true about MySQL `TRANSACTIONS`?', 'They allow multiple SQL statements to be executed as a single unit', 'They automatically commit after every statement', 'They cannot be rolled back', 'They are only available in MyISAM', 1),
(167, 'What does `COMMIT` do in MySQL?', 'Saves changes made during the current transaction', 'Rolls back changes made during the current transaction', 'Starts a new transaction', 'Locks the table', 1),
(168, 'Which statement in MySQL is used to remove duplicate records from a result set?', 'DISTINCT', 'FILTER', 'GROUP BY', 'CLEAN', 1),
(169, 'How can you copy a table along with its data in MySQL?', 'CREATE TABLE new_table AS SELECT * FROM old_table', 'INSERT INTO new_table SELECT * FROM old_table', 'COPY TABLE old_table TO new_table', 'CLONE TABLE old_table TO new_table', 1),
(170, 'Which function is used to find the maximum value in a numeric column in MySQL?', 'MAX()', 'SUM()', 'GREATEST()', 'LARGEST()', 1),
(171, 'What is the difference between `DROP` and `DELETE` in MySQL?', '`DROP` removes the entire table, while `DELETE` removes rows', '`DELETE` can remove a column, while `DROP` cannot', '`DROP` only removes data, but not the structure', '`DELETE` is used to remove the schema', 1),
(172, 'How can you create an index on a column in MySQL?', 'ALTER TABLE ADD INDEX', 'MODIFY TABLE CREATE INDEX', 'CREATE INDEX', 'ADD INDEX TO COLUMN', 3),
(173, 'What does the `IS NULL` operator do in MySQL?', 'Checks if a column value is null', 'Sets a column value to null', 'Removes null values from a table', 'Inserts null values into a column', 1),
(174, 'Which function in MySQL is used to round a numeric value to the nearest integer?', 'ROUND()', 'FLOOR()', 'CEIL()', 'TRUNC()', 1),
(175, 'What does the `COALESCE()` function do in MySQL?', 'Returns the first non-null value from a list of arguments', 'Combines values from multiple columns', 'Returns the last non-null value', 'Filters null values from a column', 1),
(176, 'Which MySQL clause is used to combine rows from two or more queries without duplicates?', 'UNION', 'JOIN', 'MERGE', 'INTERSECT', 1),
(177, 'What is the purpose of `ROLLBACK` in MySQL?', 'To undo changes made in a transaction', 'To save changes in a transaction', 'To commit changes to the database', 'To reset the database', 1),
(178, 'How do you check if a table exists in MySQL?', 'SHOW TABLES LIKE', 'CHECK TABLE', 'DESCRIBE TABLE', 'EXISTS TABLE', 1),
(179, 'Which of the following storage engines supports transactions in MySQL?', 'InnoDB', 'MyISAM', 'MEMORY', 'CSV', 1),
(180, 'How do you delete only specific rows in a MySQL table?', 'DELETE FROM table_name WHERE condition', 'REMOVE FROM table_name WHERE condition', 'TRUNCATE WHERE condition', 'DROP ROWS FROM table_name', 1),
(181, 'Which of the following MySQL commands is used to create a database?', 'CREATE DATABASE', 'NEW DATABASE', 'MAKE DATABASE', 'INIT DATABASE', 1),
(182, 'What does the `FIND_IN_SET()` function do in MySQL?', 'Returns the position of a string in a list of strings', 'Finds a value in a numeric set', 'Locates duplicate rows in a set', 'Finds the maximum value in a set', 1),
(183, 'What is the purpose of `IFNULL()` in MySQL?', 'To replace null values with a specified value', 'To check if a value is null', 'To return null if a condition is met', 'To remove null values', 1),
(184, 'What does the `ALTER` statement do in MySQL?', 'Modifies an existing table', 'Removes an existing table', 'Creates a new table', 'Queries data from a table', 1),
(185, 'What is the purpose of the `UNION ALL` operator in MySQL?', 'Combines result sets with duplicate rows included', 'Combines result sets with duplicate rows removed', 'Combines result sets and sorts them', 'Combines two tables into one', 1),
(186, 'Which of the following can be used to ensure the uniqueness of column values in MySQL?', 'PRIMARY KEY', 'UNIQUE KEY', 'INDEX', 'Both PRIMARY KEY and UNIQUE KEY', 4),
(187, 'How do you create a full-text index in MySQL?', 'CREATE FULLTEXT INDEX idx ON table_name(column)', 'CREATE TEXT INDEX idx ON table_name(column)', 'ALTER TABLE table_name ADD FULLTEXT (column)', 'Both 1 and 3', 4),
(188, 'What is the function of the `BINARY` operator in MySQL?', 'Performs binary comparisons between strings', 'Performs binary comparisons between numbers', 'Sorts data in binary format', 'Converts text to binary', 1),
(189, 'Which command is used to restore a MySQL database from a backup file?', 'mysql < backup.sql', 'mysqldump --restore', 'LOAD DATABASE backup.sql', 'RELOAD DATABASE backup.sql', 1),
(190, 'What is the purpose of `LOCK TABLES` in MySQL?', 'Locks a table to prevent read/write operations', 'Locks a table for exclusive write access', 'Locks a table to prevent schema changes', 'Locks a table to prevent index creation', 2),
(191, 'What does the `CHECK` constraint do in MySQL?', 'Enforces a condition on column values', 'Checks the uniqueness of column values', 'Checks if a column is indexed', 'Checks if a table exists', 1),
(192, 'Which function is used to get the difference between two dates in MySQL?', 'DATEDIFF()', 'DATE_SUB()', 'TIMESTAMPDIFF()', 'DATEDURATION()', 1),
(193, 'What is the purpose of the `CHARSET` attribute in MySQL?', 'Specifies the character set used by a table or column', 'Specifies the storage engine for a table', 'Specifies the time zone for a database', 'Specifies the default collation for a column', 1),
(194, 'Which storage engine in MySQL supports table partitioning?', 'InnoDB', 'MyISAM', 'MEMORY', 'CSV', 1),
(195, 'What is a `TRIGGER` in MySQL?', 'A database object that is automatically executed when a specified event occurs', 'A stored procedure that is called explicitly', 'A function that checks constraints on data', 'A script that modifies the schema of a table', 1),
(196, 'Which MySQL command is used to optimize a table?', 'OPTIMIZE TABLE', 'ANALYZE TABLE', 'CHECK TABLE', 'REPAIR TABLE', 1),
(197, 'What is the purpose of `INFORMATION_SCHEMA` in MySQL?', 'Stores metadata about the database', 'Stores temporary tables', 'Stores backup data', 'Stores user-defined functions', 1),
(198, 'Which function is used to split a string into substrings in MySQL?', 'SUBSTRING_INDEX()', 'SPLIT()', 'STR_SPLIT()', 'PARTITION()', 1),
(199, 'What does the `JOIN_BUFFER_SIZE` system variable control in MySQL?', 'The buffer size used for joins that cannot use an index', 'The maximum size of a join operation', 'The buffer size for caching query results', 'The buffer size for sorting joins', 1),
(200, 'What is the function of `EXISTS` in MySQL?', 'Tests whether a subquery returns any rows', 'Checks whether a table exists in a database', 'Returns the number of rows in a table', 'Checks for duplicates in a result set', 1),
(201, 'Which of the following is a feature of MySQL replication?', 'One master and multiple slaves', 'Multi-master replication', 'Synchronous replication', 'Both 1 and 2', 4),
(202, 'What is the purpose of the `ROW_COUNT()` function in MySQL?', 'Returns the number of rows affected by the last query', 'Returns the number of rows in a table', 'Returns the number of rows matching a condition', 'Returns the number of rows inserted into a table', 1),
(203, 'How do you change the default storage engine in MySQL?', 'SET default_storage_engine = engine_name', 'ALTER STORAGE ENGINE engine_name', 'CHANGE STORAGE ENGINE engine_name', 'SET GLOBAL storage_engine = engine_name', 1),
(204, 'What does the `CASE` statement do in MySQL?', 'Provides conditional logic in SQL queries', 'Joins two or more tables', 'Compares two columns', 'Performs calculations on numeric values', 1),
(205, 'How do you change the collation of a column in MySQL?', 'ALTER TABLE table_name MODIFY column_name VARCHAR(255) COLLATE collation_name', 'CHANGE COLLATION table_name.column_name', 'SET COLLATION column_name TO collation_name', 'ALTER COLUMN table_name SET COLLATION', 1),
(206, 'Which of the following is true about `subqueries` in MySQL?', 'They can be nested inside another query', 'They must always return a single value', 'They are used only in the `SELECT` clause', 'They cannot reference columns from the outer query', 1),
(207, 'What is the purpose of the `MERGE` storage engine in MySQL?', 'Allows multiple MyISAM tables to be treated as a single table', 'Combines rows from multiple tables into one', 'Combines the results of multiple queries', 'Partitions tables across multiple databases', 1),
(208, 'What is the function of the `STORED` keyword in MySQL generated columns?', 'Indicates that the generated column value is physically stored', 'Indicates that the generated column is virtual', 'Indicates that the column is indexed', 'Indicates that the column value is cached', 1),
(209, 'What does the `ANALYZE` statement do in MySQL?', 'Updates table statistics used by the optimizer', 'Rebuilds indexes for a table', 'Displays the execution plan for a query', 'Runs a diagnostic on table integrity', 1),
(210, 'What is the purpose of `JSON_ARRAYAGG()` in MySQL?', 'Aggregates values into a JSON array', 'Aggregates rows into a string', 'Converts a string into a JSON object', 'Returns a subset of a JSON array', 1),
(211, 'Which command is used to show the query execution plan in MySQL?', 'EXPLAIN', 'SHOW QUERY', 'QUERY PLAN', 'EXECUTE PLAN', 1),
(212, 'How can you create a unique index on a column in MySQL?', 'CREATE UNIQUE INDEX idx ON table_name(column)', 'ALTER TABLE table_name ADD UNIQUE (column)', 'Both 1 and 2', 'CREATE INDEX idx ON table_name(column) UNIQUE', 3),
(213, 'Which MySQL function is used to remove leading and trailing spaces from a string?', 'TRIM()', 'SUBSTR()', 'LTRIM()', 'RTRIM()', 1),
(214, 'What is the purpose of `WITH ROLLUP` in MySQL?', 'Provides summary rows for `GROUP BY` queries', 'Rolls back the transaction after a query', 'Limits the number of rows returned by a query', 'Provides a backup of the table data', 1),
(215, 'Which function is used to calculate the number of months between two dates in MySQL?', 'PERIOD_DIFF()', 'MONTH_DIFF()', 'DATE_DIFF()', 'TIMESTAMPDIFF()', 1),
(216, 'What is a `cross join` in MySQL?', 'Produces a Cartesian product of the two tables', 'Joins two tables based on a condition', 'Returns only matching rows from two tables', 'Joins two tables without any conditions', 1),
(217, 'Which MySQL function is used to extract a substring from a string?', 'SUBSTRING()', 'SPLIT()', 'EXTRACT()', 'STR_SPLIT()', 1),
(218, 'What is the purpose of the `ON DUPLICATE KEY UPDATE` clause in MySQL?', 'Updates a record if a duplicate key value is found', 'Deletes a record with a duplicate key', 'Ignores records with duplicate keys', 'Creates a new key if a duplicate is found', 1),
(219, 'What does the `LEAD()` function do in MySQL?', 'Accesses data from the next row in the result set', 'Accesses data from the previous row in the result set', 'Accesses the first row in a partition', 'Accesses the last row in a partition', 1),
(220, 'How do you convert a string to lowercase in MySQL?', 'LOWER()', 'LCASE()', 'TO_LOWER()', 'Both 1 and 2', 4),
(221, 'What is the function of the `INET_NTOA()` function in MySQL?', 'Converts an IP address from a numeric format to a string format', 'Converts an IP address from a string format to a numeric format', 'Converts an IP address to a binary format', 'Converts an IP address to a decimal format', 1),
(222, 'Which MySQL feature allows the database to perform faster lookups by storing data in memory?', 'Indexes', 'Views', 'Materialized Views', 'Memory tables', 4),
(223, 'What is the purpose of `ROW_NUMBER()` in MySQL?', 'Returns the row number within a partitioned result set', 'Returns the total number of rows in a table', 'Returns the row number of a specific column', 'Returns the rank of a row in a result set', 1),
(224, 'What is the function of the `CHAR()` function in MySQL?', 'Returns the character representation of the given ASCII value', 'Returns the ASCII value of the given character', 'Returns the hexadecimal representation of a character', 'Converts a character to a string', 1),
(225, 'What does the `MATCH()` function do in MySQL?', 'Performs full-text search on a column', 'Matches two columns based on a condition', 'Joins two tables based on matching values', 'Finds rows with exact values', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

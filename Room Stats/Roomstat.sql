CREATE TABLE statistics (
	id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	total_persons INT(6) NOT NULL,
	persons_entered INT(6) NOT NULL,
	persons_left INT(6) NOT NULL,
	food_consumed INT(6) NOT NULL,
	food_left INT(6) NOT NULL,
	submission_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

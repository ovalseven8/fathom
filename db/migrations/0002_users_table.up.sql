CREATE TABLE users (
  `id` INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL
);

CREATE TABLE sessions (
  `id` INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
  `user_id` INTEGER UNSIGNED NOT NULL,
  `key` VARCHAR(255) NOT NULL,
  `time_login` TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  `time_last_seen` TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  INDEX `index_session_key` (`key` ASC)
);

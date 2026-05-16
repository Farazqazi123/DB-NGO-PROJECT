-- Food Waste Management System
-- Milestone 4 — DDL Script
-- Faraz Qazi & Maaz Ali

CREATE DATABASE IF NOT EXISTS food_waste_db;
USE food_waste_db;

-- Table 1
CREATE TABLE food_categories (
    category_id   INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(100) NOT NULL UNIQUE,
    description   TEXT
);

-- Table 2
CREATE TABLE users (
    user_id    INT PRIMARY KEY AUTO_INCREMENT,
    name       VARCHAR(100) NOT NULL,
    email      VARCHAR(100) NOT NULL UNIQUE,
    password   VARCHAR(255) NOT NULL,
    role       ENUM('restaurant', 'NGO', 'admin') NOT NULL,
    phone      VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    city       VARCHAR(100),
    area       VARCHAR(100)
);

-- Table 3
CREATE TABLE food_listings (
    food_id     INT PRIMARY KEY AUTO_INCREMENT,
    user_id     INT NOT NULL,
    food_name   VARCHAR(150) NOT NULL,
    quantity    INT NOT NULL,
    unit        VARCHAR(50),
    status      ENUM('available', 'claimed') DEFAULT 'available',
    expiry_date DATE,
    created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    category_id INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (category_id) REFERENCES food_categories(category_id)
);

-- Table 4
CREATE TABLE claims (
    claim_id     INT PRIMARY KEY AUTO_INCREMENT,
    food_id      INT NOT NULL,
    ngo_id       INT NOT NULL,
    claim_status ENUM('pending', 'confirmed', 'completed', 'cancelled') NOT NULL,
    claimed_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes        TEXT,
    FOREIGN KEY (food_id) REFERENCES food_listings(food_id),
    FOREIGN KEY (ngo_id)  REFERENCES users(user_id)
);

-- Table 5
CREATE TABLE pickup_schedules (
    schedule_id    INT PRIMARY KEY AUTO_INCREMENT,
    claim_id       INT NOT NULL UNIQUE,
    scheduled_time DATETIME NOT NULL,
    status         VARCHAR(50) DEFAULT 'pending',
    FOREIGN KEY (claim_id) REFERENCES claims(claim_id)
);

-- Table 6
CREATE TABLE feedback (
    feedback_id  INT PRIMARY KEY AUTO_INCREMENT,
    claim_id     INT NOT NULL UNIQUE,
    rating       TINYINT NOT NULL CHECK (rating BETWEEN 1 AND 5),
    comment      TEXT,
    submitted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (claim_id) REFERENCES claims(claim_id)
);

-- Table 7
CREATE TABLE claim_logs (
    log_id     INT PRIMARY KEY AUTO_INCREMENT,
    claim_id   INT NOT NULL,
    changed_by INT NOT NULL,
    old_status ENUM('pending', 'confirmed', 'completed', 'cancelled'),
    new_status ENUM('pending', 'confirmed', 'completed', 'cancelled') NOT NULL,
    changed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (claim_id)   REFERENCES claims(claim_id),
    FOREIGN KEY (changed_by) REFERENCES users(user_id)
);

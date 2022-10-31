CREATE DATABASE company;
USE company;
            CREATE TABLE user(
						user_id INT AUTO_INCREMENT PRIMARY KEY,
						first_name VARCHAR (50) NOT NULL,
						last_name VARCHAR(50) NOT NULL,
						email VARCHAR(100) UNIQUE,
						phone_number INT NOT NULL UNIQUE,
						delivery_address VARCHAR(225) NOT NULL
			);
                        
            CREATE TABLE product(
						product_id INT AUTO_INCREMENT PRIMARY KEY,
						product_name VARCHAR(100) NOT NULL,
                        category VARCHAR(50) NOT NULL,
                        unit_price DECIMAL(9,2) NOT NULL
			);
                        
            CREATE TABLE delivery(
						delivery_code INT AUTO_INCREMENT PRIMARY KEY,
                        user_id INT,
                        product_id INT,
                        delivery_status VARCHAR(50) NOT NULL,
						delivered_by VARCHAR(100) NOT NULL,
                        FOREIGN KEY (user_id)
        REFERENCES user (user_id),
						FOREIGN KEY (product_id)
        REFERENCES product (product_id)
			);

CREATE TABLE expenses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ex_title VARCHAR(255) NOT NULL,
    ex_price DECIMAL(10,2) NOT NULL,
    ex_date DATE NOT NULL,
    ex_note TEXT,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE payments (
  id INT AUTO_INCREMENT PRIMARY KEY,
  sale_id VARCHAR(100) NOT NULL,
  paid_amount DECIMAL(10,2) NOT NULL,
  payment_method VARCHAR(50),
  payment_note TEXT,
  paid_by VARCHAR(100),
  payment_date DATE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

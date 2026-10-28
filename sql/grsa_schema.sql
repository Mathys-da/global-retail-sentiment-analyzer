-- 1. Create the Customers Table
CREATE TABLE customers (
    customer_id VARCHAR(50) PRIMARY KEY,
    country_code VARCHAR(5) NOT NULL,
    preferred_language VARCHAR(5) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 2. Create the Reviews Table (Optimised for MySQL)
CREATE TABLE reviews (
    review_id VARCHAR(50) PRIMARY KEY,
    customer_id VARCHAR(50) NOT NULL,
    product_category VARCHAR(100) NOT NULL,
    product_id VARCHAR(50) NOT NULL,
    star_rating INT, 
    review_title TEXT,
    raw_text TEXT NOT NULL,
    detected_language VARCHAR(5),
    sentiment_polarity DECIMAL(3, 2), -- Standard MySQL decimal formatting
    sentiment_label VARCHAR(15),      
    submitted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    
    -- Strict data check constraint for MySQL 8.0+
    CONSTRAINT chk_star_rating CHECK (star_rating >= 1 AND star_rating <= 5),
    
    -- Relational foreign key link
    CONSTRAINT fk_customer 
        FOREIGN KEY (customer_id) 
        REFERENCES customers(customer_id)
        ON DELETE CASCADE
);

-- 3. Create Performance Indexes (MySQL syntax)
CREATE INDEX idx_reviews_language ON reviews(detected_language);
CREATE INDEX idx_reviews_sentiment ON reviews(sentiment_label);
CREATE INDEX idx_reviews_category ON reviews(product_category);

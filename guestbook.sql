-- Guestbook table schema
-- This table stores visitor messages and information from the guestbook form

CREATE TABLE guestbook (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(255),
    website VARCHAR(255),
    message TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Optional: Create indexes for better query performance
CREATE INDEX idx_created_at ON guestbook (created_at);
-- CREATE INDEX idx_name ON guestbook (name);
-- CREATE INDEX idx_email ON guestbook (email);

-- Sample data (optional - remove in production)
INSERT INTO guestbook (name, email, website, message) VALUES 
('Welcome Visitor', '', '', 'Welcome to our guestbook! This is where visitor messages will appear. Feel free to leave your own message above.');
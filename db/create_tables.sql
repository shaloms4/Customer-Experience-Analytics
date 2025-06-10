CREATE TABLE IF NOT EXISTS banks (
    id SERIAL PRIMARY KEY,
    name TEXT UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS reviews (
    id SERIAL PRIMARY KEY,
    review TEXT NOT NULL,
    rating INT NOT NULL,
    date DATE NOT NULL,
    bank_id INT REFERENCES banks(id),
    source TEXT,
    sentiment_label TEXT,
    sentiment_score FLOAT
);

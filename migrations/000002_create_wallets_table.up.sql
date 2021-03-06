CREATE TABLE IF NOT EXISTS wallets (
    wallet_id UUID PRIMARY KEY,
    user_id UUID REFERENCES users(user_id),
    balance DECIMAL(15,4) DEFAULT 0,
    is_identified BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP,
    deleted_at TIMESTAMP DEFAULT NULL
);
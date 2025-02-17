CREATE TYPE user_role AS ENUM ('USER', 'ADMIN');

CREATE TABLE users (
                       id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
                       email VARCHAR(255) NOT NULL UNIQUE,
                       password TEXT NOT NULL,
                       role user_role NOT NULL
);

CREATE TABLE IF NOT EXISTS users (
    id INTEGER,
    name TEXT NOT NULL,
    username TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS exhibits (
    id INTEGER,
    show_count INTEGER DEFAULT 0,
    paragraph TEXT NOT NULL,
    para_type TEXT NOT NULL CHECK(para_type IN ('ai', 'human')),
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS responses (
    id INTEGER,
    user_id INTEGER NOT NULL,
    paragraph_id INTEGER,
    response TEXT NOT NULL CHECK(response IN ('ai', 'human')),
    response_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (paragraph_id) REFERENCES paragraph(id)
);
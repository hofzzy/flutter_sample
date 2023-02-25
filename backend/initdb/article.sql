USE local;

CREATE TABLE article (
    id         INT PRIMARY KEY AUTO_INCREMENT,
    title      TEXT NOT NULL,
    body       TEXT NOT NULL,
    created_at DATETIME NOT NULL DEFAULT current_timestamp,
    updated_at DATETIME NOT NULL DEFAULT current_timestamp,
    deleted_at DATETIME
);

INSERT INTO article (title, body) VALUES ('mock-article-title-1', 'mock-article-body-1');
INSERT INTO article (title, body) VALUES ('mock-article-title-2', 'mock-article-body-2');
INSERT INTO article (title, body) VALUES ('mock-article-title-3', 'mock-article-body-3');
INSERT INTO article (title, body) VALUES ('mock-article-title-4', 'mock-article-body-4');
INSERT INTO article (title, body) VALUES ('mock-article-title-5', 'mock-article-body-5');
INSERT INTO article (title, body) VALUES ('mock-article-title-6', 'mock-article-body-6');
INSERT INTO article (title, body) VALUES ('mock-article-title-7', 'mock-article-body-7');
INSERT INTO article (title, body) VALUES ('mock-article-title-8', 'mock-article-body-8');
INSERT INTO article (title, body) VALUES ('mock-article-title-9', 'mock-article-body-9');
INSERT INTO article (title, body) VALUES ('mock-article-title-10', 'mock-article-body-10');

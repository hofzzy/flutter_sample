CREATE TABLE article_likes (
    id         INT PRIMARY KEY AUTO_INCREMENT,
    article_id INT NOT NULL,
    user_id    INT NOT NULL,
    created_at DATETIME NOT NULL DEFAULT current_timestamp,
    updated_at DATETIME NOT NULL DEFAULT current_timestamp,
    deleted_at DATETIME
);

INSERT INTO article_likes (article_id, user_id) VALUES (1, 1);
INSERT INTO article_likes (article_id, user_id) VALUES (1, 2);
INSERT INTO article_likes (article_id, user_id) VALUES (1, 3);
INSERT INTO article_likes (article_id, user_id) VALUES (1, 4);
INSERT INTO article_likes (article_id, user_id) VALUES (1, 5);
INSERT INTO article_likes (article_id, user_id) VALUES (1, 6);
INSERT INTO article_likes (article_id, user_id) VALUES (1, 7);
INSERT INTO article_likes (article_id, user_id) VALUES (1, 8);
INSERT INTO article_likes (article_id, user_id) VALUES (1, 9);
INSERT INTO article_likes (article_id, user_id) VALUES (1, 10);

INSERT INTO article_likes (article_id, user_id) VALUES (2, 1);

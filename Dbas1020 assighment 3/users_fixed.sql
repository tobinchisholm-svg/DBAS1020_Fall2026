USE appdb;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id       INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50)  NOT NULL,
    password VARCHAR(255)  NOT NULL,
    role     VARCHAR(20)  NOT NULL DEFAULT 'user'
);

INSERT INTO users (username, password, role) VALUES
('admin',    '$2y$10$9ESNca53HUEcsQXGxDGH0uHsrXiLO5IMC6HuDmJbrZykjIY3N0/S2', 'admin'),
('jsymonds', '$2y$10$74LNB6/JPpMRTC8gEl5M7OQO0R/NLGikN.5/aA0mQo94JP5CLEWiG', 'staff'),
('rbourque', '$2y$10$3RCXxdY1JEy7thBVnAk4mOf8biGTkCXv7t1pFhbRDI3D1abzfB0uC', 'staff'),
('ccollins', '$2y$10$hvNgxjdmGt8CooUJkoTZMuHBgUe2LK7SbB2AsScE.2uQNsVrignT2', 'user'),
('ajohnson', '$2y$10$.7xvlOgatJJN3iFrptTHV.c2fCAxz.Tz403cABwCPbk9br/7g8njq', 'user'),
('bsmith',   '$2y$10$KP2eGDsK0AxZ6hSuuE2A8eywScgBvqKnlZFLTc.WHWZRQg/E4F66e', 'user');

SELECT id, username, role FROM users ORDER BY id;
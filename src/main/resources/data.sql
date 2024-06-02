-- 创建用户表
CREATE TABLE IF NOT EXISTS users (
                                     id INT AUTO_INCREMENT PRIMARY KEY,
                                     username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL
    );

-- 创建角色表
CREATE TABLE IF NOT EXISTS roles (
                                     id INT AUTO_INCREMENT PRIMARY KEY,
                                     name VARCHAR(50) NOT NULL
    );

-- 创建用户角色关联表
CREATE TABLE IF NOT EXISTS user_roles (
                                          user_id INT,
                                          role_id INT,
                                          FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (role_id) REFERENCES roles(id),
    PRIMARY KEY (user_id, role_id)
    );

-- 添加初始用户
INSERT INTO users (username, email, password) VALUES ('admin', 'admin@example.com', 'adminpassword');

-- 添加初始角色
INSERT INTO roles (name) VALUES ('ROLE_ADMIN');

-- 将初始用户和角色关联
INSERT INTO user_roles (user_id, role_id) VALUES (1, 1);
DROP DATABASE IF EXISTS db_ssm;
CREATE DATABASE db_ssm;

DROP TABLE IF EXISTS db_ssm.table_name;
CREATE TABLE db_ssm.table_name (
  id INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK'
)
  COMMENT '表';
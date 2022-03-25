CREATE DATABASE IF NOT EXISTS projeto_algas;
USE projeto_algas;

CREATE TABLE perfomance_range(
	id INT PRIMARY KEY AUTO_INCREMENT,
	range_value VARCHAR(50),
    time_spent DECIMAL(11, 2),
    memory_usage DECIMAL(10,5)
);

CREATE TABLE acumul_acelerate(
	id INT PRIMARY KEY AUTO_INCREMENT,
	iterador INT,
    acumul BIGINT,
    time_spent DECIMAL(11, 7),
    memory_usage DECIMAL(10,5),
	fk_range int not null,
	CONSTRAINT fk_range FOREIGN KEY (fk_range) REFERENCES perfomance_range(id)
);

select * from perfomance_range;
select * from acumul_acelerate;
#drop database projeto_algas
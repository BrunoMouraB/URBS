CREATE TABLE `tb_login` (
	`Id` INT(5) NOT NULL AUTO_INCREMENT,
	`Nome` varchar(200),
	`Email` varchar(200),
	`Senha` varchar(200),
	PRIMARY KEY (`Id`)
);

CREATE TABLE `tb_produtos` (
	`Id` INT(5) NOT NULL AUTO_INCREMENT,
	`Nome` varchar(200),
	`Descrição` varchar(200),
	`Preço` DECIMAL(40),
	`Quantidade` DECIMAL(40),
	`Peso` DECIMAL(40),
	`Categoria_id` INT(5),
	PRIMARY KEY (`Id`)
);

CREATE TABLE `tb_categorias` (
	`Id` INT(5) NOT NULL AUTO_INCREMENT,
	`Nome` varchar(200),
	`Tipo` varchar(200),
	`Descrição` varchar(200),
	PRIMARY KEY (`Id`)
);

ALTER TABLE `tb_produtos` ADD CONSTRAINT `tb_produtos_fk0` FOREIGN KEY (`Categoria_id`) REFERENCES `tb_categorias`(`Id`);


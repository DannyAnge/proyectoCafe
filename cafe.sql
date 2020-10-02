CREATE TABLE `compra` (
`nrofactura` int(11) NOT NULL AUTO_INCREMENT,
`nrosacos` decimal(11,2) NULL,
`pesofinal` decimal(11,2) NULL,
`totalquintales` decimal(11,2) NULL,
`estado` int NULL,
`finca` int NULL,
`preciolibra` decimal NULL,
`totalpagar` decimal NULL,
`fecha` datetime NULL ON UPDATE CURRENT_TIMESTAMP,
PRIMARY KEY (`nrofactura`) 
);
CREATE TABLE `deposito` (
`ndeposito` int(11) NOT NULL AUTO_INCREMENT,
`nrosacos` decimal(11,2) NULL,
`pesobruto` decimal(11,2) NULL,
`pesofinal` decimal(11,2) NULL,
`estado` int NULL,
`finca` int NULL,
PRIMARY KEY (`ndeposito`) 
);
CREATE TABLE `fincas` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`nombre` varchar(60) NULL,
`propietario` varchar(60) NULL,
`direccion` varchar(60) NULL,
PRIMARY KEY (`id`) 
);
CREATE TABLE `estado` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`nombre` varchar(60) NULL,
`porcentaje` decimal(11,2) NULL,
PRIMARY KEY (`id`) 
);

ALTER TABLE `compra` ADD FOREIGN KEY (`estado`) REFERENCES `estado` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE `compra` ADD FOREIGN KEY (`finca`) REFERENCES `fincas` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE `deposito` ADD FOREIGN KEY (`estado`) REFERENCES `estado` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE `deposito` ADD FOREIGN KEY (`finca`) REFERENCES `fincas` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;


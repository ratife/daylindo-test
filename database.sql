CREATE DATABASE `daylindo` ;


DROP TABLE IF EXISTS `daylindo`.`competence`;
CREATE TABLE  `daylindo`.`competence` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `nbr_niveau` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `daylindo`.`niveau`;
CREATE TABLE  `daylindo`.`niveau` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `niveau` int(10) unsigned DEFAULT NULL,
  `description` text,
  `comp_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_niveau_1` (`comp_id`),
  CONSTRAINT `FK_niveau_1` FOREIGN KEY (`comp_id`) REFERENCES `competence` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
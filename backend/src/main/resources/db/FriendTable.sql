CREATE TABLE IF NOT EXISTS `friend` (
  `idFriend` int NOT NULL AUTO_INCREMENT,
  `idUser1` int DEFAULT NULL,
  `idUser2` int DEFAULT NULL,
  PRIMARY KEY (`idFriend`),
  KEY `friend_i1` (`idUser1`),
  KEY `friend_i2` (`idUser2`),
  CONSTRAINT `FK_USER1` FOREIGN KEY (`idUser1`) REFERENCES `utilisateur` (`id`),
  CONSTRAINT `FK_USER2` FOREIGN KEY (`idUser2`) REFERENCES `utilisateur` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
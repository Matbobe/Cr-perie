DROP TABLE IF EXISTS NEWSLETTER;
DROP TABLE IF EXISTS GUESTBOOK;

-- Create tables
CREATE TABLE NEWSLETTER (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(255) NOT NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);

CREATE TABLE GUESTBOOK (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `message` TEXT NOT NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);

-- Default data
INSERT INTO NEWSLETTER (`email`) VALUES
  ('ApollineGaillou@gmail.com'),
  ('DexterDescoteaux@gmail.com');

INSERT INTO GUESTBOOK (`name`, `email`, `message`) VALUES
  ('Apolline Gaillou', 'ApollineGaillou@gmail.com', 'Les crêpes c''est la vie !'),
  ('Luce Rocheleau', 'LuceRocheleau@gmail.com', 'Superbe vu sur la mer ! Je recommande !'),
  ('Dexter Descoteaux', 'Dex@gmail.com', 'J''ai adoré mon séjour !'),
  ('Léonie Lefebvre', 'Léeh4@gmail.com', 'Avec mon mari nous avons passé un superbe séjour !');
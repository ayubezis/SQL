-- Primeiro criar as tabelas para armazenar todos os personagens, armas, chefões e criaturas do jogo The Legend of Zelda: BOTW
CREATE TABLE PERSONAGENS (
ID_personagem INT PRIMARY KEY IDENTITY,
Nome VARCHAR(30) NOT NULL,
Raça VARCHAR(30),
Genero CHAR(1) --Armazenaremos com M ou F (Masculino/Feminino)
);

CREATE TABLE ARMAS (
ID_arma INT PRIMARY KEY IDENTITY,
Nome VARCHAR(30) NOT NULL,
Permite_escudo BIT, --Armazenaremos com 0 (Falso) ou 1 (Verdadeiro)
Ataque INT,
Durabilidade INT
);

CREATE TABLE CHEFOES (
ID_chefao INT PRIMARY KEY IDENTITY,
Nome VARCHAR(30) NOT NULL,
HP INT,
Item_drop VARCHAR(70)
);

CREATE TABLE CRIATURAS (
ID_criatura INT PRIMARY KEY IDENTITY,
Nome VARCHAR(30) NOT NULL,
Habitat VARCHAR(30),
Valor_em_rupia INT,
Item_drop VARCHAR(70)
);

-- Agora vamos inserir os valores nas tabelas!

INSERT INTO PERSONAGENS(Nome, Raça, Genero) VALUES
('Link', 'Hyliano', 'M'),
('Princesa Zelda', 'Hyliana', 'F'),
('Revali', 'Rito', 'M'),
('Daruk', 'Goron', 'M'),
('Mipha', 'Zora', 'F'),
('Urbosa', 'Gerudo', 'F'),
('Impa', 'Sheikah', 'F'),
('Rei Rhoam', 'Hyliano', 'M'),
('Paya', 'Sheikah', 'M'),
('Hestu', 'Korok', 'M'),
('Kass', 'Rito', 'M'),
('Teba', 'Rito', 'M'),
('Sidon', 'Zora', 'M'),
('Yunobo', 'Goron', 'M'),
('Riju', 'Gerudo', 'F'),
('Beedle', 'Hylian', 'M'), 
('Robbie', 'Hyliano', 'M'),
('Purah', 'Sheikah', 'F'),
('Hylia', 'Deusa', 'F');


INSERT INTO ARMAS(Nome,Permite_escudo,Ataque,Durabilidade) VALUES
('Tree Branch', 1, 2, 20),
('Wooden Sword', 1, 4, 40),
('Training Sword', 1, 6, 60),
('Soldiers Broadsword', 1, 14, 20),
('Knights Broadsword', 1, 26, 60),
('Royal Broadsword', 1, 36, 120),
('Forest Dwellers Sword', 1, 40, 50),
('Zora Sword', 1, 45, 60),
('Feathered Edge', 1, 50, 60),
('Gerudo Scimitar', 1, 20, 16),
('Moonlight Scimitar', 1, 25, 32),
('Scimitar of the Seven', 1, 32, 60),
('Eightfold Blade', 1, 40, 50),
('Ancient Short Sword', 1, 40, 54),
('Rusty Broadsword', 1, 10, 16),
('Royal Guards Sword', 1, 48, 14),
('Flameblade', 1, 24, 32),
('Frostblade', 1, 24, 32),
('Thunderblade', 1, 24, 32),
('Bokoblin Arm', 1, 6, 12),
('Lizal Forked Boomerang', 1, 16, 24),
('Guardian Sword', 1, 20, 20),
('Guardian Sword+', 1, 30, 40),
('Guardian Sword++', 1, 40, 40),
('Ancient Short Sword+', 1, 54, 54),
('Rusty Claymore', 0, 15, 20),
('Royal Guards Claymore', 0, 72, 14),
('Stone Smasher', 0, 42, 40),
('Cobble Crusher', 0, 15, 30),
('Drillshaft', 0, 10, 40),
('Woodcutters Axe', 0, 3, 60),
('Double Axe', 0, 24, 25),
('Iron Sledgehammer', 0, 12, 40),
('Giant Boomerang', 0, 15, 27),
('Travelers Claymore', 0, 10, 20),
('Soldiers Claymore', 0, 20, 40),
('Knights Claymore', 0, 38, 60),
('Royal Claymore', 0, 52, 116),
('Silver Longsword', 0, 32, 22),
('Ceremonial Trident', 0, 14, 70),
('Lightscale Trident', 0, 22, 70),
('Fishing Harpoon', 0, 8, 25),
('Lynel Sword', 1, 24, 26),
('Mighty Lynel Sword', 1, 36, 32),
('Savage Lynel Sword', 1, 58, 40),
('Savage Lynel Crusher', 0, 78, 40),
('Moblin Club', 0, 24, 12),
('Dragonbone Boko Bat', 0, 24, 18),
('Spiked Boko Bat', 1, 12, 24),
('Dragonbone Boko Club', 1, 36, 24),
('Lynel Crusher', 0, 36, 44),
('Feathered Spear', 0, 10, 35),
('Gerudo Spear', 0, 16, 35),
('Silverscale Spear', 0, 14, 70),
('Zora Spear', 0, 22, 70),
('Lightscale Trident', 0, 22, 70),
('Drillshaft', 0, 10, 40),
('Boomerang', 1, 5, 15),
('Spring-Loaded Hammer', 0, 4, 40),
('Windcleaver', 0, 40, 60),
('Eightfold Longblade', 0, 60, 90),
('Ancient Bladesaw', 0, 55, 54),
('Rusty Halberd', 0, 12, 16),
('Royal Guards Spear', 0, 26, 14),
('Flamespear', 0, 24, 32),
('Frostspear', 0, 24, 32),
('Thunderspear', 0, 24, 32),
('Boko Spear', 0, 8, 12),
('Lizal Spear', 0, 14, 24),
('Guardian Spear', 0, 20, 20),
('Guardian Spear+', 0, 30, 40),
('Guardian Spear++', 0, 40, 40),
('Ancient Spear', 0, 30, 54),
('Forest Dwellers Spear', 0, 22, 40),
('Rusty Claymore', 0, 15, 20);

INSERT INTO CHEFOES(Nome,HP,Item_drop) VALUES
('Stone Talus', 300, 'Flint/Amber/Opal/Ruby'),
('Stone Talus (Luminous)', 600, 'Flint/Amber/Opal/Topaz/Luminous Stone/Diamond'),
('Stone Talus (Rare)', 900, 'Flint/Amber/Opal/Ruby/Topaz/Sapphire/Diamond'),
('Igneo Talus', 800, 'Flint/Opal/Ruby/Diamond'),
('Frost Talus', 800, 'Flint/Opal/Sapphire/Diamond'),
('Hinox', 600, 'Hinox Toenail/Hinox Tooth/Hinox Guts'),
('Hinox (Youngest Kin)', 600, 'Hinox Toenail/Hinox Tooth/Hinox Guts'),
('Hinox (Middle Kin)', 600, 'Hinox Toenail/Hinox Tooth/Hinox Guts'),
('Hinox (Oldest Kin)', 600, 'Hinox Toenail/Hinox Tooth/Hinox Guts'),
('Blue Hinox', 600, 'Hinox Toenail/Hinox Tooth/Hinox Guts'),
('Black Hinox', 600, 'Hinox Toenail/Hinox Tooth/Hinox Guts'),
('Stalnox', 1000, 'Rare Weapons/Hinox Tooth/Hylian Shield'),
('Molduga', 1500, 'Molduga Fins/Molduga Guts'),
('Waterblight Ganon', 1500, 'Heart Container/Miphas Grace'),
('Fireblight Ganon', 1500, 'Heart Container/Daruks Protection'),
('Windblight Ganon', 1500, 'Heart Container/Revalis Gale'),
('Thunderblight Ganon', 1500, 'Heart Container/Urbosas Fury'),
('Master Kohga', NULL, 'Thunder Helm'),
('Calamity Ganon', 8000, 'Bow of Light');

INSERT INTO CRIATURAS(Nome,Habitat,Valor_em_rupia,Item_drop) VALUES
('Horse', 'All places', NULL, NULL),
('Giant Horse', 'Taobab Grassland', NULL, NULL),
('White Horse', 'All places', NULL, NULL),
('Lord of the Mountain', 'Satori Mountain', NULL, NULL),
('Stalhorse', 'Hebra Mountains', NULL, NULL),
('Donkey', 'Stables', NULL, NULL),
('Sand Seal', 'Gerudo Desert', NULL, NULL),
('Patricia', 'Gerudo Desert', NULL, NULL),
('Bushy-Tailed Squirrel', 'Hyrule Ridge', NULL, 'Acorn'),
('Woodland Boar', 'Hyrule Field', NULL, 'Raw Meat'),
('Red-Tusked Boar', 'Akkala Highlands', NULL, 'Raw Prime Meat'),
('Mountain Goat', 'Hyrule Ridge', NULL, 'Raw Meat'),
('White Goat', 'West Necluda', NULL, NULL),
('Mountain Buck', 'Hyrule Field', NULL, NULL),
('Mountain Doe', 'Hyrule Field', NULL, 'Raw Prime Meat'),
('Water Buffalo', 'Lanaryu Wetlands', NULL, 'Raw Gourmet Meat'),
('Hateno Cow', 'East Necluda', NULL, NULL),
('Highland Sheep', 'East Necluda', NULL, NULL),
('Grassland Fox', 'Hyrule Field', NULL, 'Raw Meat'),
('Snowcoat Fox', 'Hebra Mountains', NULL, 'Ice Prime Meat'),
('Maraudo Wolf', 'Tabantha Frontier', NULL, 'Raw Gourmet Meat'),
('Wastelend Coyote', 'Gerudo Desert', NULL, 'Raw Gourmet Meat'),
('Cold-Footed Wolf', 'Hebra Mountains', NULL, 'Raw Gourmet Meat'),
('Tabantha Moose', 'Hebra Mountains', NULL, 'Raw Gourmet Meat'),
('Great-Horned Rhinoceros', 'Hebra Mountains', NULL, 'Raw Gourmet Meat'),
('Honeyvore Bear', 'Akkala Highlands', NULL, 'Raw Prime Meat'),
('Grizzlemaw Bear', 'Hebra Mountains', NULL, 'Raw Prime Meat'),
('Hylian Retriever', 'All Map', NULL, NULL),
('Blupee', 'Hyrule Kingdom', NULL, 'Rupees'),
('Sparrow', 'Hyrule Fields', NULL, 'Chickaloo Tree Nuts'),
('Pigeon', 'Hyrule Ridge', NULL, 'Raw Bird Drumstick'),
('Mountain Crow', 'Hyrule Ridge', NULL, 'Raw Bird Drumstick'),
('Bright-Chested Duck', 'Hyrule Ridge', NULL, 'Raw Bird Drumstick'),
('Blue-Winged Heron', 'Hyrule Ridge', NULL, 'Raw Bird Drumstick'),
('Pink Heron', 'Hyrule Ridge', NULL, 'Raw Bird Drumstick'),
('Islander Hawk','Hyrule Ridge', NULL, 'Raw Bird Drumstick'),
('Seagull', 'Oceans', NULL, NULL),
('Eldin Ostrich', 'Eldin Canyon', NULL, 'Raw Whole Bird/Raw Bird Thigh'),
('Cucco', 'All map', NULL, NULL),
('Hyrule Bass', 'Hyrule Field', 6, NULL),
('Hearty Bass', 'West Necluda', 18, NULL),
('Staminoka Bass', 'Hyrule Field', 18, NULL),
('Hearty Salmon', 'Tabantha Frontier', 10, NULL),
('Chillfin Trout', 'Tabantha Frontier', 6, NULL),
('Sizzlefin Trout', 'Eldin Canyon', 6, NULL),
('Voltfin Trout', 'Tabantha Frontier', 6, NULL),
('Stealthfin Trout', 'Eldin Mountains', 10, NULL),
('Mighty Carp', 'Akkala Highlands', 10, NULL),
('Armored Carp', 'East Necluda', 10, NULL),
('Sanke Carp', 'Kakariko Village', 20, NULL),
('Mighty Porgy', 'Necluda Sea', 10, NULL),
('Armored Porgy', 'Necluda Sea', 10, NULL),
('Sneaky River Snail', 'West Necluda', 6, NULL),
('Hearty Blueshell Snail', 'Necluda Sea', 15, NULL),
('Razorclaw Crab', 'Necluda Sea', 8, NULL),
('Ironsehll Crab', 'Necluda Sea', 8, NULL),
('Bright-Eyed Crab', 'Eldin Canyon', 10, NULL),
('Winterwing Butterfly', 'Hyrule Ridge', 2, NULL),
('Summerwing Butterfly', 'Eldin Mountains', 2, NULL),
('Thunderwing Butterfly', 'Hyrule Ridge', 2, NULL),
('Smotherwing Butterfly', 'Eldin Canyon', 2, NULL),
('Cold Darner', 'Hyrule Ridge', 2, NULL),
('Warm Darner', 'Hyrule Field', 2, NULL),
('Electric Darner', 'Rutile Lake', 2, NULL),
('Restless Cricket', 'Hyrule Field', 2, NULL),
('Bladed Rhino Beetle', 'West Necluda', 4, NULL),
('Rugged Rhino Beetle', 'Hyrule Field', 4, NULL),
('Energetic Rhino Beetle', 'West Necluda', 4, NULL),
('Sunset Firefly', 'West Necluda', 2, NULL),
('Hot-Footed Frog', 'Hyrule Ridge', 2, NULL),
('Tireless Frog', 'Hyrule Ridge', 20, NULL),
('Hightail Lizard', 'West Necluda', 2, NULL),
('Hearty Lizard', 'Necluda Sea', 20, NULL),
('Fireproof Lizard', 'Eldin Canyon', 5, NULL);

-- Agora podemos começar as consultas :)

-- Consultar todas as armas que permitem o uso simultâneo do escudo 
SELECT Nome, Ataque, Durabilidade
FROM ARMAS
WHERE Permite_escudo = 1;

-- Consultar todos os chefões com mais de 1000 de HP
SELECT Nome, HP, Item_drop
FROM CHEFOES
WHERE HP > 1000;

-- Consultar as criaturas que habitam Hyrule Field
SELECT Nome, Item_drop
FROM CRIATURAS
WHERE Habitat = 'Hyrule Field';

-- Consultar todas as armas que não permitem o uso do escudo e têm um ataque maior que 30:
SELECT Nome, Ataque, Durabilidade
FROM ARMAS
WHERE Permite_escudo = 0 AND Ataque > 30;

-- Consultar todos os personagens que são da raça Rito
SELECT Nome, Raça, Genero
FROM PERSONAGENS
WHERE Raça = 'Rito';

-- Consultar as armas em ordem decrescente de ataque
SELECT Nome, Ataque, Durabilidade
FROM ARMAS
ORDER BY Ataque DESC;

-- Consultar a quantidade total de criaturas no banco de dados
SELECT COUNT(*) AS Total_Criaturas
FROM CRIATURAS;

-- Consultar as armas que possuem a palavra "sword" em seu nome
SELECT Nome, Ataque, Durabilidade
FROM ARMAS
WHERE Nome LIKE '%sword%';

-- Consultar os chefões que dropam "Flint"
SELECT Nome, HP, Item_drop
FROM CHEFOES
WHERE Item_drop LIKE '%Flint%';

-- Consultar os personagens femininos em ordem alfabética
SELECT Nome, Raça
FROM PERSONAGENS
WHERE Genero = 'F'
ORDER BY Nome ASC;

-- Consultar a média de HP dos chefões
SELECT AVG(HP) AS Media_HP
FROM CHEFOES;

-- Consultar as criaturas cujo habitat começa com a letra "A"
SELECT Nome, Habitat
FROM CRIATURAS
WHERE Habitat LIKE 'A%';

-- Consultar criaturas que não dropam itens
SELECT Nome, Habitat
FROM CRIATURAS
WHERE Item_drop IS NULL;

-- Consultar os chefões que têm HP maior que a média de HP de todos os chefões
SELECT Nome, HP
FROM CHEFOES
WHERE HP > (SELECT AVG(HP) FROM CHEFOES);

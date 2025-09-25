CREATE TABLE IF NOT EXISTS bolimlar (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nomi TEXT UNIQUE NOT NULL,
    xona_raqami INTEGER UNIQUE,
    telefon TEXT UNIQUE
);

CREATE TABLE IF NOT EXISTS shifokorlar (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    ism TEXT NOT NULL,
    familiya TEXT NOT NULL,
    bolim_id INTEGER,
    FOREIGN KEY (bolim_id) REFERENCES bolimlar(id)
);

CREATE TABLE IF NOT EXISTS bemorlar(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    ism TEXT NOT NULL,
    familiya TEXT NOT NULL,
    shifokor_id INTEGER,
    kasallik TEXT,
    FOREIGN KEY (shifokor_id) REFERENCES shifokorlar(id)
);

INSERT INTO bolimlar (nomi, xona_raqami, telefon) VALUES
('Terapiya', 101, '2001'),
('Jarrohlik', 201, '2002'),
('Pediatriya', 301, '2003'),
('Kardiologiya', 401, '2004'),
('Nevrologiya', 501, '2005');

INSERT INTO shifokorlar (ism, familiya, bolim_id) VALUES
('Aziz', 'Karimov', 4),
('Gulnora', 'Toshieva', 2),
('Nargiza', 'Yunusova', 1),
('Bobur', 'Rahimov', 4),
('Dilnova', 'Alimova', 3);

INSERT INTO bemorlar (ism, familiya, shifokor_id, kasallik) VALUES
('Ali', 'Valiyev', 3, 'Shamollash'),
('Maryam', 'Qodirova', 1, 'appendist'),
('Jasur', 'Toshev', 5, 'Grip'),
('Nodira', 'Karimova', 2, 'Yurak kasalligi'),
('Bekzod', 'Rahimov', 4, 'Bosh ogrigi');

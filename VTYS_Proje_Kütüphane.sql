CREATE DATABASE KUTUPHANE

USE KUTUPHANE
GO

				-- TABLO OLUÞTURMA


CREATE TABLE OGRENCI(
	NO INT IDENTITY(1,1) PRIMARY KEY,
	AD NVARCHAR(50) NOT NULL,
	ADRES NVARCHAR(50) NOT NULL,
);

CREATE TABLE OGRENCI_TELEFON(
    ID INT IDENTITY(1,1) PRIMARY KEY, 
    O_NO INT NOT NULL,
    TELEFON NVARCHAR(20) NOT NULL,
    FOREIGN KEY (O_NO) REFERENCES OGRENCI(NO)
);


CREATE TABLE YAYINEVI(
	AD NVARCHAR(50) PRIMARY KEY NOT NULL,
	ADRES NVARCHAR(50) NOT NULL,
);


CREATE TABLE YAYINEVI_TELEFON(
	ID INT IDENTITY(1,1) PRIMARY KEY, 
	Y_AD NVARCHAR(50) NOT NULL,
	TELEFON NVARCHAR(20) NOT NULL,
	FOREIGN KEY(Y_AD) REFERENCES YAYINEVI(AD)
);


CREATE TABLE YAZAR(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	AD NVARCHAR(50)  NOT NULL,
	ADRES NVARCHAR(100) NOT NULL
);

CREATE TABLE KITAP(
	ISBN BIGINT PRIMARY KEY,
	BASLIK NVARCHAR(50) NOT NULL,
	Y_AD NVARCHAR(50) NOT NULL,
	FOREIGN KEY (Y_AD) REFERENCES YAYINEVI(AD),
	Y_ID INT NOT NULL,
	FOREIGN KEY (Y_ID) REFERENCES YAZAR(ID)
);


CREATE TABLE KITAP_OGRENCI(
	TARIH DATE PRIMARY KEY,
	K_ISBN BIGINT NOT NULL,
	O_NO INT NOT NULL,
	FOREIGN KEY (K_ISBN) REFERENCES KITAP(ISBN),
	FOREIGN KEY (O_NO) REFERENCES OGRENCI(NO)
);



				-- VERÝ EKLEME

INSERT INTO OGRENCI (AD, ADRES) VALUES
('Ahmet Yýlmaz', 'Ankara'),
('Ayþe Demir', 'Ýstanbul'),
('Mehmet Kaya', 'Ýzmir'),
('Elif Þahin', 'Bursa'),
('Canan Yýldýz', 'Konya'),
('Kerem Aksoy', 'Adana'),
('Zeynep Uçar', 'Antalya'),
('Murat Karaca', 'Trabzon'),
('Deniz Aksu', 'Samsun'),
('Fatma Yalçýn', 'Mersin'),
('Ece Altun', 'Ankara'),
('Selim Öztürk', 'Ýstanbul'),
('Nisa Koç', 'Kayseri'),
('Barýþ Güner', 'Kocaeli'),
('Sibel Yýlmaz', 'Eskiþehir'),
('Onur Arslan', 'Malatya'),
('Gamze Aydýn', 'Sivas'),
('Hakan Kurt', 'Amasya'),
('Hilal Yurt', 'Gaziantep'),
('Berk Çetin', 'Ordu'),
('Furkan Arý', 'Ankara'),
('Derya Çakýr', 'Ýstanbul'),
('Rýza Turan', 'Ýzmir'),
('Tuba Uslu', 'Adana'),
('Melike Soylu', 'Antalya'),
('Alper Þimþek', 'Mersin'),
('Sinem Kutlu', 'Konya'),
('Göktuð Demir', 'Ýstanbul'),
('Aslý Ertem', 'Ankara'),
('Yiðit Bulut', 'Eskiþehir'),
('Mine Avcý', 'Kütahya'),
('Okan Er', 'Çorum'),
('Tuðçe Ar', 'Manisa'),
('Arda Yazar', 'Sakarya'),
('Eylül Kar', 'Çanakkale'),
('Bora Ersoy', 'Hatay'),
('Seda Badem', 'Rize'),
('Naz Kurt', 'Erzurum'),
('Tamer Gül', 'Kýrýkkale'),
('Iþýl Koçak', 'Bolu');


INSERT INTO OGRENCI_TELEFON(O_NO, TELEFON) VALUES
(1, '0532 111 22 33'),
(1, '0212 444 55 66'),
(2, '0541 222 33 44'),
(3, '0507 555 66 77'),
(3, '0312 333 44 55'),
(4, '0535 888 77 66'),
(5, '0506 999 55 44'),
(6, '0544 444 33 22'),
(6, '0216 222 11 00'),
(7, '0507 888 22 11'),
(8, '0536 111 44 55'),
(9, '0542 555 77 66'),
(10, '0533 909 80 70'),
(10, '0312 221 19 99'),
(11, '0538 700 11 22'),
(12, '0505 440 55 33'),
(12, '0212 320 10 20'),
(13, '0534 900 33 44'),
(14, '0507 770 40 50'),
(14, '0316 555 22 11'),
(15, '0531 200 50 60'),
(16, '0544 620 33 00'),
(17, '0506 880 44 11'),
(17, '0312 330 22 77'),
(18, '0532 101 88 99'),
(19, '0541 600 70 80'),
(20, '0504 900 20 10'),
(21, '0535 123 45 67'),
(21, '0216 333 44 11'),
(22, '0542 333 88 22'),
(23, '0539 444 55 66'),
(24, '0507 666 77 88'),
(24, '0312 200 40 50'),
(25, '0531 550 33 11'),
(26, '0544 410 20 30'),
(26, '0316 300 90 10'),
(27, '0506 720 32 11'),
(28, '0533 870 66 55'),
(28, '0212 990 77 44'),
(29, '0545 110 23 34'),
(30, '0534 220 44 55'),
(31, '0538 330 55 66'),
(32, '0505 440 66 77'),
(33, '0536 880 11 22'),
(34, '0543 910 88 99'),
(34, '0312 870 66 11'),
(35, '0532 770 44 55'),
(36, '0537 660 11 22'),
(37, '0504 990 33 44'),
(38, '0542 220 55 66'),
(39, '0542 220 55 64'),
(40, '0542 220 55 69');



INSERT INTO YAYINEVI (AD, ADRES) VALUES
('Alfa Yayýnlarý', 'Ýstanbul'),
('Beta Kitap', 'Ankara'),
('Kule Yayýncýlýk', 'Ýzmir'),
('Mavi Kalem', 'Ýstanbul'),
('Güneþ Yayýnlarý', 'Bursa'),
('Martý Kitap', 'Antalya'),
('Papatya Basým', 'Konya'),
('Anka Yayýncýlýk', 'Kayseri'),
('Derya Kitap', 'Mersin'),
('Tuna Basým', 'Samsun'),
('Atlas Yayýnlarý', 'Trabzon'),
('Kum Saati', 'Gaziantep'),
('Mor Defter', 'Eskiþehir'),
('Modern Kitap', 'Kocaeli'),
('Ayýþýðý Basým', 'Adana');


INSERT INTO YAYINEVI_TELEFON(Y_AD,TELEFON) VALUES
('Alfa Yayýnlarý', '0212 789 10 11'),
('Beta Kitap', '0312 222 33 44'),
('Beta Kitap', '0312 555 66 77'),
('Kule Yayýncýlýk', '0542 999 00 11'),
('Mavi Kalem', '0212 400 55 99'),
('Mavi Kalem', '0212 400 66 88'),
('Güneþ Yayýnlarý', '0224 300 40 50'),
('Martý Kitap', '0242 555 12 34'),
('Papatya Basým', '0332 700 44 55'),
('Anka Yayýncýlýk', '0352 210 33 22'),
('Derya Kitap', '0324 400 22 11'),
('Derya Kitap', '0324 400 33 22'),
('Tuna Basým', '0362 880 55 66'),
('Atlas Yayýnlarý', '0462 770 44 33'),
('Kum Saati', '0342 550 66 11'),
('Mor Defter', '0222 330 55 44'),
('Modern Kitap', '0262 700 90 10'),
('Ayýþýðý Basým', '0322 600 30 20'),
('Ayýþýðý Basým', '0322 600 40 50'),
('Güneþ Yayýnlarý', '0224 300 40 51');




INSERT INTO YAZAR (AD, ADRES) VALUES
('Orhan Pamuk', 'Ýstanbul'),
('Yaþar Kemal', 'Adana'),
('Sabahattin Ali', 'Edirne'),
('Ahmet Ümit', 'Ýstanbul'),
('Elif Þafak', 'Ankara'),
('Ayþe Kulin', 'Ýstanbul'),
('Zülfü Livaneli', 'Muðla'),
('Halide Edip Adývar', 'Ýstanbul'),
('Reþat Nuri Güntekin', 'Ýstanbul'),
('Peyami Safa', 'Ýstanbul'),
('Oðuz Atay', 'Ankara'),
('Aziz Nesin', 'Ýstanbul'),
('Cemal Süreya', 'Erzincan'),
('Attila Ýlhan', 'Ýzmir'),
('Can Yücel', 'Muðla'),
('Refik Halit Karay', 'Ýstanbul'),
('Halikarnas Balýkçýsý', 'Bodrum'),
('Tarýk Buðra', 'Konya'),
('Orhan Veli', 'Ýstanbul'),
('Cahit Zarifoðlu', 'Ankara');



INSERT INTO KITAP(ISBN, BASLIK, Y_AD, Y_ID) VALUES
(9786050001001, 'Masumiyet Müzesi', 'Alfa Yayýnlarý', 1),
(9786050001002, 'Kýrmýzý Saçlý Kadýn','Tuna Basým', 1),
(9786050001003, 'Kar', 'Kule Yayýncýlýk', 1),
(9786050001004, 'Ýnce Memed','Beta Kitap', 2),
(9786050001005, 'Binboðalar Efsanesi','Kule Yayýncýlýk', 2),
(9786050001006, 'Kuyucaklý Yusuf', 'Kule Yayýncýlýk', 3),
(9786050001007, 'Ýçimizdeki Þeytan','Beta Kitap', 3),
(9786050001008, 'Baba ve Piç','Derya Kitap', 5),
(9786050001009, 'Araf','Güneþ Yayýnlarý', 5),
(9786050001010, 'Kardeþimin Hikayesi','Kum Saati', 4),
(9786050001011, 'Beyoðlu Rapsodisi','Atlas Yayýnlarý', 4),
(9786050001012, 'Sevdalinka','Ayýþýðý Basým', 6),
(9786050001013, 'Adý: Aylin','Papatya Basým', 6),
(9786050001014, 'Serenad','Anka Yayýncýlýk', 7),
(9786050001015, 'Huzursuzluk', 'Kule Yayýncýlýk', 7),
(9786050001016, 'Sinekli Bakkal','Güneþ Yayýnlarý', 8),
(9786050001017, 'Handan','Mavi Kalem', 8),
(9786050001018, 'Çalýkuþu','Derya Kitap', 9),
(9786050001019, 'Yeþil Gece', 'Alfa Yayýnlarý', 9),
(9786050001020, 'Fatih-Harbiye','Kum Saati', 10),
(9786050001021, 'Dokuzuncu Hariciye Koðuþu', 'Kule Yayýncýlýk', 10),
(9786050001022, 'Tutunamayanlar','Mavi Kalem', 11),
(9786050001023, 'Bir Bilim Adamýnýn Romaný','Ayýþýðý Basým', 11),
(9786050001024, 'Zübük','Modern Kitap', 12),
(9786050001025, 'Yaþar Ne Yaþar Ne Yaþamaz','Mor Defter', 12),
(9786050001026, 'Üvercinka','Beta Kitap', 13),
(9786050001027, 'Sevda Sözleri','Kule Yayýncýlýk', 13),
(9786050001028, 'Ben Sana Mecburum','Mor Defter', 14),
(9786050001029, 'Sisler Bulvarý','Atlas Yayýnlarý', 14),
(9786050001030, 'Canfeda','Anka Yayýncýlýk', 15),
(9786050001031, 'Güle Güle Hatýralar','Beta Kitap', 15),
(9786050001032, 'Memleket Hikayeleri','Modern Kitap', 16),
(9786050001033, 'Gurbet Hikayeleri','Derya Kitap', 16),
(9786050001034, 'Aganta Burina Burinata','Tuna Basým', 17),
(9786050001035, 'Mavi Sürgün','Mavi Kalem', 17),
(9786050001036, 'Küçük Aða', 'Güneþ Yayýnlarý', 18),
(9786050001037, 'Osmancýk', 'Kule Yayýncýlýk', 18),
(9786050001038, 'Garip','Martý Kitap', 19),
(9786050001039, 'Destan Gibi','Modern Kitap', 19),
(9786050001040, 'Yedi Güzel Adam','Beta Kitap', 20),
(9786050001041, 'Ýns','Martý Kitap', 20),

(9786050001042, 'Sessiz Ev','Alfa Yayýnlarý', 1),
(9786050001043, 'Benim Adým Kýrmýzý', 'Papatya Basým', 1),
(9786050001044, 'Ortadirek','Mor Defter', 2),
(9786050001045, 'Yer Demir Gök Bakýr','Kule Yayýncýlýk', 2),
(9786050001046, 'Kürk Mantolu Madonna','Derya Kitap', 3),
(9786050001047, 'Sýrça Köþk','Anka Yayýncýlýk', 12),
(9786050001048, 'Huzur','Tuna Basým', 9),
(9786050001049, 'Aþk-ý Memnu','Kule Yayýncýlýk', 8),
(9786050001050, 'Beyoðlu''nun En Güzel Abisi','Güneþ Yayýnlarý', 4),
(9786050001051, 'Sadakat','Martý Kitap', 5),
(9786050001052, 'Bir Gün Tek Baþýna','Beta Kitap', 14),
(9786050001053, 'Tehlikeli Oyunlar','Modern Kitap', 11),
(9786050001054, 'Þeker Portakalý','Mor Defter', 12),
(9786050001055, 'Aylak Adam', 'Beta Kitap', 10),
(9786050001056, 'Yeni Hayat', 'Kum Saati', 1),
(9786050001057, 'Haremde Yaþam','Martý Kitap', 8),
(9786050001058, 'Aþk','Tuna Basým', 5),
(9786050001059, 'Leyla ile Mecnun','Mavi Kalem', 7),
(9786050001060, 'Ýstanbul Hatýrasý','Kum Saati', 4),
(9786050001061, 'Kaplanýn Sýrtýnda','Kum Saati', 10),
(9786050001062, 'Mutluluk','Kule Yayýncýlýk', 7),
(9786050001063, 'Son Ada', 'Anka Yayýncýlýk', 7),
(9786050001064, 'Ateþ Etme Ýstanbul','Papatya Basým', 14),
(9786050001065, 'Korkuyorum Anne','Ayýþýðý Basým', 11),
(9786050001066, 'Gün Olur Asra Bedel','Alfa Yayýnlarý', 13),
(9786050001067, 'Sevgili Arsýz Ölüm','Atlas Yayýnlarý', 6),
(9786050001068, 'Süper Baba','Kule Yayýncýlýk', 12),
(9786050001069, 'Sýr', 'Anka Yayýncýlýk', 15),
(9786050001070, 'Gece Yarýsý Kütüphanesi','Mor Defter', 6),
(9786050001071, 'Kýrk Yalan','Beta Kitap', 12),
(9786050001072, 'Satranç', 'Beta Kitap', 13),
(9786050001073, 'Kýrlangýç Çýðlýðý','Martý Kitap', 4),
(9786050001074, 'Gönül Haným','Mavi Kalem', 16),
(9786050001075, 'Eylül','Güneþ Yayýnlarý', 10),
(9786050001076, 'Aylak Adam', 'Mavi Kalem', 13),
(9786050001077, 'Uzun Hikaye','Mor Defter', 18),
(9786050001078, 'Sahnenin Dýþýndakiler','Alfa Yayýnlarý', 9),
(9786050001079, 'Kayýp Söz','Papatya Basým', 20),
(9786050001080, 'Sýçrama Tahtasý','Papatya Basým', 17);



INSERT INTO KITAP_OGRENCI(TARIH, K_ISBN, O_NO) VALUES
('2023-01-12', 9786050001001, 1),
('2023-01-15', 9786050001004, 2),
('2023-01-18', 9786050001006, 3),
('2023-01-22', 9786050001021, 28),
('2023-02-05', 9786050001002, 10),
('2023-02-08', 9786050001005, 33),
('2023-02-12', 9786050001007, 32),
('2023-02-20', 9786050001009, 5),
('2023-03-01', 9786050001010, 12),
('2023-03-11', 9786050001012, 15),
('2023-03-15', 9786050001014, 8),
('2023-03-20', 9786050001016, 17),
('2023-04-01', 9786050001018, 9),
('2023-04-10', 9786050001020, 22),
('2023-04-18', 9786050001022, 19),
('2023-04-25', 9786050001024, 14),
('2023-05-05', 9786050001026, 29),
('2023-05-15', 9786050001028, 23),
('2023-05-22', 9786050001030, 18),
('2023-05-30', 9786050001032, 37),
('2023-06-04', 9786050001034, 10),
('2023-06-10', 9786050001036, 24),
('2023-06-15', 9786050001038, 6),
('2023-06-20', 9786050001040, 39),
('2023-06-25', 9786050001041, 3),
('2023-07-01', 9786050001043, 27),
('2023-07-05', 9786050001045, 26),
('2023-07-10', 9786050001047, 12),
('2023-07-15', 9786050001049, 40),
('2023-07-20', 9786050001051, 6),
('2023-07-25', 9786050001053, 2),
('2023-08-01', 9786050001055, 30),
('2023-08-05', 9786050001057, 36),
('2023-08-10', 9786050001059, 4),
('2023-08-15', 9786050001061, 12),
('2023-08-20', 9786050001063, 18),
('2023-08-25', 9786050001065, 15),
('2023-08-30', 9786050001067, 11),
('2023-09-05', 9786050001069, 28),
('2023-09-10', 9786050001071, 40),
('2023-09-15', 9786050001073, 24),
('2023-09-20', 9786050001075, 35),
('2023-09-25', 9786050001077, 13),
('2023-09-30', 9786050001079, 37);


				-- SQL SORGULARI


-- Seçme

SELECT * FROM OGRENCI
SELECT * FROM OGRENCI_TELEFON

SELECT * FROM YAYINEVI
SELECT * FROM YAYINEVI_TELEFON

SELECT * FROM YAZAR
SELECT * FROM KITAP
SELECT * FROM KITAP_OGRENCI

SELECT ADRES FROM YAZAR

SELECT NO,AD FROM OGRENCI
SELECT ISBN, BASLIK FROM KITAP

SELECT BASLIK,Y_AD FROM KITAP WHERE ISBN=9786050001004

SELECT * FROM KITAP_OGRENCI WHERE TARIH>'2023-05-22' ORDER BY TARIH


-- Güncelleme 
UPDATE OGRENCI_TELEFON SET TELEFON= '0532 111 22 33' WHERE O_NO=1
UPDATE YAYINEVI SET ADRES='Sivas' WHERE AD='Tuna Basým'
UPDATE KITAP_OGRENCI SET O_NO='13' WHERE K_ISBN='9786050001043'


-- Silme
DELETE FROM OGRENCI_TELEFON  WHERE TELEFON= '0532 111 22 33'
DELETE FROM KITAP_OGRENCI  WHERE O_NO= 2
-- Drop kullanýmý örneklendirilmek için silinmiþtir. Geri eklenmesi daha saðlýklýdýr.
DROP TABLE KITAP_OGRENCI 

DROP DATABASE KUTUPHANE -- Veritabanýný siler.
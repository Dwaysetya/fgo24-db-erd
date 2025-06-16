CREATE TABLE kategori (
    id_kategori VARCHAR(255) PRIMARY KEY,
    genre VARCHAR(100),
    jenis VARCHAR(100)
);

CREATE TABLE rak_buku (
    id_rak VARCHAR(255) PRIMARY KEY,
    kapasitas INTEGER,
    no_rak VARCHAR(100)
);

CREATE TABLE petugas (
    id_petugas VARCHAR(255) PRIMARY KEY,
    nama_petugas VARCHAR(100) 
);


CREATE TABLE buku (
    id_buku VARCHAR(255) PRIMARY KEY,
    id_petugas VARCHAR(255) REFERENCES petugas(id_petugas),
    id_kategori VARCHAR(255) REFERENCES kategori(id_kategori),
    id_rak VARCHAR(255) REFERENCES rak_buku(id_rak),
    judul_buku VARCHAR(100),
    isbn VARCHAR(100),
    penulis VARCHAR(100),
    tgl_rilis DATE,
    penerbit VARCHAR(100),
    cetakan VARCHAR(100)

);

CREATE TABLE peminjam (
    id_peminjam VARCHAR(255) PRIMARY KEY,
    nama_peminjam VARCHAR(100),
    no_hp VARCHAR(100),
    alamat VARCHAR(200)
);

CREATE TABLE transaksi (
    id_transaksi VARCHAR(255) PRIMARY KEY,
    id_buku VARCHAR(255) REFERENCES buku(id_buku),
    id_peminjam VARCHAR(255) REFERENCES peminjam(id_peminjam),
    tgl_pinjam DATE,
    tgl_kembali DATE,
    dikembalikan BOOLEAN
);

INSERT INTO rak_buku(id_rak, no_rak, kapasitas)
VALUES
()

INSERT INTO petugas(id_petugas, nama_petugas)
VALUES
('1','Dway'),
('2','Setya'),
('3','Budi'),
('4','Yusuf'),
('5','Faisal'),
('6','Yasir'),
('7','Nanda'),
('8','Naldi'),
('9','Hosea'),
('10','Denis');



INSERT INTO kategori(id_kategori, genre, jenis)
VALUES
('1','Drama Sejarah','Fiksi'),
('2','Pengembangan Diri','Non-Fiksi'),
('3','Sejarah','Non-Fiksi'),
('4','Romansa','Novel'),
('5','Keuangan','Non-Fiksi'),
('6','Inspiratif','Fiksi'),
('7','Motivasi','Novel'),
('8','Filsafat','Non-Fiksi'),
('9','Ilmu Pengetahuan','Ensiklopedia'),
('10','Biografi','Non-Fiksi');

INSERT INTO buku(id_buku, judul_buku, isbn, penulis, tgl_rilis, penerbit, cetakan)
VALUES 
('1','Laut BErcerita','978-602-424-694-5','Leila S. Chudori','2017-10-01','Kepustakaan Populer Gramedia','1'),
('2','Atomic Habits','978-602-063-185-0','James Clear','2018-10-16','Random House','5'),
('3','Sapiens: A Brief History of Humankind','978-006-231-609-7','Yuval Noah Harari','2014-09-04','Harper','3'),
('4','Perahu Kertas','978-979-1227-67-0','Dewi Lestari','2009-01-10','Bentang Pustaka','2'),
('5','The Psychology of Money','978-085-719-768-9','Morgan Housel','2020-09-01','Harriman House','1'),
('6','Laskar Pelangi','978-979-3062-79-8','Andrea Hirata','2005-09-01','Bentang Pustaka','10'),
('7','Negeri 5 Menara','978-979-1227-59-5','Ahmad Fuadi','2009-07-01','Gramedia','3'),
('8','Filosofi Teras','978-602-481-166-1','Henry Manampiring','2018-12-01','Kompas Gramedia','2'),
('9','Ensiklopedia Sains','978-979-22-6789-2','Tim Ilmuwan Dunia','2016-04-15','National Geographic','1'),
('10','Biografi B.J. Habibie','978-979-22-3333-4','Andi F. Noya','2012-06-01','Elex Media Komputindo','4');

SELECT * FROM buku

INSERT INTO peminjam(id_peminjam, nama_peminjam, no_hp, alamat)
VALUES
('1','Ahmad Fadli','081234567890','Jl. Merdeka No.10, Jakarta'),
('2','Siti Rahmawati','082112345678','Jl. Sudirman No.45, Bandung'),
('3','Budi Santoso','085698745321','Jl. Pemuda No.7, Yogyakarta'),
('4','Maria Fransiska','087812345679','Jl. Malioboro No.13, Yogyakarta'),
('5','Dedi Kurniawan','081388899900','Jl. Hasanuddin No.22, Makassar'),
('6','Nur Hidayah','083812345678','Jl. Gajah Mada No.99, Surabaya'),
('7','Rizky Ramadhan','082233445566','Jl. Imam Bonjol No.5, Semarang'),
('8','Lilis Suryani','081212121212','Jl. Diponegoro No.3, Medan'),
('9','Teguh Wibowo','085700011122','Jl. Soekarno Hatta No.8, Palembang'),
('10','Indah Permata','087755512345','Jl. Kartini No.17, Denpasar');

INSERT INTO transaksi(id_transaksi, id_buku, id_peminjam, tgl_pinjam, tgl_kembali,dikembalikan)
VALUES
('1','2','8','02-05-2025','07-05-2025','true'),
('2','1','3','03-05-2025','08-05-2025','true'),
('3','7','4','03-05-2025','08-05-2025','true'),
('4','4','5','03-05-2025','08-05-2025','false'),
('5','8','6','04-05-2025','09-05-2025','true'),
('6','10','1','04-05-2025','10-05-2025','true'),
('7','2','2','04-05-2025','10-05-2025','false'),
('8','1','7','04-05-2025','10-05-2025','true'),
('9','3','9','05-05-2025','11-05-2025','false'),
('10','9','10','05-05-2025','12-05-2025','true');

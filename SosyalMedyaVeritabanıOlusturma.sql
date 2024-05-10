CREATE DATABASE SosyalMedyaVeritabaný; -- Veritabanýmýzý oluþturuyoruz..
--Aþaðýda hazýrladýðýmýz kod parçasýnda veritabanýmýz için kullanacaðýmýz tablolarý sýrasýyla oluþturuyoruz.
-- Kullanicilar tablosu (Projenin Ana tablosu olarak kullanacaðýz.)
CREATE TABLE Kullanicilar (
    KullaniciID INT PRIMARY KEY,
    KullaniciAdi VARCHAR(50) NOT NULL,
    Sifre VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    OlusturmaTarihi DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Paylasimlar tablosu
CREATE TABLE Paylasimlar (
    PaylasimID INT PRIMARY KEY,
    KullaniciID INT,
    Tarih DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (KullaniciID) REFERENCES Kullanicilar(KullaniciID)
);

-- Yorumlar tablosu
CREATE TABLE Yorumlar (
    YorumID INT PRIMARY KEY,
    PaylasimID INT,
    KullaniciID INT,
    Tarih DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (PaylasimID) REFERENCES Paylasimlar(PaylasimID),
    FOREIGN KEY (KullaniciID) REFERENCES Kullanicilar(KullaniciID)
);

-- Begeniler tablosu
CREATE TABLE Begeniler (
    BegeniID INT PRIMARY KEY,
    PaylasimID INT,
    KullaniciID INT,
    Tarih DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (PaylasimID) REFERENCES Paylasimlar(PaylasimID),
    FOREIGN KEY (KullaniciID) REFERENCES Kullanicilar(KullaniciID)
);

-- Takipciler tablosu
CREATE TABLE Takipciler (
    TakipID INT PRIMARY KEY,
    TakipEdenID INT,
    TakipEdilenID INT,
    FOREIGN KEY (TakipEdenID) REFERENCES Kullanicilar(KullaniciID),
    FOREIGN KEY (TakipEdilenID) REFERENCES Kullanicilar(KullaniciID)
);

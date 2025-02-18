--Kullanıcı Listesini Getiren Stored Procedure
CREATE PROCEDURE KullaniciListesiGetirme
AS
BEGIN
    SELECT *
    FROM Kullanicilar
	
END
--Kullanıcı Bilgilerini Getiren Stored Procedure
CREATE PROCEDURE KullaniciBilgisiGetirme
    @KullaniciAdi VARCHAR(50)
AS
BEGIN
    SELECT *
    FROM Kullanicilar
    WHERE KullaniciAdi = @KullaniciAdi
END

--Kullanıcı Ekleme İşlemini Yapan Stored Procedure

CREATE PROCEDURE KullaniciEkleme
    @KullaniciAdi VARCHAR(50),
    @Sifre VARCHAR(50),
    @Email VARCHAR(100)
AS
BEGIN
    INSERT INTO Kullanicilar (KullaniciAdi, Sifre, Email)
    VALUES (@KullaniciAdi, @Sifre, @Email)
END

--Kullanıcı Silme İşlemini Yapan Stored Procedure

CREATE PROCEDURE KullaniciSilme
    @KullaniciID INT
AS
BEGIN
    DELETE FROM Kullanicilar
    WHERE KullaniciID = @KullaniciID
END


--Kullanıcı Güncelleme İşlemini Yapan Stored Procedure

CREATE PROCEDURE KullaniciGüncelleme
    @KullaniciID INT,
    @KullaniciAdi VARCHAR(50),
    @Sifre VARCHAR(50),
    @Email VARCHAR(100)
AS
BEGIN
    UPDATE Kullanicilar
    SET KullaniciAdi = @KullaniciAdi, Sifre = @Sifre, Email = @Email
    WHERE KullaniciID = @KullaniciID
END
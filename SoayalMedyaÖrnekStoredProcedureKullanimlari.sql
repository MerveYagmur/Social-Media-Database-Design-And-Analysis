--Örnek Stored Procedure kullanýmlarý
EXEC KullaniciListesiGetirme --Güncel listemizi getirdik

EXEC KullaniciEkleme 'mediart_','Mirac_photogram.61','mediart@gmail.com' --Yeni bir kullanýcý ekledik

EXEC KullaniciBilgisiGetirme 'trabzonspor' --Var olan kullanýcýmýzýn bilgilerine eriþim saðladýk

EXEC KullaniciGüncelleme '8','Trabzonspor','bordo_mavi.1967','trabzonspor67@gmail.com' --Kullanýcýmýzýn bilgilerini güncelledik

EXEC KullaniciListesiGetirme -- Güncellemeyi kontrol ettik

EXEC KullaniciBilgisiGetirme 'haber61net' --kullanýcýnýn bilgilerini getirdik 

EXEC KullaniciSilme '1015' -- bilgilerini getirdiðimiz kullanýcýnýn Id sini öðrendik ve kullanýcýyý sildik.

EXEC KullaniciListesiGetirme --güncel listeyi kontrol ettik


--Örnek Stored Procedure kullanımları
EXEC KullaniciListesiGetirme --Güncel listemizi getirdik

EXEC KullaniciEkleme 'mediart_','Mirac_photogram.61','mediart@gmail.com' --Yeni bir kullanıcı ekledik

EXEC KullaniciBilgisiGetirme 'trabzonspor' --Var olan kullanıcımızın bilgilerine erişim sağladık

EXEC KullaniciGüncelleme '8','Trabzonspor','bordo_mavi.1967','trabzonspor67@gmail.com' --Kullanıcımızın bilgilerini güncelledik

EXEC KullaniciListesiGetirme -- Güncellemeyi kontrol ettik

EXEC KullaniciBilgisiGetirme 'haber61net' --kullanıcının bilgilerini getirdik 

EXEC KullaniciSilme '1015' -- bilgilerini getirdiğimiz kullanıcının Id sini öğrendik ve kullanıcıyı sildik.

EXEC KullaniciListesiGetirme --güncel listeyi kontrol ettik


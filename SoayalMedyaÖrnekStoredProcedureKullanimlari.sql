--�rnek Stored Procedure kullan�mlar�
EXEC KullaniciListesiGetirme --G�ncel listemizi getirdik

EXEC KullaniciEkleme 'mediart_','Mirac_photogram.61','mediart@gmail.com' --Yeni bir kullan�c� ekledik

EXEC KullaniciBilgisiGetirme 'trabzonspor' --Var olan kullan�c�m�z�n bilgilerine eri�im sa�lad�k

EXEC KullaniciG�ncelleme '8','Trabzonspor','bordo_mavi.1967','trabzonspor67@gmail.com' --Kullan�c�m�z�n bilgilerini g�ncelledik

EXEC KullaniciListesiGetirme -- G�ncellemeyi kontrol ettik

EXEC KullaniciBilgisiGetirme 'haber61net' --kullan�c�n�n bilgilerini getirdik 

EXEC KullaniciSilme '1015' -- bilgilerini getirdi�imiz kullan�c�n�n Id sini ��rendik ve kullan�c�y� sildik.

EXEC KullaniciListesiGetirme --g�ncel listeyi kontrol ettik


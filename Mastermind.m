function Mastermind()
fprintf('************ Mastermind Oyunu Ba�l�yor **************\n');
fprintf('L�tfen Rakamlar� Birbirinden Farkl� (1000-9999) Aral���nda De�erler Giriniz.\n\n');

rastgeleSayi=round(1000+8999*rand(1));
sonucrastgele=SayininRakamlariFarkliMi(rastgeleSayi);
while ~sonucrastgele
    rastgeleSayi=round(1000+8999*rand(1));
    sonucrastgele=SayininRakamlariFarkliMi(rastgeleSayi);
end
sayac=0;

while 1
    
    tahmin=input('L�tfen Bir Tahminde Bulununuz?: ');
    sayac=sayac+1;
    sonuc=SayininRakamlariFarkliMi(tahmin);
    
    if (tahmin<1000) || (tahmin>9999) || (sonuc==0)
        fprintf('Dikkat!!!. L�tfen Kurallara uygun Tahmin Yap�n�z.\n');
        
    elseif tahmin==rastgeleSayi
        fprintf('Tebrikler. %d. Tahminde Buldunuz.\n',sayac);
        break;
    else
        [arti, eksi]=ArtiVeEksiIpucuUret(rastgeleSayi,tahmin);
        fprintf('Yanl�� Tahmin. Size �pucu==>(+%d,-%d)\n',arti,eksi);
    end
end     


end
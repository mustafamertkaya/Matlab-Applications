function Mastermind()
fprintf('************ Mastermind Oyunu Baþlýyor **************\n');
fprintf('Lütfen Rakamlarý Birbirinden Farklý (1000-9999) Aralýðýnda Deðerler Giriniz.\n\n');

rastgeleSayi=round(1000+8999*rand(1));
sonucrastgele=SayininRakamlariFarkliMi(rastgeleSayi);
while ~sonucrastgele
    rastgeleSayi=round(1000+8999*rand(1));
    sonucrastgele=SayininRakamlariFarkliMi(rastgeleSayi);
end
sayac=0;

while 1
    
    tahmin=input('Lütfen Bir Tahminde Bulununuz?: ');
    sayac=sayac+1;
    sonuc=SayininRakamlariFarkliMi(tahmin);
    
    if (tahmin<1000) || (tahmin>9999) || (sonuc==0)
        fprintf('Dikkat!!!. Lütfen Kurallara uygun Tahmin Yapýnýz.\n');
        
    elseif tahmin==rastgeleSayi
        fprintf('Tebrikler. %d. Tahminde Buldunuz.\n',sayac);
        break;
    else
        [arti, eksi]=ArtiVeEksiIpucuUret(rastgeleSayi,tahmin);
        fprintf('Yanlýþ Tahmin. Size Ýpucu==>(+%d,-%d)\n',arti,eksi);
    end
end     


end
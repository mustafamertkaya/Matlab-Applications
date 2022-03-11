clear; % Çalýþma Dizini Temizler.
clc;   % Komut Penceresini Temizler.
fprintf('\n\n'); % Programý 2 Satýr Aþaðýdan Baþlatýr.
disp('Merhaba Geziler için Tahsis Edilmiþ Tur Otobüsümüze Hoþgeldiniz.');   % Kullanýcýlar Ýçin Program baþlangýcýný Süslemek Ýçin 
disp('*******************************************************************');    % Kullanýcýlar Ýçin Program baþlangýcýný Süslemek Ýçin 
disp(['Tur Otobüsümüz 46 Kiþiliktir. Bu Yüzden 46 Kiþi Veya Daha Az kiþi' ...   % Otobüsün Kapasitesini Belirtme
    ' Sayýsýna Göre Ýþlem Yapabilmekteyiz.']);
disp('*******************************************************************');    % Kullanýcýlar Ýçin Program baþlangýcýný Süslemek Ýçin 

kisiSayisi=input('Lütfen Geziye Katýlacak Kiþi Sayýsýný Giriniz: ');    % Kullanýcýdan Kiþi Sayýsýný Alma
disp(' ');  % Kiþi Sayýsýný Alýp Bir Alt satýra Geçen Programý Tekrar Bir Alt Satýra Gecirme

if kisiSayisi<=0   % Kiþi Sayýsý 0'a eþit yada Küçükse Bu Kod Bloðu Calýþacak.
    disp('Lütfen Geçerli Deðer Giriniz.');   
    
elseif kisiSayisi<=10   % Kiþi Sayýsý 10'a eþit yada Küçükse Bu Kod Bloðu Calýþacak. 
    biletUcret_1=kisiSayisi*50; 
    disp(['Ýndirimli Kiþi Sayýsýna Ulaþamadýnýz. kiþi Baþý 50 Tl''den ' ...    % disp ile ödenmesi Gereken Ücret Bastýr.
        'Ödemeniz Gereken Ücret ' num2str(biletUcret_1) ' ''dir. ']);

elseif kisiSayisi<=40   % Kiþi Sayýsý 40'a eþit yada Küçükse Bu Kod Bloðu Calýþacak. 
    biletUcret_2=10*50+(kisiSayisi-10)*50*0.8;
    disp(['10 kiþi Ýçin Sabit Fiyat Ve Ýndirimli Kiþiler Dahil ' ...    % disp ile ödenmesi Gereken Ücret Bastýr.
        'Ödemeniz Gereken Ücret ' num2str(biletUcret_2) ' ''dir. ']);
    
elseif kisiSayisi>40 && kisiSayisi<=46  % (Kiþi Sayýsý 40'tan Büyükse) Ve (Kiþi Sayýsý 46'ya eþit yada Küçükse) Bu Kod Bloðu Calýþacak. 
    biletUcret_3=10*50+(30*50*0.8);
    disp('Ücretli Kisi Sayýsýný Tamamladýnýz, 40 Kiþi dýþýndakiler Ücretsiz Seyehat Edecektir.');   % disp ile ödenmesi Gereken Ücret Bastýr.
    disp(['Ücretli Kiþiler Ýçin Ödemeniz Gereken Ücret ' num2str(biletUcret_3) ' ''dir. ']);

elseif kisiSayisi>46    % Kiþi Sayýsý 46'dan Büyükse Bu Kod Bloðu Calýþacak.
    biletUcret_4=10*50+(30*50*0.8);
     disp('Ücretli Kisi Sayýsýný Tamamladýnýz Ancak Tur Otobüsümüz 46 Kiþilik Oldugundan 46 Kiþi'); % disp ile Ödenmesi Gereken Ücret Bastýr.
     disp('Kabul Ederek Ýþlem Yapacaðýz. 40 Kiþi dýþýndakiler Ücretsiz Seyehat edecektir.');
     disp(['Ücretli Kiþiler Ýçin Ödemeniz Gereken Ücret ' num2str(biletUcret_4) ' ''dir. ']);
end
    



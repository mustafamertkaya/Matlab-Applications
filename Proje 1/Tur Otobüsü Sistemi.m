clear; % �al��ma Dizini Temizler.
clc;   % Komut Penceresini Temizler.
fprintf('\n\n'); % Program� 2 Sat�r A�a��dan Ba�lat�r.
disp('Merhaba Geziler i�in Tahsis Edilmi� Tur Otob�s�m�ze Ho�geldiniz.');   % Kullan�c�lar ��in Program ba�lang�c�n� S�slemek ��in 
disp('*******************************************************************');    % Kullan�c�lar ��in Program ba�lang�c�n� S�slemek ��in 
disp(['Tur Otob�s�m�z 46 Ki�iliktir. Bu Y�zden 46 Ki�i Veya Daha Az ki�i' ...   % Otob�s�n Kapasitesini Belirtme
    ' Say�s�na G�re ��lem Yapabilmekteyiz.']);
disp('*******************************************************************');    % Kullan�c�lar ��in Program ba�lang�c�n� S�slemek ��in 

kisiSayisi=input('L�tfen Geziye Kat�lacak Ki�i Say�s�n� Giriniz: ');    % Kullan�c�dan Ki�i Say�s�n� Alma
disp(' ');  % Ki�i Say�s�n� Al�p Bir Alt sat�ra Ge�en Program� Tekrar Bir Alt Sat�ra Gecirme

if kisiSayisi<=0   % Ki�i Say�s� 0'a e�it yada K���kse Bu Kod Blo�u Cal��acak.
    disp('L�tfen Ge�erli De�er Giriniz.');   
    
elseif kisiSayisi<=10   % Ki�i Say�s� 10'a e�it yada K���kse Bu Kod Blo�u Cal��acak. 
    biletUcret_1=kisiSayisi*50; 
    disp(['�ndirimli Ki�i Say�s�na Ula�amad�n�z. ki�i Ba�� 50 Tl''den ' ...    % disp ile �denmesi Gereken �cret Bast�r.
        '�demeniz Gereken �cret ' num2str(biletUcret_1) ' ''dir. ']);

elseif kisiSayisi<=40   % Ki�i Say�s� 40'a e�it yada K���kse Bu Kod Blo�u Cal��acak. 
    biletUcret_2=10*50+(kisiSayisi-10)*50*0.8;
    disp(['10 ki�i ��in Sabit Fiyat Ve �ndirimli Ki�iler Dahil ' ...    % disp ile �denmesi Gereken �cret Bast�r.
        '�demeniz Gereken �cret ' num2str(biletUcret_2) ' ''dir. ']);
    
elseif kisiSayisi>40 && kisiSayisi<=46  % (Ki�i Say�s� 40'tan B�y�kse) Ve (Ki�i Say�s� 46'ya e�it yada K���kse) Bu Kod Blo�u Cal��acak. 
    biletUcret_3=10*50+(30*50*0.8);
    disp('�cretli Kisi Say�s�n� Tamamlad�n�z, 40 Ki�i d���ndakiler �cretsiz Seyehat Edecektir.');   % disp ile �denmesi Gereken �cret Bast�r.
    disp(['�cretli Ki�iler ��in �demeniz Gereken �cret ' num2str(biletUcret_3) ' ''dir. ']);

elseif kisiSayisi>46    % Ki�i Say�s� 46'dan B�y�kse Bu Kod Blo�u Cal��acak.
    biletUcret_4=10*50+(30*50*0.8);
     disp('�cretli Kisi Say�s�n� Tamamlad�n�z Ancak Tur Otob�s�m�z 46 Ki�ilik Oldugundan 46 Ki�i'); % disp ile �denmesi Gereken �cret Bast�r.
     disp('Kabul Ederek ��lem Yapaca��z. 40 Ki�i d���ndakiler �cretsiz Seyehat edecektir.');
     disp(['�cretli Ki�iler ��in �demeniz Gereken �cret ' num2str(biletUcret_4) ' ''dir. ']);
end
    



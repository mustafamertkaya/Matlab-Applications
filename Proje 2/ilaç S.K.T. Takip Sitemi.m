clc; % Komut Penceresi Temizler.
clear; % �al��ma Dizini Temizler.

%Art�� Miktar� ile i�imiz Olmad���ndan Direk ��lem �zerinden D�n�� Kurmak
%��in While D�n��s� Kullan�ld�.

Etki_yuzdesi=0; % �lac�n Her Ay Kaybetti�i etki De�i�keni
ay_Sayaci=0;    % �lac�n Ka� Ay Sonra At�laca��n�n Sayac�

while Etki_yuzdesi<=50 
    Etki_yuzdesi=Etki_yuzdesi+4; % Her Ay azalan %4 Etkisi
    ay_Sayaci=ay_Sayaci+1;  % Ka� Ayda �mr�n� Tamamlayaca��n� Hesaplayan atama
end

disp(['�lac�n�z A��ld�ktan ' num2str(ay_Sayaci) ' Ay Sonra ��pe At�lmal�d�r.']);
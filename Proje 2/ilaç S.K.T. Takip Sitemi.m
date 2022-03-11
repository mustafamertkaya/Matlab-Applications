clc; % Komut Penceresi Temizler.
clear; % Çalýþma Dizini Temizler.

%Artýþ Miktarý ile iþimiz Olmadýðýndan Direk Ýþlem Üzerinden Dönðü Kurmak
%Ýçin While Dönðüsü Kullanýldý.

Etki_yuzdesi=0; % Ýlacýn Her Ay Kaybettiði etki Deðiþkeni
ay_Sayaci=0;    % Ýlacýn Kaç Ay Sonra Atýlacaðýnýn Sayacý

while Etki_yuzdesi<=50 
    Etki_yuzdesi=Etki_yuzdesi+4; % Her Ay azalan %4 Etkisi
    ay_Sayaci=ay_Sayaci+1;  % Kaç Ayda ömrünü Tamamlayacaðýný Hesaplayan atama
end

disp(['Ýlacýnýz Açýldýktan ' num2str(ay_Sayaci) ' Ay Sonra Çöpe Atýlmalýdýr.']);
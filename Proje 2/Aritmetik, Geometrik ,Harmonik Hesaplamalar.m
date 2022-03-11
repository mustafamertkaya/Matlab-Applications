clc; % Komut Penceresi Temizler.
clear; % Çalýþma Dizini Temizler.
% Artýþsýz Bir Döngü Kurmamýz Gerektiði Ýçin Kolaylýk Açýsýndan while kullanýldý.

pozitif_Toplam=0; % Aritmetik Ortalama Toplam Deðiþken(Pay).
pozitif_Sayac=0;  % Aritmetik Ortalama Kaç Sayý Olduðunu Tutan Sayaç(Payda).

cift_carpim=1;    % Geometrik Ortalama Kök Ýçinin Çarpým Deðiþkeni.
cift_sayac=0;     % Geometrik Ortalama Kaç Sayý Olduðunu Tutan Sayaç.

tek_Toplam=0;     % Harmonik Ortalama 1/sayý Þeklindeki Toplamlarý(Payda).
tek_Sayac=0;      % Harmonik Ortalama Kaç Sayý Olduðunu Tutan Sayaç(Pay).

enKucuk=10^1000;  % En Küçük Çift Sayýyý Bulmak Ýçin Gerekli Atama.
enBuyuk=0;        % En Büyük Ondalýklý Sayý Bulmak Ýçin Gerekli Atama.
sayi_Karakter=0;  % Döngüyü Baþlatmak Ýçin Gerekli Atama.

%******Doðru Sonuç Bulmak Ýçin Girilen Deðerlerin Kontrolü Ýçin Gerekli Atamalar******
tamSayi_Var=0;
cifttam_Var=0;
tektam_Var=0;
ondalik_Var=0;
    

while sayi_Karakter ~= -1   % -1 Girilene Kadar Veri Alýp Ýþlemeye Devam Eden Döngü.
    sayi_Karakter=input('Lütfen Bir Tam Sayý Veya Ondalýklý Sayý Giriniz(Pozitif Sayýlar Ýçin Ýþlem Yapýlacaktýr): ');
    
    if sayi_Karakter>0  % Pozitif Sayý Kontrolü.
       
        if round(sayi_Karakter)==sayi_Karakter % Tam Sayý Kontrolü.
              pozitif_Toplam=pozitif_Toplam+sayi_Karakter; % Girilen Sayýlarý Aritmetik Ortalama için Toplama Ýþlemi(Pay).
              pozitif_Sayac=pozitif_Sayac+1; % Girilen Sayýnýn Kaç Tane Olduðunu Bulan Arttýrma Ýþlemi(Payda).
              tamSayi_Var=1; % En Az Bir Tane Tam Sayý Girildiðini Doðrulayan Atama.
            
              if mod(sayi_Karakter,2)==0 % Cift Tam Sayý Kontrolü.
                  cift_carpim=cift_carpim*sayi_Karakter; % Geometrik Ortalama Kök Ýçinin Çarpým Sonucu Hesaplamasý.
                  cift_sayac=cift_sayac+1; % Girilen Sayýnýn Kaç Tane Olduðunu Bulan Arttýrma Ýþlemi. 
                  cifttam_Var=1; % En Az Bir Tane Pozitif Çift Tam Sayý Girildiðini Doðrulayan Atama.
                
                      if sayi_Karakter<enKucuk % En Küçük Pozitif Çift Tam Sayýyý Bulma.
                          enKucuk=sayi_Karakter;
                      end
                
              else % Pozitif Tek Sayý Kontrolü
                  tek_Toplam=tek_Toplam + (1/sayi_Karakter); % Harmonik Ortalamanýn 1/sayi Þeklindeki Paydadaki Toplam.
                  tek_Sayac=tek_Sayac+1; % Kaç Sayý Girildiðini Bulan Attýrma Ýþlemi(Pay).
                  tektam_Var=1;  % En Az Bir Tane Pozitif Tek Tam Sayý Girildiðini Doðrulayan Atama.
              end
            
         else  % Ondalýklý Sayý Kontrolü
              if sayi_Karakter>enBuyuk % En Büyük Ondalýklý Sayýyý Bulma
                  enBuyuk=sayi_Karakter;
                  ondalik_Var=1; % En Az Bir Tane Ondalýklý Sayý Girildiðini Doðrulayan Atama.
              end
         
         end % Tam Ve Ondalýklý Sayý Kontrol Sonu
   
        
    elseif sayi_Karakter<=0 && sayi_Karakter~=-1 % Negatif Sayý Kontrolü.
        fprintf('Lütfen Pozitif Sayý Giriniz.!!!!!!!!!!!!!\n');
    end % Pozitif Sayý Kontrol Sonu
   
end % Döngü Sonu



fprintf('\n\n'); % Boþ Satýr Býrakma.

%****Aritmetik Ortalama Yazdýrma*******
if tamSayi_Var==1
    fprintf('Pozitif Tam Sayýlarýn Aritmetik Ortalamasý= %g\n',pozitif_Toplam/pozitif_Sayac);
else
    fprintf('Pozitif Tam Sayý Girilmediði Ýçin Aritmetik Ortalama Hesaplanamadý.\n');
end
%****Geometrik Ortalama Yazdýrma*******
if cifttam_Var==1
    fprintf('Pozitif Çift Tam Sayýlarýn Geometrik Ortalamasý= %g\n',nthroot(cift_carpim,cift_sayac));
else 
    fprintf('Pozitif Çift Tam Sayý Girilmediði Ýçin Geometrik Ortalama Hesaplanamadý.\n');
end
%****Harmonik Ortalama Yazdýrma*******    
if tektam_Var==1
    fprintf('Pozitif Tek Tam Sayýlarýn Harmonik Ortalamasý= %g\n',tek_Sayac/tek_Toplam);
else
    fprintf('Pozitif Tek Tam Sayý Girilmediði Ýçin Harmonik Ortalama Hesaplanamadý.\n');
end
%****En Küçük Pozitif Çift Tam Sayý Yazdýrma****
if cifttam_Var==1
    fprintf('En Küçük Pozitif Çift Tam Sayý= %d\n',enKucuk);
else
    fprintf('Pozitif Çift Tam Sayý Girilmediði Ýçin En Küçük Çift Tam Sayý Bulunamadý.\n');
end
%****En Büyük Ondalýklý Sayý Yazdýrma****
if ondalik_Var==1
    fprintf('En Büyük Ondalýklý Sayý= %g\n',enBuyuk);
else
    fprintf('Ondalýklý Sayý Girilmediði Ýçin En Büyük Ondalýklý Sayý bulunamadý.\n');
end








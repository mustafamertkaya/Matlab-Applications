clc; % Komut Penceresi Temizler.
clear; % �al��ma Dizini Temizler.
% Art��s�z Bir D�ng� Kurmam�z Gerekti�i ��in Kolayl�k A��s�ndan while kullan�ld�.

pozitif_Toplam=0; % Aritmetik Ortalama Toplam De�i�ken(Pay).
pozitif_Sayac=0;  % Aritmetik Ortalama Ka� Say� Oldu�unu Tutan Saya�(Payda).

cift_carpim=1;    % Geometrik Ortalama K�k ��inin �arp�m De�i�keni.
cift_sayac=0;     % Geometrik Ortalama Ka� Say� Oldu�unu Tutan Saya�.

tek_Toplam=0;     % Harmonik Ortalama 1/say� �eklindeki Toplamlar�(Payda).
tek_Sayac=0;      % Harmonik Ortalama Ka� Say� Oldu�unu Tutan Saya�(Pay).

enKucuk=10^1000;  % En K���k �ift Say�y� Bulmak ��in Gerekli Atama.
enBuyuk=0;        % En B�y�k Ondal�kl� Say� Bulmak ��in Gerekli Atama.
sayi_Karakter=0;  % D�ng�y� Ba�latmak ��in Gerekli Atama.

%******Do�ru Sonu� Bulmak ��in Girilen De�erlerin Kontrol� ��in Gerekli Atamalar******
tamSayi_Var=0;
cifttam_Var=0;
tektam_Var=0;
ondalik_Var=0;
    

while sayi_Karakter ~= -1   % -1 Girilene Kadar Veri Al�p ��lemeye Devam Eden D�ng�.
    sayi_Karakter=input('L�tfen Bir Tam Say� Veya Ondal�kl� Say� Giriniz(Pozitif Say�lar ��in ��lem Yap�lacakt�r): ');
    
    if sayi_Karakter>0  % Pozitif Say� Kontrol�.
       
        if round(sayi_Karakter)==sayi_Karakter % Tam Say� Kontrol�.
              pozitif_Toplam=pozitif_Toplam+sayi_Karakter; % Girilen Say�lar� Aritmetik Ortalama i�in Toplama ��lemi(Pay).
              pozitif_Sayac=pozitif_Sayac+1; % Girilen Say�n�n Ka� Tane Oldu�unu Bulan Artt�rma ��lemi(Payda).
              tamSayi_Var=1; % En Az Bir Tane Tam Say� Girildi�ini Do�rulayan Atama.
            
              if mod(sayi_Karakter,2)==0 % Cift Tam Say� Kontrol�.
                  cift_carpim=cift_carpim*sayi_Karakter; % Geometrik Ortalama K�k ��inin �arp�m Sonucu Hesaplamas�.
                  cift_sayac=cift_sayac+1; % Girilen Say�n�n Ka� Tane Oldu�unu Bulan Artt�rma ��lemi. 
                  cifttam_Var=1; % En Az Bir Tane Pozitif �ift Tam Say� Girildi�ini Do�rulayan Atama.
                
                      if sayi_Karakter<enKucuk % En K���k Pozitif �ift Tam Say�y� Bulma.
                          enKucuk=sayi_Karakter;
                      end
                
              else % Pozitif Tek Say� Kontrol�
                  tek_Toplam=tek_Toplam + (1/sayi_Karakter); % Harmonik Ortalaman�n 1/sayi �eklindeki Paydadaki Toplam.
                  tek_Sayac=tek_Sayac+1; % Ka� Say� Girildi�ini Bulan Att�rma ��lemi(Pay).
                  tektam_Var=1;  % En Az Bir Tane Pozitif Tek Tam Say� Girildi�ini Do�rulayan Atama.
              end
            
         else  % Ondal�kl� Say� Kontrol�
              if sayi_Karakter>enBuyuk % En B�y�k Ondal�kl� Say�y� Bulma
                  enBuyuk=sayi_Karakter;
                  ondalik_Var=1; % En Az Bir Tane Ondal�kl� Say� Girildi�ini Do�rulayan Atama.
              end
         
         end % Tam Ve Ondal�kl� Say� Kontrol Sonu
   
        
    elseif sayi_Karakter<=0 && sayi_Karakter~=-1 % Negatif Say� Kontrol�.
        fprintf('L�tfen Pozitif Say� Giriniz.!!!!!!!!!!!!!\n');
    end % Pozitif Say� Kontrol Sonu
   
end % D�ng� Sonu



fprintf('\n\n'); % Bo� Sat�r B�rakma.

%****Aritmetik Ortalama Yazd�rma*******
if tamSayi_Var==1
    fprintf('Pozitif Tam Say�lar�n Aritmetik Ortalamas�= %g\n',pozitif_Toplam/pozitif_Sayac);
else
    fprintf('Pozitif Tam Say� Girilmedi�i ��in Aritmetik Ortalama Hesaplanamad�.\n');
end
%****Geometrik Ortalama Yazd�rma*******
if cifttam_Var==1
    fprintf('Pozitif �ift Tam Say�lar�n Geometrik Ortalamas�= %g\n',nthroot(cift_carpim,cift_sayac));
else 
    fprintf('Pozitif �ift Tam Say� Girilmedi�i ��in Geometrik Ortalama Hesaplanamad�.\n');
end
%****Harmonik Ortalama Yazd�rma*******    
if tektam_Var==1
    fprintf('Pozitif Tek Tam Say�lar�n Harmonik Ortalamas�= %g\n',tek_Sayac/tek_Toplam);
else
    fprintf('Pozitif Tek Tam Say� Girilmedi�i ��in Harmonik Ortalama Hesaplanamad�.\n');
end
%****En K���k Pozitif �ift Tam Say� Yazd�rma****
if cifttam_Var==1
    fprintf('En K���k Pozitif �ift Tam Say�= %d\n',enKucuk);
else
    fprintf('Pozitif �ift Tam Say� Girilmedi�i ��in En K���k �ift Tam Say� Bulunamad�.\n');
end
%****En B�y�k Ondal�kl� Say� Yazd�rma****
if ondalik_Var==1
    fprintf('En B�y�k Ondal�kl� Say�= %g\n',enBuyuk);
else
    fprintf('Ondal�kl� Say� Girilmedi�i ��in En B�y�k Ondal�kl� Say� bulunamad�.\n');
end








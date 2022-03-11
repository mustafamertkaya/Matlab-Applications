clc; % Komut Penceresi Temizler.
clear; % �al��ma Dizini Temizler.

% Artt�rma ��lemi Yap�laca��nda Ekstra Bir Artt�rma ��lemi Yapmamak ��in for D�ng�s� Kullan�ld�. 

sayac_1=0; sayac_2=0; sayac_3=0; sayac_4=0; sayac_5=0; sayac_6=0; % Zar�n Gelme Say�lar�n� Tutan Saya�lar.


degerDogru_Var=0; % Degerin Do�ruluk Kontrol� ��in Gerekli Atama.


while degerDogru_Var==0 % Yanl�� De�er Girildi�inde Program� Ba�tan Ba�latan D�ng�.
    
    zarAtma=input('L�tfen Ka� Kere Zar At�laca��n� Giriniz: '); % Ka� Kere Zar At�laca��n� Alma.
    
    if round(zarAtma)==zarAtma && zarAtma>0 % De�erin Pozitif Tam Say� Oldu�unun Kontrol�.
        
        for i=1:zarAtma  % zarAtma Say�s� Kadar D�n�� Olu�turma.
            rastgele_Zar=randi([1,6]); % 1(dahil) ile 6(dahil) Aras�nda Rastgele Tam Say� �retir.
    
            switch rastgele_Zar  % Zarlar�n Gelme Durumlar�n�n Kontrol Edilip Saya�lar�n�n Artt�r�lmas�. 
                case 1
                    sayac_1=sayac_1 +1;
                case 2
                    sayac_2=sayac_2 +1;
                case 3
                    sayac_3=sayac_3 +1;
                case 4
                    sayac_4=sayac_4 +1;    
                case 5
                    sayac_5=sayac_5 +1;
                case 6
                    sayac_6=sayac_6 +1;
            end % switch Sonu
            
        end % D�ng� Sonu
        
        
        %**********Gelme Durumlar�n�n Say�s�n� Ve Y�zdesini Ekrana Basma**********
        fprintf('1 Gelen Zarlar�n Say�s�: %d Ve Toplam Zar ��erisindeki Y�zdesi: %%%g\n',sayac_1, (sayac_1/zarAtma)*100);
        fprintf('2 Gelen Zarlar�n Say�s�: %d Ve Toplam Zar ��erisindeki Y�zdesi: %%%g\n',sayac_2, (sayac_2/zarAtma)*100);
        fprintf('3 Gelen Zarlar�n Say�s�: %d Ve Toplam Zar ��erisindeki Y�zdesi: %%%g\n',sayac_3, (sayac_3/zarAtma)*100);
        fprintf('4 Gelen Zarlar�n Say�s�: %d Ve Toplam Zar ��erisindeki Y�zdesi: %%%g\n',sayac_4, (sayac_4/zarAtma)*100);
        fprintf('5 Gelen Zarlar�n Say�s�: %d Ve Toplam Zar ��erisindeki Y�zdesi: %%%g\n',sayac_5, (sayac_5/zarAtma)*100);
        fprintf('6 Gelen Zarlar�n Say�s�: %d Ve Toplam Zar ��erisindeki Y�zdesi: %%%g\n',sayac_6, (sayac_6/zarAtma)*100);
        
        
        %**********Zar�n 4 Gelme Y�zdesi 50'den B�y�kse �zel Metni Yazd�r**********
        if ((sayac_4/zarAtma)*100)>50
            fprintf('Pijamal� ''hasta'' ya��z \\�of�re\\ �abucak %%100%% g�vendi\n');
        end
        degerDogru_Var=1; % Do�ru De�erin Girildi�ini Kabul Eden Atama.
       
        
    else
        fprintf('L�tfen Pozitif Bir Tam Say� Giriniz.\n');
    end
    
end % while Sonu.















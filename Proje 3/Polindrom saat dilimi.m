function Proje3_Soru3_MustafaMert_Kaya
% 
% 1. dijit-->a , 2. dijit-->b , 3. dijit-->c , 4. dijit-->d 
polindrom_Sayac=0;
ters_Sayi=0;
for a=0:2
if a==0 || a==1 
    k=9;
elseif a==2 
    k=3;
end
    for b=0:k
        for c=0:5
            for d=0:9
                sayi=(1000*a)+(100*b)+(10*c)+d; % Akan Zamana Kar�� Her 1 Dakikadaki Zaman� Say�ya D�n��t�ren i�lem.
                gecici_Deger=sayi; % Sayi De�erini Kaybetmemek ��in Al�nan Bir �nlem Ge�ici Bir Atama
                
                if a==0 && b==0 && c==0 && d==0 % �lk Saat Dilimi Olan 00:00 A�ag�daki Kontrollerde �al��ma Hatas�na 
                                                % Sebebiyet Verdi�i ��in Direk Yazd�rmak ��in Gerekli Blok.
                   polindrom_Sayac=polindrom_Sayac+1;
                   fprintf('%d. Polindrom Saat Dilimi--> %d%d:%d%d\n',polindrom_Sayac,a,b,c,d);
                end
                
                
                if a~=0 || b~=0 % 00: Gibi Ba�layan Saat Dilimleri Polindrom Saat Dilimi Olamaz(00:00 hari�) Bunlar�
                                % Program H�zl�l��� A��s�ndan kontrol etmemek ��in Gerekli Kontrol Blo�u.
                
                    if a==0 % Saat k�sm� Tek Basamakl� �se Kontrol Eden Blok.
                        if mod(sayi,10)==0 % Saat Tek Basamakl� �se Polinrom Olmas� ��in Sonuda 0 Olmal� Onu Kontrol Eden Blok.
                            sayi=fix(sayi/10); % Sonu S�f�r Olan Say�dan 0'� At�p 2 Basamakl� Duruma d�n��t�r�r.
                            gecici_Deger=sayi;
                            
                            % 2 Basamakl� Say�y� S�rekli B�l�p Tam K�s�mlar�n� Alan
                            % Ve Bu S�rada Tersinden Say�y� Yeniden Elde Eden While D�ng�s�.
                            while sayi~=0
                                ters_Sayi=ters_Sayi*10;
                                ters_Sayi=ters_Sayi+(mod(sayi,10));
                                sayi=fix(sayi/10);
                            end
                            
                            if gecici_Deger==ters_Sayi % Ba��yla Sonu S�f�r Olan Saat Diliminin Ortadaki 
                            % iki Say� Terstende Ayn� �se Ekrana Basan Ve Sayac� Artt�ran Blok.
                            polindrom_Sayac=polindrom_Sayac+1;
                            fprintf('%d. Polindrom Saat Dilimi--> %d%d:%d%d\n',polindrom_Sayac,a,b,c,d);
                            end
                            ters_Sayi=0; % Tersten Say� De�i�kenini Yeniden Kullanmak ��in S�f�rlayan Atama.
                        end
                        
                    else % Saat K�sm� 2 basamakl� �se Kontrol Eden Blok
                    
                        % Say�y� S�rekli B�l�p Tam K�s�mlar�n� Alan
                        % Ve Bu S�rada Tersinden Say�y� Yeniden Elde Eden While D�ng�s�.
                        while sayi~=0
                        ters_Sayi=ters_Sayi*10;
                        ters_Sayi=ters_Sayi+(mod(sayi,10));
                        sayi=fix(sayi/10);
                        end
                 
                        if gecici_Deger==ters_Sayi % Say� Terstende Ayn� �se Ekrana Basan Ve Sayac� Artt�ran Blok.
                        polindrom_Sayac=polindrom_Sayac+1;
                        fprintf('%d. Polindrom Saat Dilimi--> %d%d:%d%d\n',polindrom_Sayac,a,b,c,d);
                        end
                        ters_Sayi=0; % Tersten Say� De�i�kenini Yeniden Kullanmak ��in S�f�rlayan Atama.
                    
                    end
                end
            end
        end
    end
end
fprintf('\n%d Tane Polindrom Saat Dilimi Vard�r.\n',polindrom_Sayac); 
end




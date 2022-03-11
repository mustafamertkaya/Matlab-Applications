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
                sayi=(1000*a)+(100*b)+(10*c)+d; % Akan Zamana Karşı Her 1 Dakikadaki Zamanı Sayıya Dönüştüren işlem.
                gecici_Deger=sayi; % Sayi Değerini Kaybetmemek İçin Alınan Bir Önlem Geçici Bir Atama
                
                if a==0 && b==0 && c==0 && d==0 % İlk Saat Dilimi Olan 00:00 Aşagıdaki Kontrollerde Çalışma Hatasına 
                                                % Sebebiyet Verdiği İçin Direk Yazdırmak İçin Gerekli Blok.
                   polindrom_Sayac=polindrom_Sayac+1;
                   fprintf('%d. Polindrom Saat Dilimi--> %d%d:%d%d\n',polindrom_Sayac,a,b,c,d);
                end
                
                
                if a~=0 || b~=0 % 00: Gibi Başlayan Saat Dilimleri Polindrom Saat Dilimi Olamaz(00:00 hariç) Bunları
                                % Program Hızlılığı Açısından kontrol etmemek İçin Gerekli Kontrol Bloğu.
                
                    if a==0 % Saat kısmı Tek Basamaklı İse Kontrol Eden Blok.
                        if mod(sayi,10)==0 % Saat Tek Basamaklı İse Polinrom Olması İçin Sonuda 0 Olmalı Onu Kontrol Eden Blok.
                            sayi=fix(sayi/10); % Sonu Sıfır Olan Sayıdan 0'ı Atıp 2 Basamaklı Duruma dönüştürür.
                            gecici_Deger=sayi;
                            
                            % 2 Basamaklı Sayıyı Sürekli Bölüp Tam Kısımlarını Alan
                            % Ve Bu Sırada Tersinden Sayıyı Yeniden Elde Eden While Döngüsü.
                            while sayi~=0
                                ters_Sayi=ters_Sayi*10;
                                ters_Sayi=ters_Sayi+(mod(sayi,10));
                                sayi=fix(sayi/10);
                            end
                            
                            if gecici_Deger==ters_Sayi % Başıyla Sonu Sıfır Olan Saat Diliminin Ortadaki 
                            % iki Sayı Terstende Aynı İse Ekrana Basan Ve Sayacı Arttıran Blok.
                            polindrom_Sayac=polindrom_Sayac+1;
                            fprintf('%d. Polindrom Saat Dilimi--> %d%d:%d%d\n',polindrom_Sayac,a,b,c,d);
                            end
                            ters_Sayi=0; % Tersten Sayı Değişkenini Yeniden Kullanmak İçin Sıfırlayan Atama.
                        end
                        
                    else % Saat Kısmı 2 basamaklı İse Kontrol Eden Blok
                    
                        % Sayıyı Sürekli Bölüp Tam Kısımlarını Alan
                        % Ve Bu Sırada Tersinden Sayıyı Yeniden Elde Eden While Döngüsü.
                        while sayi~=0
                        ters_Sayi=ters_Sayi*10;
                        ters_Sayi=ters_Sayi+(mod(sayi,10));
                        sayi=fix(sayi/10);
                        end
                 
                        if gecici_Deger==ters_Sayi % Sayı Terstende Aynı İse Ekrana Basan Ve Sayacı Arttıran Blok.
                        polindrom_Sayac=polindrom_Sayac+1;
                        fprintf('%d. Polindrom Saat Dilimi--> %d%d:%d%d\n',polindrom_Sayac,a,b,c,d);
                        end
                        ters_Sayi=0; % Tersten Sayı Değişkenini Yeniden Kullanmak İçin Sıfırlayan Atama.
                    
                    end
                end
            end
        end
    end
end
fprintf('\n%d Tane Polindrom Saat Dilimi Vardır.\n',polindrom_Sayac); 
end




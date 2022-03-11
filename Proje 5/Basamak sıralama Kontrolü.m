function sonuc=Proje5_Soru1_MustafaMert_Kaya(n)

sonuc=1;
n_Kontrol=n; 
taban_7_Ceviri=n;
taban_9_Ceviri=n;
n_sonuc=1;
n_yedilik=1;
n_dokuzluk=1;
A=[];
yedilik=[];
dokuzluk=[];

% n'in Basamaklarý Soldan Saða Artan mý Deðilmi Kontrol Etme.
while n_Kontrol>0 % sondan Baslayarak Bütün Basamaklarý Diziye Atan Döngü.
    birler_Basamagi=mod(n_Kontrol,10);
    n_Kontrol=fix(n_Kontrol/10);
    A=[birler_Basamagi A];
end

for i=1:length(A) % Diziye Atýlan Basamaklarýn Soldan Saða Artanlýðýný Kontrol Eden Döngü.
    if (i+1)<=length(A)
        if A(i)>A(i+1)
            n_sonuc=0;
            break;
        end
    end
end
% n Kontrol Sonu...

if n_sonuc==1 % n'in Basamaklarý Soldan Saða Artan Ýse Çalýsan Blok
   
    % 7'lik Tabana Çevirme
    while taban_7_Ceviri>0
        bolum=fix(taban_7_Ceviri/7);
        kalan=mod(taban_7_Ceviri,7);
        yedilik=[kalan yedilik]; 
        taban_7_Ceviri=bolum;
    end
    
    % 9'luk Tabana Çevirme
    while taban_9_Ceviri>0
        bolum=fix(taban_9_Ceviri/9);
        kalan=mod(taban_9_Ceviri,9);
        dokuzluk=[kalan dokuzluk]; 
        taban_9_Ceviri=bolum;
    end
    
    for i=1:length(yedilik) % Yedilik Tabanda Soldan Saða Artanlýðý Kontrol Eden Döngü.
        if (i+1)<=length(yedilik)
            if yedilik(i)>yedilik(i+1)
                n_yedilik=0;
                break;
            end
        end
    end
    
     for i=1:length(dokuzluk) % Dokuzluk Tabanda Soldan Saða Artanlýðý Kontrol Eden Döngü.
        if (i+1)<=length(dokuzluk)
            if dokuzluk(i)>dokuzluk(i+1)
                n_dokuzluk=0;
                break;
            end
        end
     end
    
    if n_yedilik==0 || n_dokuzluk==0 % Yedilik Yada Dokuzluk Artan Deðilse 0 Döndürme.
        sonuc=0;
    end
      
else % n'in Basamaklarý Soldan Saða Artan Deðil Ýse Çalýsan Blok
    sonuc=0;
end

end % Fonksiyon Sonu.




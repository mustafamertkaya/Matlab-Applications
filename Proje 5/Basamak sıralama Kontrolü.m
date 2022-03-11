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

% n'in Basamaklar� Soldan Sa�a Artan m� De�ilmi Kontrol Etme.
while n_Kontrol>0 % sondan Baslayarak B�t�n Basamaklar� Diziye Atan D�ng�.
    birler_Basamagi=mod(n_Kontrol,10);
    n_Kontrol=fix(n_Kontrol/10);
    A=[birler_Basamagi A];
end

for i=1:length(A) % Diziye At�lan Basamaklar�n Soldan Sa�a Artanl���n� Kontrol Eden D�ng�.
    if (i+1)<=length(A)
        if A(i)>A(i+1)
            n_sonuc=0;
            break;
        end
    end
end
% n Kontrol Sonu...

if n_sonuc==1 % n'in Basamaklar� Soldan Sa�a Artan �se �al�san Blok
   
    % 7'lik Tabana �evirme
    while taban_7_Ceviri>0
        bolum=fix(taban_7_Ceviri/7);
        kalan=mod(taban_7_Ceviri,7);
        yedilik=[kalan yedilik]; 
        taban_7_Ceviri=bolum;
    end
    
    % 9'luk Tabana �evirme
    while taban_9_Ceviri>0
        bolum=fix(taban_9_Ceviri/9);
        kalan=mod(taban_9_Ceviri,9);
        dokuzluk=[kalan dokuzluk]; 
        taban_9_Ceviri=bolum;
    end
    
    for i=1:length(yedilik) % Yedilik Tabanda Soldan Sa�a Artanl��� Kontrol Eden D�ng�.
        if (i+1)<=length(yedilik)
            if yedilik(i)>yedilik(i+1)
                n_yedilik=0;
                break;
            end
        end
    end
    
     for i=1:length(dokuzluk) % Dokuzluk Tabanda Soldan Sa�a Artanl��� Kontrol Eden D�ng�.
        if (i+1)<=length(dokuzluk)
            if dokuzluk(i)>dokuzluk(i+1)
                n_dokuzluk=0;
                break;
            end
        end
     end
    
    if n_yedilik==0 || n_dokuzluk==0 % Yedilik Yada Dokuzluk Artan De�ilse 0 D�nd�rme.
        sonuc=0;
    end
      
else % n'in Basamaklar� Soldan Sa�a Artan De�il �se �al�san Blok
    sonuc=0;
end

end % Fonksiyon Sonu.




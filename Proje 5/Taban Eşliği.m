function A=Proje5_Soru4_MustafaMert_Kaya(altLimit,ustLimit)

A=[];

for i=altLimit:ustLimit
    
    taban_6_Ceviri=i; % � De�erini De�i�memek ��in Gecici De�i�ken Atama.
    taban_5_Ceviri=i; % � De�erini De�i�memek ��in Gecici De�i�ken Atama.
   
    altilik=[];
    altilik_Ters=[];
    beslik=[];
    indis_Ters=1;
    esitlik_Kontrol=1;
    
    % 6'l�k Tabana �evirme
    while taban_6_Ceviri>0
        bolum=fix(taban_6_Ceviri/6);
        kalan=mod(taban_6_Ceviri,6);
        altilik=[kalan altilik];
        taban_6_Ceviri=bolum;
    end

    % 5'lik Tabana �evirme
    while taban_5_Ceviri>0
        bolum=fix(taban_5_Ceviri/5);
        kalan=mod(taban_5_Ceviri,5);
        beslik=[kalan beslik];
        taban_5_Ceviri=bolum;
    end
    
    diziBoyutu_6=length(altilik); % Dizi Boyutu Alma.
    diziBoyutu_5=length(beslik); % Dizi Boyutu Alma.
    
    if diziBoyutu_5==diziBoyutu_6 % �ncelikle Boyutlar� E�it Olmal�.
    
        for j=diziBoyutu_6:-1:1 % 6 Taban�ndaki Kar��l���n�n Tersini Alma.
            altilik_Ters(indis_Ters)=altilik(j);
            indis_Ters=indis_Ters+1;
        end

        for k=1:diziBoyutu_5 % 6'n�n Tersi ile 5'te E�itlik Olmazsa 0 d�nd�rme.  
            if beslik(k) ~= altilik_Ters(k)
                esitlik_Kontrol=0;
                break;
            end
        end
        if esitlik_Kontrol % kontrol 1 �se Bu Say� Bora Say�d�r Ve Bunu vekt�re Aktarma.
            A=[i A];
        end
    end  
end
end % Fonksiyon Sonu.
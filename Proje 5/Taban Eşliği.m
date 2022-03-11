function A=Proje5_Soru4_MustafaMert_Kaya(altLimit,ustLimit)

A=[];

for i=altLimit:ustLimit
    
    taban_6_Ceviri=i; % Ý Deðerini Deðiþmemek Ýçin Gecici Deðiþken Atama.
    taban_5_Ceviri=i; % Ý Deðerini Deðiþmemek Ýçin Gecici Deðiþken Atama.
   
    altilik=[];
    altilik_Ters=[];
    beslik=[];
    indis_Ters=1;
    esitlik_Kontrol=1;
    
    % 6'lýk Tabana Çevirme
    while taban_6_Ceviri>0
        bolum=fix(taban_6_Ceviri/6);
        kalan=mod(taban_6_Ceviri,6);
        altilik=[kalan altilik];
        taban_6_Ceviri=bolum;
    end

    % 5'lik Tabana Çevirme
    while taban_5_Ceviri>0
        bolum=fix(taban_5_Ceviri/5);
        kalan=mod(taban_5_Ceviri,5);
        beslik=[kalan beslik];
        taban_5_Ceviri=bolum;
    end
    
    diziBoyutu_6=length(altilik); % Dizi Boyutu Alma.
    diziBoyutu_5=length(beslik); % Dizi Boyutu Alma.
    
    if diziBoyutu_5==diziBoyutu_6 % Öncelikle Boyutlarý Eþit Olmalý.
    
        for j=diziBoyutu_6:-1:1 % 6 Tabanýndaki Karþýlýðýnýn Tersini Alma.
            altilik_Ters(indis_Ters)=altilik(j);
            indis_Ters=indis_Ters+1;
        end

        for k=1:diziBoyutu_5 % 6'nýn Tersi ile 5'te Eþitlik Olmazsa 0 döndürme.  
            if beslik(k) ~= altilik_Ters(k)
                esitlik_Kontrol=0;
                break;
            end
        end
        if esitlik_Kontrol % kontrol 1 Ýse Bu Sayý Bora Sayýdýr Ve Bunu vektöre Aktarma.
            A=[i A];
        end
    end  
end
end % Fonksiyon Sonu.
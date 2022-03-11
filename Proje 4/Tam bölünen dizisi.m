function sonuc=Proje4_Soru4_MustafaMert_Kaya(A,a)

DiziBoyutuA=length(A); % Dizisinin Boyutunu Tutma.
YeniDiziSayac=0; % a Sayýsýn Tam Bölenleriyle Oluþan Yeni Dizinin Ýndisini Tutma.
sonuc=1;
DogruDeger=0; % Dizi Ýçinde Arama Ýçin Gerekli Atama.

if a>0 && a==round(a)
    for i=1:a
        if mod(a,i)==0 % a Sayýsýnýn Tam Bölenleriyle B Dizisini Oluþturma.
            YeniDiziSayac=YeniDiziSayac+1;
            B(YeniDiziSayac)=i;
        end
    end
    
    DiziBoyutuB=length(B); % B Dizisinin Boyutunu Tutma.
    if DiziBoyutuA==DiziBoyutuB % Eþit Olmalarý Ýçin Öncelikle Boyutlar Eþit Olmalý.
        for i=1:DiziBoyutuA
            for j=1:DiziBoyutuA % Her Bir A deðerini B içinde Arama Bulununca 1 atama.
                if A(i) == B(j)
                    DogruDeger=1; 
                end
            end
            if DogruDeger==0 % Deðer Bulunamadýðýnda Döngüden Direk Cýkma Ve Geriye 0 Döndürme. 
                sonuc=0;
                break;
            end
            DogruDeger=0; % Tekrar Kullanmak Ýçin Sýfýrlama.
        end
        
    else % Boyutlar Eþit Deðilse Geriye 0 Döndürme.
        sonuc=0;
    end
    
else % a Sayýsý Pozitif Bir Tam Sayý Deðilse Uyarý Verme. 
    fprintf('Lütfen a''yý Pozitif Bir Tam Sayý Giriniz... ');
end
end % Fonksiyon Sonu.





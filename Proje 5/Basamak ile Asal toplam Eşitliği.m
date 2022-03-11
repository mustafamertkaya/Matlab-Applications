function A=Proje5_Soru3_MustafaMert_Kaya(altLimit,ustLimit)

A=[]; % A Vektörünü Tanýmlama.

for i=altLimit:ustLimit % Alt Limit Ýle Üst Limit Arasýndaki Sayýlarý Kontrol Eden Dönðü.
    
    gecici_Sayi=i; % i Deðerini Deðiþtirmemek Ve Asal Kontrolünde Kullanmak Ýçin Gecici i Atama.
    gecici_Carpim=i; % i Deðerini Deðiþtirmemek Ve Basamak Çarpýmýnda Kullanmak Ýçin Gecici i Atama.
    carpim_Deger=1;
    asalToplam=0;
    B=[]; % B Vektörünü Tanýmlama.
    
    
    while gecici_Carpim>0 % Sondan Baþlayarak Bütün Basamaklarý Çarpan Döngü.
        birler_Basamagi=mod(gecici_Carpim,10);
        carpim_Deger=carpim_Deger*birler_Basamagi;
        gecici_Carpim=fix(gecici_Carpim/10);
    end
    
    
    for j=2:gecici_Sayi % Her Bir Sayýnýn Asal Çarpanlarýný Bulan Döngü.
        asalMi=1;
        if mod(gecici_Sayi,j)==0
            if j==2
               B=[j B]; 
            else
                for k=2:(j-1) 
                    if mod(j,k)==0
                        asalMi=0;
                        break;
                    end
                end
                if asalMi
                    B=[j B];                
                end
            end
        end
    end
    
    diziBoyutuB=length(B); % Asal Çarpanlarýnýn Tutulduðu Dizinin Boyutunu Alma.
   
    for l=1:diziBoyutuB % Her Bir Sayýnýn Asal Çarpanlarýný Toplayan Döngü.
        asalToplam=asalToplam+B(l);
    end
    
    if carpim_Deger==asalToplam % Basamak Çarpýmlarý Ýle asal Toplamlarý Birbirine Eþitse Sayýyý A Vektörüne Atan Blok.
        A=[i A]; 
    end
          
end    
end % Fonksiyon Sonu.

























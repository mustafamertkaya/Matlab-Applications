function i_ninci_Terim=Proje3_Soru1_MustafaMert_Kaya(n,i) % 2 Parametre Alan Fonksiyon
  
    if round(n)==n && n>0 && round(i)==i && i>0 % n ve i Ýçin Pozitif Tam Sayý Kontrolü.
        for baslangic=1:(i-1)
       
            
            if mod(n,2)==0 % n Çift ise yapýlacak iþlemler
                n=n/2;
            elseif mod(n,2)==1 % n Tek ise yapýlacak iþlemler
                n=3*n+1;
            end 
            
        end % Döngü Sonu
        
        i_ninci_Terim=n; % Çýkýþ Parametresi Ýçin Atama
    
        
    else % Yanlýþ Deðerlere karþý Ekrana Uyarý Verme.
        fprintf('Lütfen Fonksiyonu Yeniden Baþlatýp Pozitif Tam Sayýlar Giriniz.\n');
    end
    
end % Fonksiyon Sonu.            
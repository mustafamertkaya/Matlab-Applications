function i_ninci_Terim=Proje3_Soru1_MustafaMert_Kaya(n,i) % 2 Parametre Alan Fonksiyon
  
    if round(n)==n && n>0 && round(i)==i && i>0 % n ve i ��in Pozitif Tam Say� Kontrol�.
        for baslangic=1:(i-1)
       
            
            if mod(n,2)==0 % n �ift ise yap�lacak i�lemler
                n=n/2;
            elseif mod(n,2)==1 % n Tek ise yap�lacak i�lemler
                n=3*n+1;
            end 
            
        end % D�ng� Sonu
        
        i_ninci_Terim=n; % ��k�� Parametresi ��in Atama
    
        
    else % Yanl�� De�erlere kar�� Ekrana Uyar� Verme.
        fprintf('L�tfen Fonksiyonu Yeniden Ba�lat�p Pozitif Tam Say�lar Giriniz.\n');
    end
    
end % Fonksiyon Sonu.            
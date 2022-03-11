function A=Proje5_Soru3_MustafaMert_Kaya(altLimit,ustLimit)

A=[]; % A Vekt�r�n� Tan�mlama.

for i=altLimit:ustLimit % Alt Limit �le �st Limit Aras�ndaki Say�lar� Kontrol Eden D�n��.
    
    gecici_Sayi=i; % i De�erini De�i�tirmemek Ve Asal Kontrol�nde Kullanmak ��in Gecici i Atama.
    gecici_Carpim=i; % i De�erini De�i�tirmemek Ve Basamak �arp�m�nda Kullanmak ��in Gecici i Atama.
    carpim_Deger=1;
    asalToplam=0;
    B=[]; % B Vekt�r�n� Tan�mlama.
    
    
    while gecici_Carpim>0 % Sondan Ba�layarak B�t�n Basamaklar� �arpan D�ng�.
        birler_Basamagi=mod(gecici_Carpim,10);
        carpim_Deger=carpim_Deger*birler_Basamagi;
        gecici_Carpim=fix(gecici_Carpim/10);
    end
    
    
    for j=2:gecici_Sayi % Her Bir Say�n�n Asal �arpanlar�n� Bulan D�ng�.
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
    
    diziBoyutuB=length(B); % Asal �arpanlar�n�n Tutuldu�u Dizinin Boyutunu Alma.
   
    for l=1:diziBoyutuB % Her Bir Say�n�n Asal �arpanlar�n� Toplayan D�ng�.
        asalToplam=asalToplam+B(l);
    end
    
    if carpim_Deger==asalToplam % Basamak �arp�mlar� �le asal Toplamlar� Birbirine E�itse Say�y� A Vekt�r�ne Atan Blok.
        A=[i A]; 
    end
          
end    
end % Fonksiyon Sonu.

























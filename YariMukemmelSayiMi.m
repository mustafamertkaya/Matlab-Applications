function sonuc=YariMukemmelSayiMi(n)

i=n-1;
sayac=1;
toplam=0;
while sayac<=3
    
    if mod(n,i)==0
        toplam=toplam+i;
        sayac=sayac+1;
    end
   i=i-1; 
end

if toplam==n
    sonuc=1;
else
    sonuc=0;
end

end % Fonksiyon Sonu.
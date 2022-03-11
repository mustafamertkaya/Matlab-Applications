function fABC=ALES2012Ilkbahar(sayi)

%f(ABC)=ABC+AB+BC+A+B+C

basamakKontrol=sayi;
basamakSayac=0;

while basamakKontrol>0
    basamakKontrol=fix(basamakKontrol/10);
    basamakSayac=basamakSayac+1;
end

if (sayi>0) && (sayi==round(sayi)) && (basamakSayac==3)
    AB=fix(sayi/10);
    BC=mod(sayi,100);
    A=mod(sayi,10);
    B=fix(BC/10);
    C=fix(sayi/100);
    
    fABC=sayi+AB+BC+A+B+C; 
    
else
    fABC=0;
end
    




end
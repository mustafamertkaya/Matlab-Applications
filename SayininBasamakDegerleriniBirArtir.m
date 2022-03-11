function sayi=SayininBasamakDegerleriniBirArtir(sayi)

sayiEkleme=sayi;
kuvvet=1;
toplam=0;
if sayi>=1
    while sayiEkleme>0

        toplam=toplam+kuvvet;
        kuvvet=kuvvet*10;
        sayiEkleme=fix(sayiEkleme/10);
    
    end    
sayi=sayi+toplam;
end
    
end
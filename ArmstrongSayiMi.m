function sonuc=ArmstrongSayiMi(n)

ArmstrongSayi=n;
basamakKontrol=n;
basamakSayac=0;
toplam=0;
while basamakKontrol>0
    basamakKontrol=fix(basamakKontrol/10);
    basamakSayac=basamakSayac+1;
    
end

while ArmstrongSayi>0
    birlerBasamagi=mod(ArmstrongSayi,10);
    toplam=toplam+(birlerBasamagi^basamakSayac);
    ArmstrongSayi=fix(ArmstrongSayi/10);
end

if toplam==n
    sonuc=1;
else
    sonuc=0;
end

end
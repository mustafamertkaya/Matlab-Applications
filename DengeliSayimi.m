function sonuc=DengeliSayimi(n)
sonuc=0;
basamakKontrol=n;
basamakSayac=0;
ciftSayac=0;
tekSayac=0;

while basamakKontrol>0
    birlerBasamagi=mod(basamakKontrol,10);
    if mod(birlerBasamagi,2)==0
        ciftSayac=ciftSayac+1;
    else
        tekSayac=tekSayac+1;
    end
    basamakSayac=basamakSayac+1;
    basamakKontrol=fix(basamakKontrol/10);
end

yarisi=basamakSayac/2;

if (ciftSayac==yarisi) && (tekSayac==yarisi)
    sonuc=1;
end

end
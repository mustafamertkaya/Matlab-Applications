ders_saati=input('L�tfen Ders Saatinizi Giriniz: ');
ek_ders=ders_saati-10;

if ders_saati>10
    if ek_ders<=20
        ucret=ek_ders*8*4;
        fprintf('Ayl�k Ek Ders �cretiniz: %d\n',ucret);
    else
        fprintf('Ayl�k Ek Ders �cretiniz: %d\n',4*20*8);
    end
else
    fprintf('�zg�n�m Zorunlu Saati A��p Ek Ders �creti Alamad�n�z.\n ');
end
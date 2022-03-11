ders_saati=input('Lütfen Ders Saatinizi Giriniz: ');
ek_ders=ders_saati-10;

if ders_saati>10
    if ek_ders<=20
        ucret=ek_ders*8*4;
        fprintf('Aylık Ek Ders Ücretiniz: %d\n',ucret);
    else
        fprintf('Aylık Ek Ders Ücretiniz: %d\n',4*20*8);
    end
else
    fprintf('Üzgünüm Zorunlu Saati Aşıp Ek Ders Ücreti Alamadınız.\n ');
end
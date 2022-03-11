dogru=input('Lütfen Doðru Sayýsýný Giriniz: ');
yanlis=input('Lütfen yanlýþ Sayýsýný Giriniz: ');
bos=input('Lütfen Boþ Sayýsýný Giriniz: ');

if ((dogru+yanlis+bos)==25)
    giden_dogru=yanlis/4;
    net=dogru-giden_dogru;
    puan=net*4;
    fprintf('Test Sonucunuz: %d\n',puan);

else
    disp('Tutarsýz Veri Giriþi Yaptýnýz.');
end

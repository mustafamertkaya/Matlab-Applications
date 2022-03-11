sayi1=input('Lütfen Birinci Sayýyý Giriniz: ');
sayi2=input('Lütfen Ýkinci Sayýyý Giriniz: ');
sayi3=input('Lütfen Üçüncü Sayýyý Giriniz: ');
enbuyuk=sayi1;

if sayi2>enbuyuk
    enbuyuk=sayi2;
end
if sayi3>enbuyuk
    enbuyuk=sayi3;
end
fprintf('En Büyük Sayi: %g\n',enbuyuk);

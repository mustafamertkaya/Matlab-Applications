sayi1=input('L�tfen Birinci Say�y� Giriniz: ');
sayi2=input('L�tfen �kinci Say�y� Giriniz: ');
sayi3=input('L�tfen ���nc� Say�y� Giriniz: ');
enbuyuk=sayi1;

if sayi2>enbuyuk
    enbuyuk=sayi2;
end
if sayi3>enbuyuk
    enbuyuk=sayi3;
end
fprintf('En B�y�k Sayi: %g\n',enbuyuk);

dogru=input('L�tfen Do�ru Say�s�n� Giriniz: ');
yanlis=input('L�tfen yanl�� Say�s�n� Giriniz: ');
bos=input('L�tfen Bo� Say�s�n� Giriniz: ');

if ((dogru+yanlis+bos)==25)
    giden_dogru=yanlis/4;
    net=dogru-giden_dogru;
    puan=net*4;
    fprintf('Test Sonucunuz: %d\n',puan);

else
    disp('Tutars�z Veri Giri�i Yapt�n�z.');
end

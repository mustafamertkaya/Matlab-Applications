saat=input('L�tfen Saat de�erini Giriniz(0-11); ');
dakika=input('L�tfen Dakika De�erini Giriniz(0-59): ');
gecensure=60*saat+dakika;
akrepacisi=gecensure*0.5;
yelkovanacisi=dakika*6;
aradakiaci=abs(akrepacisi-yelkovanacisi);
fprintf('Aradaki A�� %g''dir.\n ',aradakiaci);


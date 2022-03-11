saat=input('Lütfen Saat deðerini Giriniz(0-11); ');
dakika=input('Lütfen Dakika Deðerini Giriniz(0-59): ');
gecensure=60*saat+dakika;
akrepacisi=gecensure*0.5;
yelkovanacisi=dakika*6;
aradakiaci=abs(akrepacisi-yelkovanacisi);
fprintf('Aradaki Açý %g''dir.\n ',aradakiaci);


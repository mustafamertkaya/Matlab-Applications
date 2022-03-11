kenar1=input('Lütfen Üçgenin Birinci Kenarýný Giriniz: ');
kenar2=input('Lütfen Üçgenin Ýkinci Kenarýný Giriniz: ');
kenar3=input('Lütfen Üçgenin Üçüncü Kenarýný Giriniz: ');
u=(kenar1+kenar2+kenar3)/2;
heronformul=sqrt( u*(u-kenar1)*(u-kenar2)*(u-kenar3) );
disp(['Üçgenin Alaný ' num2str(heronformul) ' ''dir. ']);
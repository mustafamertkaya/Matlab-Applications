kenar1=input('L�tfen ��genin Birinci Kenar�n� Giriniz: ');
kenar2=input('L�tfen ��genin �kinci Kenar�n� Giriniz: ');
kenar3=input('L�tfen ��genin ���nc� Kenar�n� Giriniz: ');
u=(kenar1+kenar2+kenar3)/2;
heronformul=sqrt( u*(u-kenar1)*(u-kenar2)*(u-kenar3) );
disp(['��genin Alan� ' num2str(heronformul) ' ''dir. ']);
clear; % �al��ma Dizini Temizler.
clc;   % Komut Penceresi Temizler

disp('Girdi�iniz x1, x2 Ve x3 De�erlerine G�re K skorunu Hesaplayaca��z. '); % Program�n Ne ��e Yarad���n� Kullan�c�ya Belirtmek.
disp(' '); % ��kt�da Fazladan Bir Sat�r Bo�luk B�rak�r. 
x1=input('L�tfen x1 De�erini Giriniz: '); % x1 De�erini Al
x2=input('L�tfen x2 De�erini Giriniz: '); % x2 De�erini Al
x3=input('L�tfen x3 De�erini Giriniz: '); % x3 De�erini Al

k_Skor= 3/nthroot(1/x1 + 1/x2 + 1/x3 ,3); % 3/�?(1/x1 + 1/x2 + 1/x3)
disp(['Girdi�iniz x1, x2 ve x3 De�erlerine G�re K Skoru= ' num2str(k_Skor) ]); % disp �le K Skor Ekrana Bas.

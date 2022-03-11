agirlik=input('Lütfen Vucut Aðýrlýðýnýzý Giriniz: ');
boy=input('Lütfen Boyunuzu Giriniz: ');
kitle_indeksi=agirlik/(boy^2);
fprintf('Kitle Ýndeksiniz: %.2f\n',kitle_indeksi);
if kitle_indeksi<16
    fprintf('Kitle Ýndeksinize Göre Aþýrý Az Kilolusunuz.\n');
elseif kitle_indeksi>=16 && kitle_indeksi<18.5
    fprintf('Kitle Ýndeksinize Göre Az Kilolusunuz.\n');
elseif kitle_indeksi>=18.5 && kitle_indeksi<25
    fprintf('Kitle Ýndeksinize Göre Normal Kilolusunuz.\n');
elseif kitle_indeksi>=25 && kitle_indeksi<30
    fprintf('Kitle Ýndeksinize Göre Çok Kilolusunuz.\n');
elseif kitle_indeksi>=30 && kitle_indeksi<40
    fprintf('Kitle Ýndeksinize Göre Obezsiniz.\n');
else
    fprintf('!!!! ALARM ALARM ALARM !!!!\n');
end
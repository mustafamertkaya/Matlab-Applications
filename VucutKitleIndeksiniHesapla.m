agirlik=input('L�tfen Vucut A��rl���n�z� Giriniz: ');
boy=input('L�tfen Boyunuzu Giriniz: ');
kitle_indeksi=agirlik/(boy^2);
fprintf('Kitle �ndeksiniz: %.2f\n',kitle_indeksi);
if kitle_indeksi<16
    fprintf('Kitle �ndeksinize G�re A��r� Az Kilolusunuz.\n');
elseif kitle_indeksi>=16 && kitle_indeksi<18.5
    fprintf('Kitle �ndeksinize G�re Az Kilolusunuz.\n');
elseif kitle_indeksi>=18.5 && kitle_indeksi<25
    fprintf('Kitle �ndeksinize G�re Normal Kilolusunuz.\n');
elseif kitle_indeksi>=25 && kitle_indeksi<30
    fprintf('Kitle �ndeksinize G�re �ok Kilolusunuz.\n');
elseif kitle_indeksi>=30 && kitle_indeksi<40
    fprintf('Kitle �ndeksinize G�re Obezsiniz.\n');
else
    fprintf('!!!! ALARM ALARM ALARM !!!!\n');
end
function [indis_Ilk, indis_Son]=Proje4_Soru2_MustafaMert_Kaya(B)
    
DiziBoyutuB=length(B); % Dizi Boyutunu Tutmak ��in.
minimumFark=abs( B(1)+B(2) ); % Ba�lang�� ��in Minimum Ba�lang�� Atamas� Yapma.
indis_Ilk=B(1); % �lk �ndisin Ba�lang�� Atamas�.
indis_Son=B(2); % Son �ndisin Ba�lang�� Atamas�.

% A�a��daki D�ng�de B�t�n Dizi Elemanlar� Kendi Aralar�nda Toplan�yor Bu Toplamlarda 
% 0'a Daha Yak�n Bir Toplam Elde Edildi�inde MinimumFark G�ncelleniyor. Tabi Daha
% K���k De�erler Bulundu�u ��in �lk �ndis Ve Son �ndis De�eride G�ncelleniyor. 
for i=1:DiziBoyutuB
    for j=i+1:DiziBoyutuB
        mutlakFark=abs( B(i)+B(j) ); 
        if mutlakFark<minimumFark
            minimumFark=mutlakFark;
            indis_Ilk=B(i);
            indis_Son=B(j);
        end
    end
end
end % Fonksiyon Sonu.



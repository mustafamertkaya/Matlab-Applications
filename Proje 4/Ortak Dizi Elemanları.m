function C=Proje4_Soru1_MustafaMert_Kaya(A,B)

DiziBoyutuA=length(A); % A Dizisinin Boyutunu Tutma.
DiziBoyutuB=length(B); % B Dizisinin Boyutunu Tutma.
indisC=0; % Yeni Olu�an C Dizisinin �ndisini Tutma.
TekrarKontrol=0; % Tekrar Eden Dizi Elemanlar�n�n Kontrol� ��in Gerekli Ba�lang�� Atamas�.
C=[]; % C Dizisini Tan�mlama.

for i=1:DiziBoyutuA
   for j=1:DiziBoyutuB
       if A(i)==B(j) % A Ve B Dizisindeki Ortak Elemanlar�n Kontrol�.
           
           DiziBoyutuC=length(C);
           
           for k=1:DiziBoyutuC 
               if A(i)==C(k) % Bulunan E�it De�erin C Dizisinde Olup Olmad���n�n Kontrol�.
                   TekrarKontrol=1;
               end
           end
           
           if TekrarKontrol==0 % Tekrar Kontrol 0'a E�it Kald�ysa Ortak Eleman� C Dizisine Aktarma.
               indisC=indisC+1;
               C(indisC)=A(i);
           end
           TekrarKontrol=0;
       end
   end
end

end % Fonksiyon Sonu.



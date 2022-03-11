function C=Proje4_Soru1_MustafaMert_Kaya(A,B)

DiziBoyutuA=length(A); % A Dizisinin Boyutunu Tutma.
DiziBoyutuB=length(B); % B Dizisinin Boyutunu Tutma.
indisC=0; % Yeni Oluþan C Dizisinin Ýndisini Tutma.
TekrarKontrol=0; % Tekrar Eden Dizi Elemanlarýnýn Kontrolü Ýçin Gerekli Baþlangýç Atamasý.
C=[]; % C Dizisini Tanýmlama.

for i=1:DiziBoyutuA
   for j=1:DiziBoyutuB
       if A(i)==B(j) % A Ve B Dizisindeki Ortak Elemanlarýn Kontrolü.
           
           DiziBoyutuC=length(C);
           
           for k=1:DiziBoyutuC 
               if A(i)==C(k) % Bulunan Eþit Deðerin C Dizisinde Olup Olmadýðýnýn Kontrolü.
                   TekrarKontrol=1;
               end
           end
           
           if TekrarKontrol==0 % Tekrar Kontrol 0'a Eþit Kaldýysa Ortak Elemaný C Dizisine Aktarma.
               indisC=indisC+1;
               C(indisC)=A(i);
           end
           TekrarKontrol=0;
       end
   end
end

end % Fonksiyon Sonu.



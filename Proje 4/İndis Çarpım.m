function B=Proje4_Soru5_MustafaMert_Kaya(A)

DiziBoyutuA=length(A); % A Dizisinin Boyutunu Tutma.
sonuc=1; % Çarpmada Etkisiz Eleman Olarak Baþlangýçta 1 Atama.

% A'daki Herhangi i. indisdeki Deðer Dýþýndaki Bütün Deðerleri Çarpýp B deki
% i. indise Aktaran Dönðü.
for i=1:DiziBoyutuA
    for j=1:DiziBoyutuA
         if i==j
             continue; % i. indisteki Deðeri Çarpmadan Atlamak Ýçin Kullanýlan Komut.
         else
             sonuc=sonuc*A(j); 
         end
    B(i)=sonuc;       
    end
   sonuc=1; % Tekrar Kullanabilmek Ýçin sonuc'a 1 Atama.  
end
end % Fonksiyon Sonu
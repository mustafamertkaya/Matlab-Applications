function B=Proje4_Soru5_MustafaMert_Kaya(A)

DiziBoyutuA=length(A); % A Dizisinin Boyutunu Tutma.
sonuc=1; % �arpmada Etkisiz Eleman Olarak Ba�lang��ta 1 Atama.

% A'daki Herhangi i. indisdeki De�er D���ndaki B�t�n De�erleri �arp�p B deki
% i. indise Aktaran D�n��.
for i=1:DiziBoyutuA
    for j=1:DiziBoyutuA
         if i==j
             continue; % i. indisteki De�eri �arpmadan Atlamak ��in Kullan�lan Komut.
         else
             sonuc=sonuc*A(j); 
         end
    B(i)=sonuc;       
    end
   sonuc=1; % Tekrar Kullanabilmek ��in sonuc'a 1 Atama.  
end
end % Fonksiyon Sonu
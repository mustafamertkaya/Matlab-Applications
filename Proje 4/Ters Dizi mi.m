function sonuc=Proje4_Soru3_MustafaMert_Kaya(A,B)

DiziBoyutuA=length(A); % Dizi Boyutu A Tutma. 
DiziBoyutuB=length(B); % Dizi Boyutu B Tutma.
sonuc=1; % Baslang��ta Sonuc 1 Kabul Edildi.
indisA=DiziBoyutuA; % A'n�n Boyutunu Ters Dizi Olu�turmak ��in Kullanma.

if DiziBoyutuA==DiziBoyutuB % Ters Dizi Olabilmeleri ��in �ncelikle Boyutlar� E�it Olmal�.
    
    for indisC=1:DiziBoyutuA 
        C(indisC)=A(indisA); % A Dizisinin Tersi Olan C Dizisini Olu�turma.
        indisA=indisA-1;
    end
    
    % C Dizisi �le B Dizisini Kar��la�t�rma Fark G�r�rse Direk D�ng�den
    % ��kan Ve 0 Sonucunu D�nd�rme.
    for i=1:DiziBoyutuB 
        if C(i) ~= B(i)
            sonuc=0;
            break;  
        end
    end
    
else % Boyutlar E�it De�ilse Geriye 0 D�nd�rme.
    sonuc=0;
end
end % Fonksiyon Sonu.


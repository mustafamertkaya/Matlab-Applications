function sonuc=Proje4_Soru4_MustafaMert_Kaya(A,a)

DiziBoyutuA=length(A); % Dizisinin Boyutunu Tutma.
YeniDiziSayac=0; % a Say�s�n Tam B�lenleriyle Olu�an Yeni Dizinin �ndisini Tutma.
sonuc=1;
DogruDeger=0; % Dizi ��inde Arama ��in Gerekli Atama.

if a>0 && a==round(a)
    for i=1:a
        if mod(a,i)==0 % a Say�s�n�n Tam B�lenleriyle B Dizisini Olu�turma.
            YeniDiziSayac=YeniDiziSayac+1;
            B(YeniDiziSayac)=i;
        end
    end
    
    DiziBoyutuB=length(B); % B Dizisinin Boyutunu Tutma.
    if DiziBoyutuA==DiziBoyutuB % E�it Olmalar� ��in �ncelikle Boyutlar E�it Olmal�.
        for i=1:DiziBoyutuA
            for j=1:DiziBoyutuA % Her Bir A de�erini B i�inde Arama Bulununca 1 atama.
                if A(i) == B(j)
                    DogruDeger=1; 
                end
            end
            if DogruDeger==0 % De�er Bulunamad���nda D�ng�den Direk C�kma Ve Geriye 0 D�nd�rme. 
                sonuc=0;
                break;
            end
            DogruDeger=0; % Tekrar Kullanmak ��in S�f�rlama.
        end
        
    else % Boyutlar E�it De�ilse Geriye 0 D�nd�rme.
        sonuc=0;
    end
    
else % a Say�s� Pozitif Bir Tam Say� De�ilse Uyar� Verme. 
    fprintf('L�tfen a''y� Pozitif Bir Tam Say� Giriniz... ');
end
end % Fonksiyon Sonu.





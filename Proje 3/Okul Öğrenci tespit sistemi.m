function [sube, egitim, yil]=Proje3_Soru4_MustafaMert_Kaya(numara) % Fonksiyon Baþlangýcý.

gecici_Numara=numara;
numara_Sayac=0;

while gecici_Numara>1
    gecici_Numara=gecici_Numara/10;
    numara_Sayac=numara_Sayac+1;
end


if numara_Sayac==9
   
    %******** sube Çýktýsýný Bulma ***************************
    birler_Basamak=fix( ((numara/10) - (fix(numara/10)))*10 ); % Son Basamaktaki Sayýyý Bulma
    switch birler_Basamak
        case {0,1,2,3}
            sube=1;
        case {4,5,6}
            sube=2;
        case {7,8,9}
            sube=3;
    end


    %******** egitim Çýktýsýný Bulma ****************************

    egitim_Bulma=fix(((numara/(10^6)) - fix(numara/(10^6)))*10^3); % 5. Basamaðý Bulup Sonuca Karar Verme.
    if egitim_Bulma==707
        egitim=1;
    elseif egitim_Bulma==757
        egitim=2;
    else 
        fprintf('Yanlýþ egitim Verisi Girdiniz.\n');
    end


    %******** yil Çýktýsýný Bulma ****************************
    yil_kontrol=fix((numara/10^7-fix(numara/10^7))*10);

    if yil_kontrol==0
        yil_bulma=fix(numara/(10^7)); % ilk Ýki Basamagý Bulma.
        yil=2000+yil_bulma; % Ýlk Ýki Basamagý Yýla Dönüþtürme.
    else
        fprintf('Yanlýþ yil Verisi Girdiniz.\n');
    end

 
else
    fprintf('Yanlýþ Numara Verisi Girdiniz.\n');

end % Fonksiyon Sonu























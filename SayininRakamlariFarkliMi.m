function sonuc=SayininRakamlariFarkliMi(sayi)
sonuc=1;
basamak=sayi;
vektor=[];
while basamak>0
    birlerBasamagi=mod(basamak,10);
    vektor=[vektor birlerBasamagi];
    basamak=fix(basamak/10);
end
diziBoyutu=length(vektor);

for i=1:(diziBoyutu-1)
    for j=i+1:diziBoyutu
        if vektor(i)==vektor(j)
            sonuc=0;
            break;
        end
    end
end

end
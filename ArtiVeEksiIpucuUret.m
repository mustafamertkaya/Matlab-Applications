function [arti, eksi]=ArtiVeEksiIpucuUret(n,m)


arti=0; eksi=0;
sayi1=n;
sayi2=m;

[vektor1, basamak1]=SayiyiBasamaklaraAyir(sayi1);
[vektor2, basamak2]=SayiyiBasamaklaraAyir(sayi2);


kosul1=(basamak1==basamak2);
kosul2=SayininRakamlariFarkliMi(n);
kosul3=SayininRakamlariFarkliMi(m);

if kosul1 && kosul2 && kosul3
    for i=1:basamak1
        for j=1:basamak2
            if vektor1(i)==vektor2(j)
                if i==j
                    arti=arti+1;
                    break;
                else
                    eksi=eksi+1;
                    break;
                end
            end
        end
    end


end
end


function [vektor, basamak]=SayiyiBasamaklaraAyir(a)
basamak=0;
vektor=[];
while a>0
    birlerBasamagi=mod(a,10);
    vektor=[vektor birlerBasamagi];
    a=fix(a/10);
    basamak=basamak+1;
end

end
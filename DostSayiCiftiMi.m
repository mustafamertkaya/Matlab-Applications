function sonuc=DostSayiCiftiMi(m,n)

toplamM=SayininHasBolenlerininToplaminiHesapla(m);
toplamN=SayininHasBolenlerininToplaminiHesapla(n);

if (toplamM==n) && (toplamN==m)
    
    sonuc=1;
else
    sonuc=0;
end

end
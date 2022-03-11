function toplam=SayininHasBolenlerininToplaminiHesapla(n)

toplam=1;

if n>=2
   
    for i=round(n/2):-1:2
        if mod(n,i)==0
            toplam=toplam+i;
        end
    end
            
else
    toplam=0;
end

end
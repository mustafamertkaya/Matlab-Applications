function sonuc=OreSayiMi(n)

altToplam=0;
sayac=0;

for i=1:n
    
    if mod(n,i)==0
        altToplam=altToplam+(1/i);
        sayac=sayac+1;
    end
    
    harmonik=sayac/altToplam;
    
    if harmonik==fix(harmonik)
        sonuc=1;
    else
        sonuc=0;
    end

end
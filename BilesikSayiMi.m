function sonuc=BilesikSayiMi(n)

sonuc=0;
if n>1
    for i=n/2:-1:2
        if mod(n,i)==0
            Sonuc=1;
            break;
        end
    end
    
end
end
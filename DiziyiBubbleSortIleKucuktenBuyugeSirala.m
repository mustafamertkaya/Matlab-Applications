function A=DiziyiBubbleSortIleKucuktenBuyugeSirala(A)

diziBoyutuA=length(A);

for i=1:(diziBoyutuA-1)
    for j=diziBoyutuA:-1:2
        
        if A(j)<A(j-1)
            geciciDegisken=A(j-1);
            A(j-1)=A(j);
            A(j)=geciciDegisken;
        end
    end
end
end
function A=DiziyiSelectionSortIleSirala(A)

DiziBoyutuA=length(A);

for i=1:(DiziBoyutuA-1)
    
    maksimumIndis=i;
    
    for j=(i+1):DiziBoyutuA
        if A(j)>A(maksimumIndis)
            maksimumIndis=j;
        end
    end
    
    if i~=maksimumIndis
       
        geciciDegisken=A(i);
        A(i)=A(maksimumIndis);
        A(maksimumIndis)=geciciDegisken;
    end
end
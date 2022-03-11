function [A, indislerVektoru]=DiziyiSelectionSortIleSiralaIndisliSirala(A)

DiziBoyutuA=length(A);
indislerVektoru=1:DiziBoyutuA;

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
        
        geciciIndis=indislerVektoru(i);
        indislerVektoru(i)=indislerVektoru(maksimumIndis);
        indislerVektoru(maksimumIndis)=geciciIndis;
    end
    
end
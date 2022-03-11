function A=DiziyiInsertionSortIleKucuktenBuyugeSirala(A)

diziBoyutu=length(A);

for i=2:diziBoyutu
    
    gecici=A(i);
    j=i;
    
    while (j>=2) && (gecici<A(j-1))
        A(j)=A(j-1)
    end
    A(j)=gecici
end
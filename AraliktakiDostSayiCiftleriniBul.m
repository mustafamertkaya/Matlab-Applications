function AraliktakiDostSayiCiftleriniBul(alt,ust)

sayac=1;
for i=alt:(ust-1)
    for j=i+1:ust
        if DostSayiCiftiMi(i,j)
            fprintf('%d. ��z�m�n Dost Sayi �ifti:(%d,%d)\n',sayac,i,j);
            sayac=sayac+1;
        end
    end
end

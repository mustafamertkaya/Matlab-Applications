function AraliktakiDostSayiCiftleriniBul(alt,ust)

sayac=1;
for i=alt:(ust-1)
    for j=i+1:ust
        if DostSayiCiftiMi(i,j)
            fprintf('%d. Çözümün Dost Sayi Çifti:(%d,%d)\n',sayac,i,j);
            sayac=sayac+1;
        end
    end
end

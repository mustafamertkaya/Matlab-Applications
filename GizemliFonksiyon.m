function GizemliFonksiyon(n)
clc;
if (n<2)||(n>20)
    disp('Beklenen Aral�kta Bir Giri�  De�il.');
    return;
end
for i=1:n
   if (i==1)||(i==n)
       for j=1:n
           fprintf('#'); %Ekrana # Bas
       end
       fprintf('\n');
   else
       fprintf('@'); %Ekrana @ Bas
       for j=2:(n-1)
           fprintf('    '); %Ekrana Bo�luk Bas
       end
       fprintf('@\n');
   end    
end

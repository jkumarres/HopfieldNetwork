clear
clc

%----------------------------------

Mem = [ 1 , 1 , 1 , 1 , 1;
        -1 , 1 , -1 , 1 , -1 ];

%----------------------------------

W = 0;

for i = 1 : length(Mem(:,1))
    W = W + Mem(i,:)' * Mem(i,:);
end

%----------------------------------
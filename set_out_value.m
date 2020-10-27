function T1 = set_out_value(size)
k = sqrt(size);
for i=1:1:k
    for j=1:1:k
        if i==j
            T(i,j)=1;
        else
            T(i,j)=0;
        end
    end
end
T1 = T;
end


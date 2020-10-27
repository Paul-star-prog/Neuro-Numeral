function P1 = get_initial_neuro(startIndex,finalIndex)
P =[];
for i=startIndex:1:finalIndex
    name=strcat(int2str(i), '.png');
    I=imread(name);
    BW=im2bw(I, 0.5);
    B=double(BW);
    A=BW(:);
    P=[P A];
end
P1 = P;
end


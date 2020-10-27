function Y = run_neuro(img, net)
test=imread(img);
BW=im2bw(test, 0.5);
B=double(BW);
A=BW(:);
Y=sim(net, A)
end


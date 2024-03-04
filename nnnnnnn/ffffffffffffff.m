function [F]=ffffffffffffff(im)
% Summary of this function goes here
im=double(im);
m=mean(mean(im));
s=std(std(im));
F=[m s];
end
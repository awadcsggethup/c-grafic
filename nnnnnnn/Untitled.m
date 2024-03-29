%% Test Image
clc;
clear all;
close all;
[fname, path]=uigetfile('.jpg','proviaaade an Image for timg');
fname=strcat(path, fname);
im=imread(fname);
im=im2bw(im);
imshow(im);
title('timg');
%% Find the class the test image belongs
Ftest=ffffffffffffff(im);
%% Compare with the feature of training image in the database
load db.mat
Ftrain=db(:,1:2);
Ctrain=db(:,3);
for(i=1:size(Ftrain,1))
    dist(i,:)=sum(abs(Ftrain(i,:)-Ftest));
end
m=find(dist==min(dist),1);
det_class=Ctrain(m);
msgbox(strcat('Detected Class=',num2str(det_class)));
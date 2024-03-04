clc;
clear all;
close all;
[fname, path]=uigetfile('.jpg','«Œ — ’Ê—… ··«Œ »«—');
fname=strcat(path, fname);
im=imread(fname);
im=im2bw(im);
imshow(im);
title('«·’Ê—…');

%% «·⁄ÀÊ— ⁄·Ï «·›∆… «· Ì Ì‰ „Ì ≈·ÌÂ« «·’Ê—… «· Ã—Ì»Ì…
Ftest=ffffffffffffff(im);

load db.mat
Ftrain=db(:,1:2);
Ctrain=db(:,3);
for(i=1:size(Ftrain,1))
    dist(i,:)=sum(abs(Ftrain(i,:)-Ftest));
end
m=find(dist==min(dist),1);
det_class=Ctrain(m);

dictionary = {
    0, '€Ì— „œ—»…';
    1, 'asd';
    2, 'dog';
    3, 'monky';
};

if isempty(det_class)
    det_word = '?';  
else
    det_word = dictionary{det_class+1, 2};
end

msgbox(strcat('«·›∆… «·„ﬂ ‘›…=',num2str(det_class), ' (', det_word, ')'));
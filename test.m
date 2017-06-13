clear;
load COIL20;
data=fea(1:216,:);
[new1 b1 dis1] = LRSA(data',50,11);
[new2 b2 dis2] = LRSA1(data',50,11);
[new3 b3 dis3] = LRSA2(data',50,11);
[new4 b4 dis4] = LRSA3(data',50,11);
A1 = NormalizeFea(new1);
A2 = NormalizeFea(new2);
A3 = NormalizeFea(new3);
A4 = NormalizeFea(new4);
subplot(221),imshow(A1*100);
title('余弦加k');
subplot(222),imshow(A2*100);
title('原始');
subplot(223),imshow(A3*100);
title('余弦加正切');
subplot(224),imshow(A4*100);
title('余弦加对数');


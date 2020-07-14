clc;
clear;
ges_data = csvread('sign_mnist_test.csv',1,1);
ges_label = csvread('sign_mnist_test.csv',1,0,[1,0,7172,0]);
figure;
for i = 1:10
    imgs = ges_data(i,:);
    img = reshape(imgs,28,28);
    subplot(2,5,i);imshow(uint8(img));title(ges_label(i))
end
s1=ones(64,1);
imshow(s1)
n_s1=s1./sum(s1);
c1=conv(n_s1,n_s1);
n_c1=c1./sum(c1);
c2=conv(n_c1,n_c1);
n_c2=c2./sum(c2);
c3=conv(n_c2,n_c2)
n_c3=n_c2./sum(n_c2);
subplot(2,2,1),plot(s1);
subplot(2,2,2),plot(n_c1);
subplot(2,2,3),plot(n_c2);
subplot(2,2,4),plot(n_c3);
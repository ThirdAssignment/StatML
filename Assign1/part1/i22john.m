mu = [1;2];
cov = [0.3, 0.2 ; 0.2, 0.2];

L = chol(cov,'lower');
z = randn(2,100);


y = bsxfun(@plus,mu,L * z)

figure(1)
scatter(z(1,:),z(2,:))
figure(2)
scatter(y(1,:),y(2,:))


figure(3)
hold on

scatter(y(1,:),y(2,:),'cyan')
%scatter(y(1,:),y(2,:))

my1 = mean(y(1,:))
my2 = mean(y(2,:))
scatter(my1,my2,72,'blue','+')
scatter(1,2,72,'red','+')

hold off

%my3 = mean(y(1,:))
%my4 = mean(y(2,:))

%figure(3)
%scatter(mz,my)
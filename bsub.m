function x = bsub(R,y)
  % Matlab program to solve the upper triangle system Rx = y
  n= length(y);
  x(n)=y(n)/R(n,n);
  for i=n-1:-1:1
    x(i)=(y(i)-R(i,i+1:n)*x(i+1:n)')/R(i,i); 
  end

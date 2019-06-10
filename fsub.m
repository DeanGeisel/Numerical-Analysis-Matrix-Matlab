function y = fsub(A,b);
%%%%%%function given by Dr. Sulman to solve lower triangle system
%%%%%%modified to include division by coefficient on new y in each cycle
  m = length(b);
  y(1)=b(1)/A(1,1);
  for i=2:m
    y=[y; (b(i)-A(i,1:i-1)*y(1:i-1))/A(i,i)];
  end

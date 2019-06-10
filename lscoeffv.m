function [A,b] = lscoeffv(m,n)
%%%%%%lscoeffv is short for least squares coefficient vector
%%%%%%function to establish a Vandermonde coefficient Matrix based on a
%%%%%%discretized vector of 0 to 1 of length m. Also creates a constant
%%%%%%vector "b" based on the approximated function "cos(4t)".
%%%%%%by:Dean Geisel
t=(0:(m-1))'/(m-1);
V=zeros(m,n);
V=fliplr(vander(t));
for i=1:n
    A(:,i)=V(:,i);
end
for j=1:m
b(j)=cos(4*t(j));
end


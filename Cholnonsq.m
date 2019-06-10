function [R] = Cholnonsq(A)
%%%%%%Cholnonsq is short for Cholesky factorization for a non square
%%%%%%matrix, "A". The out put is "R" which would be used as "R'*R"
R=A'*A  %%%%%%Create a square matrix from A'*A
[m,n]=size(R) %%%%%%establish variables for number of rows and columns
for k=1:m
    for j=k+1:m
        R(j,j:m)=R(j,j:m)-R(k,j:m)*conj(R(k,j))/R(k,k);
        R(k,k:m)=R(k,k:m)/sqrt(R(k,k));
    end
end
end


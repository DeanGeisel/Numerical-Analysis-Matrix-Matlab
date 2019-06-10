function [R] = Cholesky(A)
%%%%%%%Cholesky(A)
%%%%%%by Dean Geisel
%%%%%%for Dr. Mohamed Sulman
%%%%%%in MTH 7160

%%%%%%Cholesky (A) factorizes a positive definite matrix "A" into
%%%%%%"R'*R",the multiplication of the transpose of an upper triangular
%%%%%%Matrix and the upper triangular matrix.
%%%%%%Cholesky(A) only outputs "R", 
R=A %%%%%%Start R as the pos def matrix A
[m,n]=size(R) %%%%%%note m=n in positive def matrix
for k=1:m
    for j=k+1:m
        R(j,k:m)=R(j,k:m)-R(k,k:m)*conj(R(k,j))/R(k,k);
    end
        R(k,k:m)=R(k,k:m)/sqrt(R(k,k));
end
end
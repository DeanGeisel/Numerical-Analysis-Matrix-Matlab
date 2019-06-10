function [L,U] = gauss(A)
%%%%%%%geisel_gauss(A)
%%%%%%by Dean Geisel
%%%%%%for Dr. Mohamed Sulman
%%%%%%in MTH 7160

%%%%%%gauss (A) is made to compute the LU factorization of a square m x m matrix
%%%%%%"A" using gaussian elimination without pivoting. L is  m x m lower
%%%%%%triangular and U is  m x m upper triangular such that A=LU.

%-------------------------------------------------------------------------

U=A;%%%%%%start with the matrix U the same as A
[m,n]=size(A);%%%%%%Establish reference variables for the dimensions of A
%%%%%%note m=n
L=eye(m);%%%%%%L is started as Identity matching size of A 
for k=1:m-1
    for j=k+1:m
    L(j,k)=U(j,k)/U(k,k);%%%%%%positions in each row of a column of L under
    %%%%%%the diagonal is the corresponding value of U divided by the
    %%%%%%diagonal
    U(j,k:m)=U(j,k:m)-L(j,k)*U(k,k:m); %%%%%%Replace the rows of U below row k 
    end
end
L
U
end


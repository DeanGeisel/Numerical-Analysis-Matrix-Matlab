function [P,L,U] = gausspivot(A)
%%%%%%%gausspivot(A)
%%%%%%by Dean Geisel
%%%%%%for Dr. Mohamed Sulman
%%%%%%in MTH 7160

%%%%%%gauss-pivot (A) is made to compute the LU factorization of a square m x m matrix
%%%%%%"A" using gaussian elimination with pivoting. P is an m x m permutation matrix,
%%%%%%L is  m x m lower
%%%%%%triangular and U is  m x m upper triangular such that PA=LU.
U=A;%%%%%%start with the matrix U the same as A
[m,n]=size(A);%%%%%%Establish reference variables for the dimensions of A
%%%%%%note m=n
L=eye(m);%%%%%%L is started as Identity matching size of A 
P=eye(m);%%%%%%P is started as Identity matching size of A 
for k=1:m-1
    [M,I]=max(abs(U(k:m,k))); %%%%%%Find maximum value in column k below row k
    i=I+k-1; %%%%%%give actual index in relation to the matrix
    %%%%%%Next 9 lines exchange rows of U, L, and P so that row with the max value
    %%%%%%found above is row k.
    tmpu=U(k,k:m);
    U(k,k:m)=U(i,k:m);
    U(i,k:m)=tmpu;
    tmpl=L(k,1:k-1);
    L(k,1:k-1)=L(i,1:k-1);
    L(i,1:k-1)=tmpl;
    tmpp=P(k,:);
    P(k,:)=P(i,:);
    P(i,:)=tmpp;
    %%%%%%Now perform Gaussian elimination with permuted matrix
     for j=k+1:m
    L(j,k)=U(j,k)/U(k,k);%%%%%%positions in each row of a column of L under
    %%%%%%the diagonal is the corresponding value of U divided by the
    %%%%%%diagonal
    U(j,k:m)=U(j,k:m)-L(j,k)*U(k,k:m);%%%%%%Replace the rows of U below row k
     end
end
end


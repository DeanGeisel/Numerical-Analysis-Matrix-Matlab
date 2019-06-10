function[x]=LSSVD(A,b)
%%%%%%%%%%%%LSSVD is short for solving the least squares problem using 
%%%%%%Singular Value factorization.
[U,S,V]=svd(A,0)
SVDr=U'*b'
[wtemp]=bsub(S,SVDr)
w=wtemp'
[x]=V*w
x'
end
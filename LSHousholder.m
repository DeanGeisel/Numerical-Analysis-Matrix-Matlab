function [x]=LSHousholder(A,b)
%%%%%%LSHousholder is short for solving the least squares problem using 
%%%%%%Housholder factorization.
[m,n]=size(A)
     [Q,R]=house(A); %%%%%%finding Q and R using housholder factorization
     Q=Q(:,1:n)%%%%%%Reduce Q
     Gr=Q'*b';%%%%%%Right side of the equation after multiplying both sides 
                %%%%%%by Q transpose
     [y]=bsub(R,Gr);%%%%%%solving for y in the upper tri system Ry=Gr
     x=y'%%%%%% Transposing y to a column vector for visual purposes.
end


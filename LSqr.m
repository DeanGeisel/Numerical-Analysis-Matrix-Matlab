function [x]=LSqr(A,b)
%%%%%%LSqr is short for solving the least squares problem using 
%%%%%%MATLAB's qr.
     [Q,R]=qr(A,0); %%%%%%finding reduced Q and R using preloaded qr
     Gr=Q'*b';%%%%%%Right side of the equation after multiplying both sides 
                %%%%%%by Q transpose
     [y]=bsub(R,Gr);%%%%%%solving for y in the upper tri system Ry=Gr
     x=y'%%%%%% Transposing y to a column vector for visual purposes.
end


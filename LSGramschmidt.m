function [x]=LSGramschmidt(A,b)
%%%%%%LSGramschmidt is short for solving the least squares problem using 
%%%%%%Modified Gram Schmidt factorization.
     [Q,R]=mgs(A); %%%%%%finding Q and R using modified gram schmidt
     Gr=Q'*b';%%%%%%Right side of the equation after multiplying both sides 
                %%%%%%by Q transpose
     [y]=bsub(R,Gr);%%%%%%solving for y in the upper tri system Ry=Gr
     x=y';%%%%%% Transposing y to a column vector for visual purposes.
end

function [x] = LSNormal(A,b)
%%%%%%LSNormal is short for least squares solved using Normal Equations
    [R]=Cholnonsq(A);%%%%%%Perform Cholesky factorization
    Nr=A'*b';%%%%%%right side after multiplying both sides by A transpose
    Rc=R'%%%%%%redifined R transpose in response to an error message 
    [w]=fsub(Rc,Nr);%%%%%%solving for w in Rc*w=Nr by solving lower tri system
    [x]=bsub(R,w);%%%%%%solving for x in Rx=w by solving upper tri system
   
end


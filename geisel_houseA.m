%%%%%%geisel_house(A)
%%%%%%by Dean Geisel
%%%%%%for Dr. Mohamed Sulman
%%%%%%in MTH 7160

%----------------------------------------------------------------------

%%%%%%%geisel_houseA is a script intended to find the full QR
%%%%%%%factorization of a matrix (A) using the algorithm for Householder reflections
%%%%%%%in Numerical Linear Algebra by Trefethen and Bau.
%%%%%%%More convenient commands were avoided for learning/assignment purposes.


%%%%%%%This script includes Q=FormQ(W), intended to create Unitary Matrix Q
%%%%%%%from the projector vectors that define the Householder Reflectors.



A=[1 2 3;            %%%%%%Create matrix A
   4 5 6;
   7 8 7;
   4 2 3;
   4 2 2];      %%%%%%Establish matrix A
sz = size(A);  %%%%%%Make vector of dimensions of A 
W = zeros(sz(1,1),sz(1,2));
for k = 1:sz(1,2)
 x = A(k:sz(1,1),k); %%%%%%Copy a portion of a column of A
 
 
 if x(1)>=0
     xsi=1;         %%%%%%Determine sign of the Reflector to maximize distance
 else xsi=-1;
 end 
     clear xin
    for b=1:sz (1,1)-k+1
    xin(b)=(x(b))^2; %%%%%%%This section finds norm of the vector x
    end                %%%%%%%whose size is determined by m-k+1
    xsum=sum(xin);
    xnorm=sqrt(xsum);
    
 v = xsi*xnorm*eye(sz(1,1)-k+1,1) + x;%%%%%%Creating projection vector 
    clear vin
    for b=1:sz (1,1)-k+1;
    vin(b)=(v(b))^2; %%%%%%%This section finds norm of the vector v
    end                %%%%%%%whose size is determined by m-k+1
    vsum=sum(vin);
    vnorm=sqrt(vsum);
    
 v = v/vnorm;  %%%%%%Normalizing projection vector 
 
 %%%%%%Next line perform the reflection using the outer product of v
 A(k:sz(1,1),k:sz(1,2)) = A(k:sz(1,1),k:sz(1,2)) - 2*v*(v'*A(k:sz(1,1),k:sz(1,2)));
 R=A; %%%%%%Rename the modified A as R for continuity
 W(k:sz(1,1),k) = v; %%%%%%Fill matrix W with projector vectors.
end

%%%%%%Using algorithm 10.3 from the book and using x=1st column of identity

szW = size(W);
Q = eye(szW(1,1));
for k = szW(1,2):-1:1
 v = W(k:szW(1,1),k);
 Q(k:szW(1,1),:) = Q(k:szW(1,1),:) - 2*v*(v'*Q(k:szW(1,1),:));
end
W
R
Q
Q*R
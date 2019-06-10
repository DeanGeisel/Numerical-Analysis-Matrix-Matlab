function [Q,R] = mgs (A)


sz = size(A);       %%%%%%establish a vector of the dimensions of A
for i=1:sz(1,2);
V(:,i) = A(:,i);    %%%%%%Make a new matrix copied from A, that can be modified.
end
Q = zeros(sz(1,1),sz(1,2));%%%%%%%Establish empty Q and R matrices 
R = zeros(sz(1,2),sz(1,2));
for i = 1:sz(1,2)
    clear vin
    for k=1:sz (1,1);
    vin(k)=(V(k,i))^2; %%%%%%%This section finds norm of the columns of V
    end                %%%%%%%for the diagonal of R
    vsum=sum(vin);
    vnorm=sqrt(vsum);

 R(i,i) = vnorm;
    for t=1:sz(1,1)
 Q(t,i) = V(t,i)/R(i,i);%%%%%%Normalize column V to become corresponding column 
    end                 %%%%%%Column of Q
 for j = i+1:sz(1,2)
    clear projf
     for t=1:sz(1,1)
       proj(t)= Q(t,i)*V(t,j); %%%%%%This section finds the projection factor 
       projf=sum(proj);        %%%%%%for use in the direction of Q later
     end
 R(i,j)=projf;
 V(:,j)=V(:,j)-R(i,j)*Q(:,i);   %%%%%%Next column of V is modified to reflect
                                %%%%%%the subtraction of the projection of
                                %%%%%%current V on Q
 end
end 
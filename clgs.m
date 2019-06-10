function [Q,R] = clgs(A)
 %%%%%%Classical Gram Schmidt.  [Q,R] = clgs(X);
    [m,n] = size(A); %%%%%%Establish indices for dimensions of A
    Q = zeros(m,n); %%%%%%Empty Matrix Q with dimensions of A
    R = zeros(n,n); %%%%%%Empty square matrix R same row dimension of colQ
    for j = 1:n
        V(:,j) = A(:,j);%%%%%%Copy matrix A column wise to preserve A
        for i = 1:j-1
            R(i,j) = Q(:,i)'*A(:,j);%%%%%%for each position above j in column
                                    %%%%%%ith column of QinnerproductA
            V(:,j) = V(:,j) - R(i,j)*Q(:,i);%%%%%%remove projection from this column
                                            %%%%%%of V
        end
        clear vin
        for k=1:m
        vin(k)=(V(k,j))^2; %%%%%%%This section finds norm of the columns of V
        end                %%%%%%%for the diagonal of R
        vsum=sum(vin);
        vnorm=sqrt(vsum);
        R(j,j) = vnorm;
        Q(:,j) = V(:,j)/R(j,j);%%%%%%Normalize this column of V to the new 
                                %%%%%%column of Q
     end
end
function [E,P,Q,X,Y,Z,N,L] = Sig_n_energy(LOD,i,ki,factorr,Fs)
if ki<13
        E=LOD(1,((i-1)*250+1:(i-1)*250+1000));
        P=LOD(2,((i-1)*250+1:(i-1)*250+1000));
        Q=LOD(3,((i-1)*250+1:(i-1)*250+1000));
        X=LOD(4,((i-1)*250+1:(i-1)*250+1000));
        Y=LOD(5,((i-1)*250+1:(i-1)*250+1000));
        Z=LOD(6,((i-1)*250+1:(i-1)*250+1000));
else
        E=zeros(1,1000);
        P=LOD(1,((i-1)*250+1:(i-1)*250+1000));
        Q=LOD(2,((i-1)*250+1:(i-1)*250+1000));
        X=LOD(3,((i-1)*250+1:(i-1)*250+1000));
        Y=LOD(4,((i-1)*250+1:(i-1)*250+1000));
        Z=LOD(5,((i-1)*250+1:(i-1)*250+1000));
end
        [E,P,Q,X,Y,Z]=sampled_version(E,P,Q,X,Y,Z,factorr);
        
        L=length(E);

        N=(X+Y+Z);

%         E=E-mean(E);
%         P=P-mean(P);
%         Q=Q-mean(Q);
%         X=X-mean(X);
%         Y=Y-mean(Y);
%         Z=Z-mean(Z);
%         N=N-mean(N);
        
%         E=E/max(E);
%         P=P/max(P);
%         Q=Q/max(Q);
%         X=X/max(X);
%         Y=Y/max(Y);
%         Z=Z/max(Z);
        
        

end


%conductivity Vs gate voltage for Sio2 and new dielectric
Vg  = 2.2:.1:5 % Gate voltage Which is varied above threshold value
Nm=6e12;
mu0=500;

er1 = 3.7;
er2 = 14;
    for Nss = [1e11 1e12 1e13 1e14]
        mu=mu0.*exp(-1.*((3*Nss)./(2*Nm)).^1.5);
        d=20e-7;
        e1=er1*8.85e-14;
        Ci1=(e1/d);
        vt = 2.2;
        q1=(1)*Ci1*(Vg-vt);
        sig1=mu*q1;
        plot(Vg,sig1,'r');
        grid on
        hold on
    end
   for Nss = [1e11 1e12 1e13 1e14]
        mu=mu0.*exp(-1.*((3*Nss)./(2*Nm)).^1.5);
        d=20e-7;
        e2=er2*8.85e-14;
        Ci2=(e2/d);
        vt = 2.2;
        q2=(1)*Ci2*(Vg-vt);
        sig2=mu*q2;
        plot(Vg,sig2,'b');
        grid on
        hold on
   end

xlabel('Gate voltage Vg (vol)');
ylabel('conductivity Sigma (mho)');
    hold off
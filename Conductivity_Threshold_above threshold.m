% Graph Conductivity Vs Gate Voltage above threshold voltage for Different
% trap density
%e - Permittivity of silicon dioxide
%d - Thickness of gate oxide
Vg  = 2.2:1:30 % Gate voltage Which is varied above threshold value
Nm=6e12;
mu0=500;
for Nss = 1e11:1e12:1e14
    mu=mu0.*exp(-1.*((3*Nss)./(2*Nm)).^1.5);
    d=20e-7;
    e=3.7*8.85e-14;
    Ci=(e/d);
    vt = 2.2;
    q=(1)*Ci*(Vg-vt);
    sig=mu*q;
    plot(Vg,sig);
    grid on
    hold on
end
xlabel('Gate voltage Vg (vol)');
ylabel('conductivity Sigma (mho)');
    hold off
% Trap density Vs Mobility of carriers
Nss = 1e11:1e12:1e14 % Gate voltage Which is varied above threshold value
Nm=6e12;
mu0=500;
    mu=mu0.*exp(-1.*((3*Nss)./(2*Nm)).^1.5);
    d=20e-7;
    e=3.7*8.85e-14;
    plot(Nss,mu);
    grid on
    hold on
xlabel('Trap density (Nss)');
ylabel('mobility (mu)');
    hold off
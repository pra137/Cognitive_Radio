clc; close all; clear all;

samples = 1000;
itrs = 1000;
Pfa = 0.001:0.001:1;

threshold = zeros(1,length(Pfa));

for tt = 1:length(Pfa)
    energy_per_sample = zeros(1,itrs);
    
    for kk=1:itrs
         noise=(randn(1,samples)+1j*randn(1,samples))./(sqrt(2)); 
         energy = abs(noise).^2;
         energy_per_sample(kk) =(1/samples).*sum(energy);
    end
    
    energy_desc = sort(energy_per_sample,'descend');
 
    threshold(tt) = energy_desc(ceil(Pfa(tt)*itrs));
end

plot(threshold, Pfa)
hold on

% Theoretical value
thresh1 = (qfuncinv(Pfa)./sqrt(samples))+ 1;
plot(thresh1, Pfa, 'r')
% OFDM parameters
    num_symbols = 1000;
    num_subcarriers = 36;
    fft_size = 2^ceil(log2(num_subcarriers));
    guard_size = 12;
    
% Coding Parameters
    const_length = 7;
    gen_polynomial = [131 174];
    code_rate = size(gen_polynomial,1)/size(gen_polynomial,2);
    
% Modulation Parameters
    mod_type = 16;
function tb = source_generator(seq_length,seq_type)

    switch(seq_type)
        case 0
            tb = zeros(1,seq_length);
        case 1
            tb = ones(1,seq_length);
        case 2
            tb = randi([0 1],1,seq_length);
        otherwise
            error('seq_type should be 0,1 or 2');
    end

end
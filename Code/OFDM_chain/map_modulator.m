% switch map_num
%     case 2
%         map = [-1 1];
%     case 4
%         map = [-1-i 1-i -1+i 1+i]/sqrt(2);
%     case 16
%         map = (2/sqrt(10))*[-1.5-1.5*i  1.5-1.5*i -0.5-1.5*i  0.5-1.5*i ...
%                         -1.5+1.5*i  1.5+1.5*i -0.5+1.5*i  0.5+1.5*i ...
%                         -1.5-0.5*i  1.5-0.5*i -0.5-0.5*i  0.5-0.5*i ...
%                         -1.5+0.5*i  1.5+0.5*i -0.5+0.5*i  0.5+0.5*i];
%     otherwise
%         error('No listed map denoted.');
%         return;
% end
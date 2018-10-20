clear
close all
clc

phase = slove_phase(1, 0, 1, 0);

for i = 1 : 1 : 3
    index = 0;
    for j = -pi : pi/3 : pi
        index = index + 1;
        if abs(real(phase(i)) - j) < 0.01
            fprintf('\n');
            fprintf(strcat('phi_', num2str(i), ' =', 32, num2str(j)));
            fprintf('\n');
            fprintf(strcat('phi_', num2str(i), ' is the', 32, num2str(index), 'th element of the j matrix.'));
            fprintf('\n');
            continue;
        end
    end
end
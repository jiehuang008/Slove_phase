%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% A simple program to slove the phase in a Quantum communication problem. %
% The form of the equation is (T(phi_1, phi_2, phi_3))^alpha * [1 0 0]' = %
% [a b c]',where 'phi_1', 'phi_2' and 'phi_3' are variables.              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [phase] = slove_phase(alpha, a, b, c)

% 'alpha' is the  exponential of the matrix T.
% 'a', 'b' and 'c' are the three elements of the column matrix.

%% The author's statement and contact information.
fprintf('\n');
fprintf('This program was written by Jie Huang at 2018-9-20,');
fprintf('\n');
fprintf('it can be used by everyone if you like it.');
fprintf('\n');
fprintf('\n');
fprintf('If you have any question, you can contact Dr. Jie Huang,');
fprintf('\n');
fprintf('the email adress is jhuang_nudt@163.com.');
fprintf('\n');

syms phi_1 phi_2 phi_3

T = 1/3 * [exp(1i * phi_1) + exp(1i *(phi_2 + 4*pi/3)) + exp(1i *(phi_3 - 2*pi/3)) ...
    -exp(1i * (phi_1 + 2*pi/3)) - exp(1i *(phi_2 + 2*pi/3)) + exp(1i *(phi_3 + pi/3)) ...
    -exp(1i * (phi_1 - pi/3)) + exp(1i *(phi_2 + 4*pi/3)) - exp(1i *(phi_3 - pi/3));...
    -exp(1i * (phi_1 + 2*pi/3)) - exp(1i *(phi_2 + 2*pi/3)) + exp(1i *(phi_3 + pi/3)) ...
    exp(1i * (phi_1 + 4*pi/3)) + exp(1i *(phi_2)) + exp(1i *(phi_3 + 4*pi/3)) ...
    exp(1i * (phi_1 + pi/3)) - exp(1i *(phi_2 + 2*pi/3)) - exp(1i *(phi_3 + 2*pi/3));...
    -exp(1i * (phi_1 - pi/3)) + exp(1i *(phi_2 + 4*pi/3)) - exp(1i *(phi_3 - pi/3)) ...
    exp(1i * (phi_1 + pi/3)) - exp(1i *(phi_2 + 2*pi/3)) - exp(1i *(phi_3 + 2*pi/3)) ...
    exp(1i * (phi_1 - 2*pi/3)) + exp(1i *(phi_2 + 4*pi/3)) - exp(1i *(phi_3))];

T_1 = T^alpha * [1 0 0]';

[phi_1, phi_2, phi_3] = solve(T_1(1,1) - a, T_1(2, 1) - b, T_1(3, 1) - c, phi_1, phi_2, phi_3);

phase = [vpa(phi_1), vpa(phi_2), vpa(phi_3)];

end

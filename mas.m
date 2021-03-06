function dx = mas(t, x, u, x_t_k)
global A;   global B;
global alpha; global c1;
global N;
% dx_i = A*x_i +B*u_i
% e_i = expm(A*(t-t_k_i))*x_i_t_k - x_i
% f = norm(e_i) - c_1*exp(-alpha*t)
% dx(1:2) = A*x(1:2) - B1*u1 + D1*omega(1);

dx = zeros(2*N,1);
% dynamics
for l = 1:N
    dx(2*l-1:2*l) = A*x(2*l-1:2*l) + B*u(l);
%     e(2*l-1:2*l)= expm(A*(t-t_k(l)))*x_t_k(2*l-1:2*l) - x(2*l-1:2*l);
%     e(2*l-1:2*l)= expm(A*t)*x_t_k(2*l-1:2*l) - x(2*l-1:2*l);
%     f(l) = norm(e(2*l-1:2*l))-c1*exp(-alpha*t);
end
% if isempty(find(f > 0))
%     break
% end
end
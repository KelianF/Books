A = [ -.003  .039     0 -.322;
      -.065 -.319  7.74     0;
       .020 -.101 -.429     0;
          0     0     1     0 ];
B = [   .01    1;
       -.18 -.04;
      -1.16 .598;
          0    0 ];
n = size(B,1); m = size(B,2);

# discretize
dt = 1;
B = A\(expm(A*dt) - eye(n))*B;   # B matrix described in question
A = expm(A*dt);                  # A matrix described in question

# lqr params
T = 100;
rho = 100;

# form least norm problem with variable
# x = (x_1, sqrt(rho)*u_1, ..., sqrt(rho)*u_{T-1}, x_T)

C = [eye(n,n) zeros(n, (n+m)*(T-1))];
for t = 1:T-1
  C = [C; zeros(n, (n+m)*(t-1)) A 1/sqrt(rho)*B -eye(n,n) zeros(n, (n+m)*(T-t-1))];
end
M = C'/(C*C');
K = M[n+1:n+m, 1:n]/sqrt(rho)     # K matrix described in question

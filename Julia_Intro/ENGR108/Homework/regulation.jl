error("Rather than including this file you should copy the following code (excluding this line) and follow the instructions in the three sections marked.");

# Problem data.
n = 3
m = 2
T = 10
A = [1.003 0 -0.008;
     0.005 .997 0;
     0 0.005 1.002]
B = [1 0;
     4 5;
     6 2]

# Construct controllability matrix.
C = zeros(n, (T-1)*m)
for t=1:T-1
    C[1:end,(t-1)*m+1:t*m] = A^(t-1)*B
end

###############################################################################
# Your code here. You should compute K_1.

K_1 = zeros(m,n)
###############################################################################

# Simulate the system with this initial data
T = 100
x1 = [1 2 3]'


###############################################################################
# Your code here. You should generate two n-by-T matrices called x_open and x_reg.

x_open = zeros(n, T)
x_reg = zeros(n,T)

###############################################################################

# Plot the result without regulation.
using Gadfly
set_default_plot_size(15cm, 6cm)
p1 = Gadfly.plot([layer(y=x_open[i,:]', x=[1:T], Geom.line,
                     Theme(default_color=color(["red" "blue" "green"][i%3+1]))) for i in 1:n]...,
                     Guide.XLabel("t"),
                     Guide.YLabel("xi"),
                     Guide.title("xi versus t without regulation"))

# Plot the result with regulation.
p2 = Gadfly.plot([layer(y=x_reg[i,:]', x=[1:T], Geom.line,
                     Theme(default_color=color(["red" "blue" "green"][i%3+1]))) for i in 1:n]...,
                     Guide.XLabel("t"),
                     Guide.YLabel("xi"),
                     Guide.title("xi versus t with regulation"))
display(p1)

###############################################################################
# Put this in a separate cell to see both plots.
display(p2)
###############################################################################

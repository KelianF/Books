###############################################################################
# The variables provided are described below.
#     n: number of products
#     p_nom: nominal price by product
#     d_nom: nominal demand by product
#     c: consts by product
#     E: the matrix relating changes in prices to changes in demand
#
# A helper function is also provided.
#     demand(price): takes a n-vector of prices and computes the demands.
#                    this function is random so running it multiple times
#                    with the same prices will not result in the same output.
###############################################################################

# number of products
n=5;
# nominal prices
p_nom = [1.6, 1.7, 1.5, 0.7, 1.85];
# nominal demand
d_nom = [0.623, 0.811, 0.302, 0.336, 0.110];
# costs
c = [0.9, 1.50, 1.05, 0.1, 0.75];
# A matrix for the true model, which is not the same as yours.
# Your E_hat will not necessarily look like this one.
E =[-1.1   0.18 -0.4  -0.2   0.1;
     0.18 -0.9   0.1  -0.3  -0.4;
    -0.4   0.1  -0.7  -0.2  -0.3;
    -0.2  -0.3  -0.2  -1.0   0.05
     0.1  -0.4  -0.3   0.05  -1.3];

# returns the true demand for a given price
function demand(p_new)
    return exp(E*(log(p_new) - log(p_nom)) + log(d_nom) + randn(n)*0.20)
end

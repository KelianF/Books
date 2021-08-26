srand(735);

n = 10;
N = 5000;
N_test = 1000;

beta_true = 2*(rand(n)-0.5);
noise_level = 0.75;
true_offset = -0.75;
X_train = 2*(rand(N,n)-0.5);
y_train = sign(X_train*beta_true + noise_level*(rand(N)-0.5)+true_offset);
X_test = 2*(rand(N_test,n)-0.5);
y_test = sign(X_test*beta_true + noise_level*(rand(N_test)-0.5)+true_offset);

# You may use n,N,N_test, and the X,y training/test data
# You should not use beta_true in your solution

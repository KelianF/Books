Pkg.add("DataFrames")
using DataFrames
df=readtable("asset_prices.csv");
prices=convert(Array,df);
asset_names=names(df);

p_changes = prices[2:end,:] - prices[1:end-1,:];
rets = p_changes./prices[1:end-1,:];
R_train = rets[1:2000,:];
R_test = rets[2001:2500,:];
T_train,n = size(R_train)
T_test,n = size(R_test)
P=250

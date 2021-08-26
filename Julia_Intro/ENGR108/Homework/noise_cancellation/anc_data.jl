# noise_cancellation.jl
# Mark Nishimura
# EE103 Fall 2016-2107

if (Pkg.installed("WAV")) == nothing
    Pkg.add("WAV")
end
using WAV

ntracks = 3;
sec = 5;
Fs = 44100; # Sampling frequency
a = zeros(sec*Fs, ntracks); # 3 Noise samples of five sec each
a[:,1], Fs = wavread("tsunami_cut.wav");
a[:,2], Fs = wavread("static_cut.wav");
a[:,3], Fs = wavread("symphony_cut.wav");
a = a'

n, Fs = wavread("n_train.wav")
n = n'

# thing to denoise:
y_plus_n_test, Fs = wavread("noisy_target.wav");
y_plus_n_test = y_plus_n_test'

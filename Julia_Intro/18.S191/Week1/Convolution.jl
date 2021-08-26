### A Pluto.jl notebook ###
# v0.12.20

using Markdown
using InteractiveUtils

# ╔═╡ 571183b0-63b8-11eb-3a6e-1799bddd4b6a
begin
	using Pkg
	Pkg.add.(["Images", "ImageIO", "ImageMagick", "Plots"])
	#using Images
end

# ╔═╡ f339b5f0-63b8-11eb-09ce-8f901123bf2b
begin
	using Statistics
	using Images
	using FFTW
	using Plots
	using DSP
	using ImageFiltering
	using PlutoUI
end

# ╔═╡ 5686a8d0-63b8-11eb-1b4d-b92ce88f7b7b


# ╔═╡ f8173e90-63b7-11eb-081a-b1394d8e9645
Large_Image = load(download("https://pbs.twimg.com/media/DZtTwMGWkAEDO_i?format=jpg&name=4096x4096"))

# ╔═╡ f2fef6e2-63b8-11eb-29b6-4597bfde4a00
size(Large_Image)

# ╔═╡ f31fec60-63b8-11eb-1f18-9f71b2e5cabd
md"""
# Function definitions
"""

# ╔═╡ f353cda2-63b8-11eb-27a9-2d01cc6c7d96
kernel = Kernel.gaussian((5, 5))

# ╔═╡ abd44252-63bf-11eb-34d0-079bc3a749f9
kernel[0,0]

# ╔═╡ abf20380-63bf-11eb-146b-a3df9f93db26
kernel[-2,-2]

# ╔═╡ 6f37ee00-6608-11eb-1ae6-61d2869bf59c
function show_colored_kernel(kernel)
	to_rbg(x) = RGB(max(-x, 0), max(x, 0), 0)
	to_rbg.(kernel) / maximum(abs.(kernel))
end

# ╔═╡ ac0f0160-63bf-11eb-3bbb-77194d830eda
show_colored_kernel(kernel)

# ╔═╡ ac2bb120-63bf-11eb-0b69-b1363aefb973


# ╔═╡ ac497250-63bf-11eb-30d2-6d53d3bdbf00
size(Large_Image)

# ╔═╡ 090aebfe-6611-11eb-0d40-e7104d9c2e22
prod(size(Large_Image)) * prod(size(Large_Image)) 

# ╔═╡ 093b71e0-6611-11eb-36ff-51d76fbeb5c8


# ╔═╡ 095a6b90-6611-11eb-348c-c30d7c43cf05


# ╔═╡ 09798c50-6611-11eb-290c-bdfbddb22b2d


# ╔═╡ 0995edf0-6611-11eb-0ed9-c93a5af5c70e


# ╔═╡ 09a99d00-6611-11eb-0aae-03bda9239422


# ╔═╡ Cell order:
# ╠═571183b0-63b8-11eb-3a6e-1799bddd4b6a
# ╠═5686a8d0-63b8-11eb-1b4d-b92ce88f7b7b
# ╠═f8173e90-63b7-11eb-081a-b1394d8e9645
# ╠═f2fef6e2-63b8-11eb-29b6-4597bfde4a00
# ╟─f31fec60-63b8-11eb-1f18-9f71b2e5cabd
# ╠═f339b5f0-63b8-11eb-09ce-8f901123bf2b
# ╠═f353cda2-63b8-11eb-27a9-2d01cc6c7d96
# ╠═abd44252-63bf-11eb-34d0-079bc3a749f9
# ╠═abf20380-63bf-11eb-146b-a3df9f93db26
# ╠═6f37ee00-6608-11eb-1ae6-61d2869bf59c
# ╠═ac0f0160-63bf-11eb-3bbb-77194d830eda
# ╠═ac2bb120-63bf-11eb-0b69-b1363aefb973
# ╠═ac497250-63bf-11eb-30d2-6d53d3bdbf00
# ╠═090aebfe-6611-11eb-0d40-e7104d9c2e22
# ╠═093b71e0-6611-11eb-36ff-51d76fbeb5c8
# ╠═095a6b90-6611-11eb-348c-c30d7c43cf05
# ╠═09798c50-6611-11eb-290c-bdfbddb22b2d
# ╠═0995edf0-6611-11eb-0ed9-c93a5af5c70e
# ╠═09a99d00-6611-11eb-0aae-03bda9239422

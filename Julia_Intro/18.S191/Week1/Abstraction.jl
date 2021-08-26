### A Pluto.jl notebook ###
# v0.12.20

using Markdown
using InteractiveUtils

# ╔═╡ c3fd6dc0-6388-11eb-3bbf-cb4e865780d8
begin
	# using Pkg
	# Pkg.add.(["Images", "ImageIO", "ImageMagick"])
	using Images
end

# ╔═╡ 0ccf45d0-6386-11eb-3369-33ec278fa7f6
md"""
# A concrete first taste in abstraction
"""

# ╔═╡ 1d00ab50-6387-11eb-178f-657928c2dc79
Element = 1 \\ 1

# ╔═╡ 5d0f2320-6387-11eb-2ff0-35260db92180
fill(Element, 3, 4)

# ╔═╡ 70e0fd60-6387-11eb-38ec-89a96df6422e
typeof( Element )

# ╔═╡ 8786b820-6387-11eb-121b-a5e1aa8331b5
keeptrack = [typeof(1), typeof(1.0), typeof("one"), typeof(1//1), typeof([1 2; 3 4]) ]

# ╔═╡ 65aacfc0-6387-11eb-3371-1d2ef8aaa7c6
typeof(keeptrack)

# ╔═╡ 1d63d9f0-6387-11eb-29cc-11a43d4c9771
OnePic = load(download("https://www.engageselling.com/blog/wp-content/uploads/2014/12/RefreshBLogDecember2nd.jpg"))

# ╔═╡ 1d9aef80-6387-11eb-177e-d74368efad82


# ╔═╡ 1eb0cc50-6387-11eb-2d27-638b4ccf0868


# ╔═╡ 1ed80360-6387-11eb-17f7-61dfb927f831


# ╔═╡ Cell order:
# ╟─0ccf45d0-6386-11eb-3369-33ec278fa7f6
# ╠═c3fd6dc0-6388-11eb-3bbf-cb4e865780d8
# ╠═1d00ab50-6387-11eb-178f-657928c2dc79
# ╠═5d0f2320-6387-11eb-2ff0-35260db92180
# ╠═70e0fd60-6387-11eb-38ec-89a96df6422e
# ╠═8786b820-6387-11eb-121b-a5e1aa8331b5
# ╠═65aacfc0-6387-11eb-3371-1d2ef8aaa7c6
# ╠═1d63d9f0-6387-11eb-29cc-11a43d4c9771
# ╠═1d9aef80-6387-11eb-177e-d74368efad82
# ╠═1eb0cc50-6387-11eb-2d27-638b4ccf0868
# ╠═1ed80360-6387-11eb-17f7-61dfb927f831

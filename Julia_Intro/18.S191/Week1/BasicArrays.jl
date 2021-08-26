### A Pluto.jl notebook ###
# v0.12.18

using Markdown
using InteractiveUtils

# ╔═╡ e1086090-639d-11eb-0d83-b3fbc3c8cc53
begin
	using Pkg
	Pkg.add.(["Images", "ImageIO", "ImageMagick"])
	using Images
end

# ╔═╡ ccc0e450-63a1-11eb-22fe-3359ff3daf0b
md"""
# Array Basics
"""

# ╔═╡ cd212cc2-63a1-11eb-1eb5-69842a631f6d
v = [1,2,3,4]

# ╔═╡ cd3c2ed0-63a1-11eb-0f7f-f3abbd499d88
size(v)

# ╔═╡ cd5423a0-63a1-11eb-194d-632617679055
w = [ 1 2 3
	  4 5 6]

# ╔═╡ cd69ce80-63a1-11eb-0119-8314cc14eaf7
size(w)

# ╔═╡ 0f122030-63a2-11eb-0cfc-23d7b546da52
w[:, 1]

# ╔═╡ 1434f9c0-63a2-11eb-2c37-3f67a5264e26
 w[:, 2:3]

# ╔═╡ 7345b7a0-63a3-11eb-089c-45de7ae604fc
md"""
Let's get a few arrays
"""

# ╔═╡ cd817530-63a1-11eb-17a4-770b8f5c6e2f
A1 = rand(1:9, 3, 4)

# ╔═╡ 910a6a12-63a3-11eb-0e9c-c9030128cd75
size(A1)

# ╔═╡ cd9a2d50-63a1-11eb-3bce-fb23392accd5
colors = distinguishable_colors(10)

# ╔═╡ cdb1d400-63a1-11eb-1757-b7641f2b719a
A3 = rand(colors, 10, 10)

# ╔═╡ 950c02e0-63a8-11eb-281a-bdad445b7a71
md"""
Multiplication Table
"""

# ╔═╡ 9536e370-63a8-11eb-32ce-5d89877b6a0e
D = [i *j for i=1:5, j=1:5]

# ╔═╡ 9559adb0-63a8-11eb-32e3-2b3744fa83f7
begin
	E = fill(0, 5, 5)
	for i=1:5, j=1:5 # Double loop, whaaa
		E[i,j]=i*j
	end
	E
end

# ╔═╡ af4ced20-63a5-11eb-1452-51a70631b10e
begin
	F = fill(0, 5, 5)
	for i=1:5
		for j=1:5
			F[i,j]=i*j
		end
	end
	F
end

# ╔═╡ 44873080-63ab-11eb-1565-9726d0be5527
md"""
Square every element
"""

# ╔═╡ af65f360-63a5-11eb-0c0c-056943f4adf1
D^2

# ╔═╡ 6e6321c0-63ab-11eb-0fe8-ed560efb8855
D.^2

# ╔═╡ 4bc8cb60-63ab-11eb-326b-b746a82beff7
md"""
Matrix Multi
"""

# ╔═╡ af7eab80-63a5-11eb-3dba-7f640c2dc5b4
A1

# ╔═╡ af9a49d0-63a5-11eb-0ea1-f162478dcee7
[A1 A1]

# ╔═╡ afb1f080-63a5-11eb-398e-f59c2cb91b35
[A1 ; A1]  # Vertical concat

# ╔═╡ cdc757d0-63a1-11eb-02e6-0bbe65139904


# ╔═╡ Cell order:
# ╠═e1086090-639d-11eb-0d83-b3fbc3c8cc53
# ╟─ccc0e450-63a1-11eb-22fe-3359ff3daf0b
# ╠═cd212cc2-63a1-11eb-1eb5-69842a631f6d
# ╠═cd3c2ed0-63a1-11eb-0f7f-f3abbd499d88
# ╠═cd5423a0-63a1-11eb-194d-632617679055
# ╠═cd69ce80-63a1-11eb-0119-8314cc14eaf7
# ╠═0f122030-63a2-11eb-0cfc-23d7b546da52
# ╠═1434f9c0-63a2-11eb-2c37-3f67a5264e26
# ╟─7345b7a0-63a3-11eb-089c-45de7ae604fc
# ╠═cd817530-63a1-11eb-17a4-770b8f5c6e2f
# ╠═910a6a12-63a3-11eb-0e9c-c9030128cd75
# ╠═cd9a2d50-63a1-11eb-3bce-fb23392accd5
# ╠═cdb1d400-63a1-11eb-1757-b7641f2b719a
# ╟─950c02e0-63a8-11eb-281a-bdad445b7a71
# ╠═9536e370-63a8-11eb-32ce-5d89877b6a0e
# ╠═9559adb0-63a8-11eb-32e3-2b3744fa83f7
# ╠═af4ced20-63a5-11eb-1452-51a70631b10e
# ╟─44873080-63ab-11eb-1565-9726d0be5527
# ╠═af65f360-63a5-11eb-0c0c-056943f4adf1
# ╠═6e6321c0-63ab-11eb-0fe8-ed560efb8855
# ╟─4bc8cb60-63ab-11eb-326b-b746a82beff7
# ╠═af7eab80-63a5-11eb-3dba-7f640c2dc5b4
# ╠═af9a49d0-63a5-11eb-0ea1-f162478dcee7
# ╠═afb1f080-63a5-11eb-398e-f59c2cb91b35
# ╠═cdc757d0-63a1-11eb-02e6-0bbe65139904

### A Pluto.jl notebook ###
# v0.12.18

using Markdown
using InteractiveUtils

# ╔═╡ 7a9ebb80-5b26-11eb-3421-0ff3d4fb34bf
begin
	using Images
	philip = load("philip.jpg")
end

# ╔═╡ 90cacee0-5b25-11eb-003c-afde9f0cc264
md"""
# Playing with images
"""

# ╔═╡ afc5de70-5b25-11eb-3461-ddf0c9ef2c35
url = "https://i.imgur.com/VGPeJ6s.jpg"

# ╔═╡ afc5b760-5b25-11eb-30d3-cd49732e40e6
download(url, "philip.jpg")

# ╔═╡ bb60b9f0-5b28-11eb-0b54-ebe632fb0db4
typeof(philip)

# ╔═╡ 1d32390e-637b-11eb-0265-dd44bd9b97d9
RGBX(0.8, 0.1, 0.1)

# ╔═╡ f379d740-5b28-11eb-1384-f54917287219
size(philip)

# ╔═╡ 2a916310-5b29-11eb-2713-d9c0a6961849
philip[1:1000, 1:600]

# ╔═╡ 2c21c710-5b29-11eb-198d-ff0d62048d77
Head = philip[1500:3500, 500:2000]

# ╔═╡ 88ec1580-637c-11eb-3290-f3732575a98f
NewPhil = copy(Head)

# ╔═╡ 974d4450-637c-11eb-1a5e-7109f9e8bc3d
red = RGB(1, 0, 0)

# ╔═╡ a7830c10-637c-11eb-2744-87ad945351c8
for i in 1:100
	for j in 1:300
		NewPhil[i, j] = red
	end
end

# ╔═╡ a75c9850-637c-11eb-007b-314da6cd5abb
NewPhil

# ╔═╡ a72f1fb0-637c-11eb-149d-3167f3ba6e32
begin 
	NewPhil2 = copy(NewPhil)
	NewPhil2[100:200, 1:100] .= RGB(0, 1, 0)
	NewPhil2
end

# ╔═╡ a6eb11ce-637c-11eb-32be-3b9ff1e02781
function redify(color)
	return RGB(color.r, 0, 0)
end

# ╔═╡ c801ea90-637e-11eb-158e-6b60549becf3
begin
	color = RGB(0.9, 0.7, 0.2)
	
	[color, redify(color)]
end

# ╔═╡ c7e9f5c0-637e-11eb-2681-abbc9fb1aaa6
md"""
# Transforming an image
"""

# ╔═╡ 9c0ca450-6380-11eb-1874-e5da42b96b85
decimate(image, ratio=5) = image[1:ratio:end, 1:ratio:end]

# ╔═╡ c7cbe670-637e-11eb-0192-33098e1b85cb
begin 
	PoorPhil = decimate(NewPhil, 5)
	size(PoorPhil)
	PoorPhil
end

# ╔═╡ da91a080-6381-11eb-0a6d-5d3721bdc4d1
function clamp_at_boundary(M, i, j)
	return M[
		clamp(i, 1, size(M, 1)),
		clamp(j, 1, size(M, 2)),	
	]
end

# ╔═╡ adee03c2-6381-11eb-1aa1-2b3e15ffc4a9
function convolve(M, kernel, M_index_func=clamp_at_boundary)
    height = size(kernel, 1)
    width = size(kernel, 2)
    
    half_height = height ÷ 2
    half_width = width ÷ 2
    
    new_image = similar(M)
	
    # (i, j) loop over the original image
    @inbounds for i in 1:size(M, 1)
        for j in 1:size(M, 2)
            # (k, l) loop over the neighbouring pixels
			new_image[i, j] = sum([
				kernel[k, l] * M_index_func(M, i - k, j - l)
				for k in -half_height:-half_height + height - 1
				for l in -half_width:-half_width + width - 1
			])
        end
    end
    
    return new_image
end

# ╔═╡ a2d437c0-6381-11eb-3b52-215ee1ed12e0
box_blur(n) = centered(ones(n, n) ./ (n^2))

# ╔═╡ c7b30740-637e-11eb-075c-4baaf12d5ba9
convolve(PoorPhil, box_blur(2))

# ╔═╡ c79a2810-637e-11eb-0c72-77fdf0a62e81


# ╔═╡ c77f7420-637e-11eb-10d8-873674ff18a6


# ╔═╡ c7666de0-637e-11eb-142b-f979001a9b7b


# ╔═╡ c74eee40-637e-11eb-1639-e3b8c5719807


# ╔═╡ c734d690-637e-11eb-3f5e-33776315f65a


# ╔═╡ c716c73e-637e-11eb-2231-d5d353993410


# ╔═╡ c6fa8cb0-637e-11eb-30e2-f75852249af9


# ╔═╡ c6c8f560-637e-11eb-23e2-73ccc82651bd


# ╔═╡ a626d772-637c-11eb-0f05-a5dc7295cd86


# ╔═╡ Cell order:
# ╠═90cacee0-5b25-11eb-003c-afde9f0cc264
# ╠═afc5de70-5b25-11eb-3461-ddf0c9ef2c35
# ╠═afc5b760-5b25-11eb-30d3-cd49732e40e6
# ╠═7a9ebb80-5b26-11eb-3421-0ff3d4fb34bf
# ╠═bb60b9f0-5b28-11eb-0b54-ebe632fb0db4
# ╠═1d32390e-637b-11eb-0265-dd44bd9b97d9
# ╠═f379d740-5b28-11eb-1384-f54917287219
# ╠═2a916310-5b29-11eb-2713-d9c0a6961849
# ╠═2c21c710-5b29-11eb-198d-ff0d62048d77
# ╠═88ec1580-637c-11eb-3290-f3732575a98f
# ╠═974d4450-637c-11eb-1a5e-7109f9e8bc3d
# ╠═a7830c10-637c-11eb-2744-87ad945351c8
# ╠═a75c9850-637c-11eb-007b-314da6cd5abb
# ╠═a72f1fb0-637c-11eb-149d-3167f3ba6e32
# ╠═a6eb11ce-637c-11eb-32be-3b9ff1e02781
# ╠═c801ea90-637e-11eb-158e-6b60549becf3
# ╟─c7e9f5c0-637e-11eb-2681-abbc9fb1aaa6
# ╠═9c0ca450-6380-11eb-1874-e5da42b96b85
# ╠═c7cbe670-637e-11eb-0192-33098e1b85cb
# ╠═da91a080-6381-11eb-0a6d-5d3721bdc4d1
# ╟─adee03c2-6381-11eb-1aa1-2b3e15ffc4a9
# ╟─a2d437c0-6381-11eb-3b52-215ee1ed12e0
# ╠═c7b30740-637e-11eb-075c-4baaf12d5ba9
# ╠═c79a2810-637e-11eb-0c72-77fdf0a62e81
# ╠═c77f7420-637e-11eb-10d8-873674ff18a6
# ╠═c7666de0-637e-11eb-142b-f979001a9b7b
# ╠═c74eee40-637e-11eb-1639-e3b8c5719807
# ╠═c734d690-637e-11eb-3f5e-33776315f65a
# ╠═c716c73e-637e-11eb-2231-d5d353993410
# ╠═c6fa8cb0-637e-11eb-30e2-f75852249af9
# ╠═c6c8f560-637e-11eb-23e2-73ccc82651bd
# ╠═a626d772-637c-11eb-0f05-a5dc7295cd86

### A Pluto.jl notebook ###
# v0.14.7

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : missing
        el
    end
end

# ╔═╡ 362e99da-5e3b-4c81-bd79-4ae638938d4b
using Pkg

# ╔═╡ 06c34169-2f83-4458-b7d3-3e1db4fee37b
begin
	pkg"add Colors ColorSchemes Images ImageMagick PlutoUI Suppressor InteractiveUtils"
end

# ╔═╡ e4710630-c304-11eb-25df-ff2459e6f9d1
md"""
# Taking advantage of Structure
"""

# ╔═╡ 7b288bd6-06f1-4962-959b-b8cdefae48f7


# ╔═╡ a360e6f4-5c8e-4ca3-b770-eab667b30390


# ╔═╡ 80eced9a-ada0-4f3f-a695-4c8bf8e44def
1+1

# ╔═╡ 1b5b10fa-b223-4d0b-a660-017a9cfd334e


# ╔═╡ fa42db2a-953a-4ea3-bed6-5ddce93cc3ec
md"""
## Example: One-hot vector
"""

# ╔═╡ edbf73e2-ce9e-48ec-b13e-ea218380cf24
[0, 1, 0, 0, 0, 0]

# ╔═╡ 80242762-599e-4b08-a0aa-d7394ebd0375
1 .-[0, 1, 0, 0, 0, 0]

# ╔═╡ c2105250-2fff-454b-859d-016ccbaf43ae
struct OneHot <: AbstractVector{Int}
	n::Int
	k::Int
end

# ╔═╡ 47b7b2e2-fed2-48d0-863e-b29c8c21c0e8
Base.size(x::OneHot) = (x.n, )

# ╔═╡ 1098ffa6-65b9-4ecb-8f5b-cccd9b313a24
Base.getindex(x::OneHot, i::Int) = Int(x.k == i)

# ╔═╡ c59dddb5-0d32-4c48-bc60-1a9d100e073a
myonehotvector = OneHot(6, 2)

# ╔═╡ 63931a3a-1920-4305-afb9-c9f304b4bf91
# with_terminal() do
# 	dump(myonehotvector)
# end

# ╔═╡ 758f45dc-c8b8-4a9c-89d8-faba7f317891
begin
	show_image(M) = get.([ColorSchemes.rainbow], M ./ maximum(M))
	show_image(x::AbstractVector) = show_image(x')
end

# ╔═╡ cc5e01fd-b6fe-42fc-a0df-99dd19d4bf6a
@bind nn Slider(1:20, show_value=true)

# ╔═╡ d4bc6807-f6c8-4928-b3b3-57fe679fff43
@bind kk Slider(1:nn, default=1, show_value=true)

# ╔═╡ 2dd8fc26-2817-40b6-ad10-dfdd052ac39e
x = OneHot(nn, kk)

# ╔═╡ 4ef15719-58ca-495f-af35-c93b223a61ad
md"""
# Diagonal Matrices
"""

# ╔═╡ 5b6c42ff-aaa7-4d57-a771-81201adecda1
M = [5 0 0
	 0 6 0
	 0 0 -10]

# ╔═╡ cabd9c1b-0320-4f6b-b98b-0d65f60a9a60
diagonal(M)

# ╔═╡ 6368fb22-ba1c-4666-a2af-55160635a7b9
sparse(M)

# ╔═╡ 26a56894-f571-4c53-be05-8aa2832af61f


# ╔═╡ ceee31fd-53ea-4af2-a54d-06962c68ff44


# ╔═╡ 9367f128-c335-4146-84ad-01038a9d3a99


# ╔═╡ 5caca08e-9546-4122-8fdb-5eb74c15a681


# ╔═╡ 156fa6bf-c7b4-46d5-9b81-e4d607c8fd88


# ╔═╡ 34d5c956-7d47-434b-abac-d7fce22f7d7b


# ╔═╡ 38e1af53-1748-41d2-b6fb-b57c0a0d846c


# ╔═╡ d469f7e7-7c7e-4f34-bdac-acf2c51eed90


# ╔═╡ bc7456c2-d421-4bfe-8491-86aca1f3d4f9


# ╔═╡ a1fcfda0-cce3-413c-a3f8-3c4b172e8c39


# ╔═╡ e72df8d2-df96-49ad-8857-8cd961443695


# ╔═╡ 3a862401-c582-476f-a17a-ae084887fcb0


# ╔═╡ Cell order:
# ╟─e4710630-c304-11eb-25df-ff2459e6f9d1
# ╠═362e99da-5e3b-4c81-bd79-4ae638938d4b
# ╠═06c34169-2f83-4458-b7d3-3e1db4fee37b
# ╠═7b288bd6-06f1-4962-959b-b8cdefae48f7
# ╠═a360e6f4-5c8e-4ca3-b770-eab667b30390
# ╠═80eced9a-ada0-4f3f-a695-4c8bf8e44def
# ╠═1b5b10fa-b223-4d0b-a660-017a9cfd334e
# ╟─fa42db2a-953a-4ea3-bed6-5ddce93cc3ec
# ╠═edbf73e2-ce9e-48ec-b13e-ea218380cf24
# ╠═80242762-599e-4b08-a0aa-d7394ebd0375
# ╠═c2105250-2fff-454b-859d-016ccbaf43ae
# ╠═47b7b2e2-fed2-48d0-863e-b29c8c21c0e8
# ╠═1098ffa6-65b9-4ecb-8f5b-cccd9b313a24
# ╠═c59dddb5-0d32-4c48-bc60-1a9d100e073a
# ╠═63931a3a-1920-4305-afb9-c9f304b4bf91
# ╠═758f45dc-c8b8-4a9c-89d8-faba7f317891
# ╠═cc5e01fd-b6fe-42fc-a0df-99dd19d4bf6a
# ╠═d4bc6807-f6c8-4928-b3b3-57fe679fff43
# ╠═2dd8fc26-2817-40b6-ad10-dfdd052ac39e
# ╟─4ef15719-58ca-495f-af35-c93b223a61ad
# ╠═5b6c42ff-aaa7-4d57-a771-81201adecda1
# ╠═cabd9c1b-0320-4f6b-b98b-0d65f60a9a60
# ╠═6368fb22-ba1c-4666-a2af-55160635a7b9
# ╠═26a56894-f571-4c53-be05-8aa2832af61f
# ╠═ceee31fd-53ea-4af2-a54d-06962c68ff44
# ╠═9367f128-c335-4146-84ad-01038a9d3a99
# ╠═5caca08e-9546-4122-8fdb-5eb74c15a681
# ╠═156fa6bf-c7b4-46d5-9b81-e4d607c8fd88
# ╠═34d5c956-7d47-434b-abac-d7fce22f7d7b
# ╠═38e1af53-1748-41d2-b6fb-b57c0a0d846c
# ╠═d469f7e7-7c7e-4f34-bdac-acf2c51eed90
# ╠═bc7456c2-d421-4bfe-8491-86aca1f3d4f9
# ╠═a1fcfda0-cce3-413c-a3f8-3c4b172e8c39
# ╠═e72df8d2-df96-49ad-8857-8cd961443695
# ╠═3a862401-c582-476f-a17a-ae084887fcb0

### A Pluto.jl notebook ###
# v0.14.1

using Markdown
using InteractiveUtils

# ╔═╡ f76a82f0-9cd2-11eb-1915-717abeb6e46d
md"""
Arrays: Slices and views
"""

# ╔═╡ 8de2c960-1a35-479c-b630-7e7de02e044f
v = ones(Int, 10)

# ╔═╡ a14a3b30-2712-4b48-a8fd-b993365c69e3
v[3] # Julia starts indexing at 1 not 0

# ╔═╡ 53576056-bce9-4cfe-b630-318d43715b2e
v[3] = 2

# ╔═╡ adf0cbc0-a50f-4898-9d72-80d8141e9db8
v

# ╔═╡ 28bee92e-2b7a-4c3c-8ea3-ef8041829356
v[3:5]

# ╔═╡ 8b6831d0-4d29-4b44-926c-2d07228eca0b
md"""
Modifying a slice
"""

# ╔═╡ 2c7866a0-d4fd-44b5-a717-35bbaa6afc2c
v[3:5] = 4

# ╔═╡ 10adcbd6-ecdd-47d3-aebc-c9132c68baee
md"""
We have to input a similar type. it is possible to use broadcasting with "."
"""

# ╔═╡ 105061c3-e328-4c80-8a92-abd01fae37d8
v[3:5] .= 4

# ╔═╡ 059fc0eb-c630-46d7-9d13-96261e0398ef
v

# ╔═╡ e70f5c6d-0e4a-44ee-b039-f3daef1f480f
md"""
Another method, is to assign the right type (here array) automatically.
"""

# ╔═╡ 95c5d357-f3bf-4292-b5f4-55c77ce1e978
v[3:5] = [5, 6, 7]

# ╔═╡ 9ae253cc-48bc-4468-84ce-3ae4aa585318
v

# ╔═╡ a3a0fbcc-3372-432d-86b9-bd33f070f9e0
md"""
Array Slice
"""

# ╔═╡ b4f74b6a-34e3-4f6c-8e14-4c873737e80a
w = v[3:5]

# ╔═╡ 59781c31-d5b2-4196-b446-1df22ae3eee3
md"""
Important question: 
> What happens if we modify w?
"""

# ╔═╡ 8960fb71-deca-4637-a1de-cb91c3262ce6
md"""
Here how is currently is now:
"""

# ╔═╡ ae282664-d05a-4e6a-918c-ca6ff451dc97
w

# ╔═╡ 231f981b-2e49-4af5-b931-dc6a1f0dd3c5
w[1] = 8

# ╔═╡ 55a797b7-e1d8-47d8-9b67-d58098f59b22
w

# ╔═╡ be841e41-7966-4034-a0a9-e6e98e979e62
v

# ╔═╡ ebae2fbb-e4eb-4507-92cd-198b3a9c4288
md"""
As expected W changed, but v does not. Creating a slice, creates a copy!
"""

# ╔═╡ ec106aab-2f18-40ed-b7e5-0bb2c3f2f4a0
md"""
Array views
"""

# ╔═╡ 399b79dd-f109-4a8b-ad04-e0aa518fdc7f
z = view(v, 3:5)

# ╔═╡ b52041ef-6640-4d1f-a9d6-add3bdba7202
z .= 9

# ╔═╡ 35b6d343-a332-4709-9061-d687109138aa
z

# ╔═╡ bb54efc8-1af3-40e6-9015-060309c807ac
v

# ╔═╡ bcc5d67c-4cf4-437d-885d-f808914b8693
md"""
Using view allow us to reading and writing on the original data (Pointer)
"""

# ╔═╡ 60468791-55a3-46f8-829c-6cc05b604774
md"""
Let us compare w and z
"""

# ╔═╡ 4485e0bc-489d-4529-a6ec-a09a4f922b49
typeof(w), typeof(z)

# ╔═╡ ce0d1090-f589-42fa-81b4-2e7b1f19d400
md"""
Nicer syntax for View
"""

# ╔═╡ 0e940e48-84c3-451f-b2e4-5a492fe7b7de
z2 = @view v[3:5]

# ╔═╡ 71b70dee-e4e8-4171-8d92-c6dd3c58608e
typeof(z2)

# ╔═╡ 47a31ae6-7139-41a5-a8dd-48e82582baed
z2 .= 10

# ╔═╡ eab3708c-7a50-4717-a73c-278603965253
v

# ╔═╡ 6b27a9bc-8253-421c-98ff-574f7ed77bf6
md"""
Matrices: Slices and Views
"""

# ╔═╡ d54708d2-3bea-457a-8390-76fe696cef0d
M = [10i + j for i in 0:5, j in 1:4]

# ╔═╡ 41051bb2-78f7-4cda-acff-6d57b25ee6e5
M[3:5, 1:2]

# ╔═╡ 0a8e06ba-cfb5-4968-be00-ed31aabae1f2
view(M, 3:5, 1:2)

# ╔═╡ 63eb1b73-9781-4abd-ac41-34d09de97bff
@view M[3:5, 1:2]

# ╔═╡ df77a6f6-138b-49e6-9a08-52bf742c4e2c
md"""
Reshaping matrices
"""

# ╔═╡ 592892e9-1e6b-4949-a589-5115e9d8bdce
M2 = reshape(M, 3, 8);

# ╔═╡ 8ff76462-5b62-45b6-b6f1-53ba5c4764cc
M2

# ╔═╡ 9055329d-3a2f-4077-b19e-c663cf508183
M2[2,2] = 500

# ╔═╡ d08d212d-39be-4e0b-83f7-95ae44d87a4b
M2

# ╔═╡ 1c18cdee-44b2-44e9-9b02-bd2a491cf4d5
M

# ╔═╡ 7b3299a3-1ef7-48ea-85bc-efd5cf8e0d13
vv = vec(M)

# ╔═╡ d1888c3d-b25f-43ae-b14c-eaba4421ebbd
vv

# ╔═╡ Cell order:
# ╟─f76a82f0-9cd2-11eb-1915-717abeb6e46d
# ╠═8de2c960-1a35-479c-b630-7e7de02e044f
# ╠═a14a3b30-2712-4b48-a8fd-b993365c69e3
# ╠═53576056-bce9-4cfe-b630-318d43715b2e
# ╠═adf0cbc0-a50f-4898-9d72-80d8141e9db8
# ╠═28bee92e-2b7a-4c3c-8ea3-ef8041829356
# ╟─8b6831d0-4d29-4b44-926c-2d07228eca0b
# ╠═2c7866a0-d4fd-44b5-a717-35bbaa6afc2c
# ╟─10adcbd6-ecdd-47d3-aebc-c9132c68baee
# ╠═105061c3-e328-4c80-8a92-abd01fae37d8
# ╠═059fc0eb-c630-46d7-9d13-96261e0398ef
# ╟─e70f5c6d-0e4a-44ee-b039-f3daef1f480f
# ╠═95c5d357-f3bf-4292-b5f4-55c77ce1e978
# ╠═9ae253cc-48bc-4468-84ce-3ae4aa585318
# ╟─a3a0fbcc-3372-432d-86b9-bd33f070f9e0
# ╠═b4f74b6a-34e3-4f6c-8e14-4c873737e80a
# ╟─59781c31-d5b2-4196-b446-1df22ae3eee3
# ╟─8960fb71-deca-4637-a1de-cb91c3262ce6
# ╠═ae282664-d05a-4e6a-918c-ca6ff451dc97
# ╠═231f981b-2e49-4af5-b931-dc6a1f0dd3c5
# ╠═55a797b7-e1d8-47d8-9b67-d58098f59b22
# ╠═be841e41-7966-4034-a0a9-e6e98e979e62
# ╟─ebae2fbb-e4eb-4507-92cd-198b3a9c4288
# ╟─ec106aab-2f18-40ed-b7e5-0bb2c3f2f4a0
# ╠═399b79dd-f109-4a8b-ad04-e0aa518fdc7f
# ╠═b52041ef-6640-4d1f-a9d6-add3bdba7202
# ╠═35b6d343-a332-4709-9061-d687109138aa
# ╠═bb54efc8-1af3-40e6-9015-060309c807ac
# ╟─bcc5d67c-4cf4-437d-885d-f808914b8693
# ╟─60468791-55a3-46f8-829c-6cc05b604774
# ╠═4485e0bc-489d-4529-a6ec-a09a4f922b49
# ╟─ce0d1090-f589-42fa-81b4-2e7b1f19d400
# ╠═0e940e48-84c3-451f-b2e4-5a492fe7b7de
# ╠═71b70dee-e4e8-4171-8d92-c6dd3c58608e
# ╠═47a31ae6-7139-41a5-a8dd-48e82582baed
# ╠═eab3708c-7a50-4717-a73c-278603965253
# ╟─6b27a9bc-8253-421c-98ff-574f7ed77bf6
# ╠═d54708d2-3bea-457a-8390-76fe696cef0d
# ╠═41051bb2-78f7-4cda-acff-6d57b25ee6e5
# ╠═0a8e06ba-cfb5-4968-be00-ed31aabae1f2
# ╠═63eb1b73-9781-4abd-ac41-34d09de97bff
# ╟─df77a6f6-138b-49e6-9a08-52bf742c4e2c
# ╠═592892e9-1e6b-4949-a589-5115e9d8bdce
# ╠═8ff76462-5b62-45b6-b6f1-53ba5c4764cc
# ╠═9055329d-3a2f-4077-b19e-c663cf508183
# ╠═d08d212d-39be-4e0b-83f7-95ae44d87a4b
# ╠═1c18cdee-44b2-44e9-9b02-bd2a491cf4d5
# ╠═7b3299a3-1ef7-48ea-85bc-efd5cf8e0d13
# ╠═d1888c3d-b25f-43ae-b14c-eaba4421ebbd

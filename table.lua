a = {["m"]="mmm", 1111, [2]=2222, [22]=222, 3333}
k = "x"
a[k] = 10
a[20] = "great"

for k, v in pairs(a) do
	print(k, v)
end


print("=======================================")

print(a["x"])
k = 20
print(a[k])
a["x"] = a["x"] + 1
print(a["x"])
print(a.x)
print(a["y"])

print("=======================================")

b = {}

x = "y"
b[x] = 10
print(b[x])
print(b.x)
print(b.y)

print("=======================================")

a = {}

for i=1, 10 do 
	a[i] = "a" .. i 
end

a[11] = "a11"
a[15] = "a15"

print("len: " .. #a)

for i=1, #a do 
	print(a[i])
end
print("=======================================")

for i=1, table.maxn(a) do 
	print(a[i])
end

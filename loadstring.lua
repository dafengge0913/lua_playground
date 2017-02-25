a = 32
local a = 0

c = loadstring("a = a + 1; print(a)")
d = function() a = a + 1; print(a) end

c()
d()

print("---------------------------------")

print("enter:")
local l = io.read()
local f = assert(loadstring("local x = ...; return " .. l))
for i = 1, 20 do 
	print(string.rep("*", f(i)))
end
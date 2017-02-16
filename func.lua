function foo0()
end

function foo1()
	return "a"
end

function foo2()
	return "a", "b"
end

print(foo0())
print(foo0() == nil)
print("=================================")

x, y, z = 10, foo2()
print(x, y, z)
print("=================================")

x, y, z = 10, foo2(), 1
print(x, y, z)
print("=================================")

-- 如果函数调用不是一系列表达式的最后一个元素 那么将只产生一个值
x, y, z = foo2(), 1
print(x, y, z)
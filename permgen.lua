function permgen(a, n)
	n = n or #a 	-- 默认n为a的大小
	if n <= 1 then
		printResult(a)
	else
		for i = 1, n do
			-- 将第i个元素放到数组末尾
			a[n], a[i] = a[i], a[n]
			-- 生成其余元素的排列
			permgen(a, n - 1)
			-- 恢复第i个元素
			a[n], a[i] = a[i], a[n]
		end
	end
end

function printResult(a)
	for i = 1, #a do
		io.write(a[i], " ")
	end
	io.write("\n")
end

permgen({1, 2, 3, 4})

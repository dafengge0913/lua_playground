list = nil

for line in io.lines() do
	if #line == 0 then
		break
	end
	list = {next=list, value=line}
end

while list do
	print(list.value)
	list = list.next
end
List = {}

function List.new()
    return {first = 0, last = -1}
end


function List.pushfirst(list, value)
    local first = list.first - 1
    list.first = first
    list[first] = value
end

function List.pushLast(list, value)
    local last = list.last + 1
    list.last = last
    list[last] = value
end

function List.popfirst(list)
    local first = list.first
    if first > list.last then error("list is empty") end
    local value = list[first]
    list[first] = nil
    list.first = first + 1
    return value
end

function List.poplast(list)
    local last = list.last
    if list.first > last then error("list is empty") end
    local value = list[last]
    list[last] = nil
    list.last = last - 1
    return value
end


a = List.new()
List.pushfirst(a, 1)
List.pushfirst(a, 2)
List.pushLast(a, 3)
List.pushfirst(a, 4)
print(List.popfirst(a))
print(List.poplast(a))

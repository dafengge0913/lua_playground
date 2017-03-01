StringBuffer = {}

StringBuffer.append = function(t, str)
    if t and str then
        table.insert(t, str)
    end
end

StringBuffer.toString = function(t)
    if t then
        return table.concat(t)
    end
end

StringBuffer.new = function() return {} end

local sb = StringBuffer.new()
for line in io.lines() do
    if #line == 0 then
        break
    end
    StringBuffer.append(sb, line)
end

print(StringBuffer.toString(sb))

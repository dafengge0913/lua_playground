Window = {}
Window.prototype = {x = 0, y = 0, width = 100, height = 100}
Window.mt = {}--创建元表

function Window.new(o)
    setmetatable(o, Window.mt)--设置元表
    return o
end

-- 访问一个table中不存在的字段时 解释器会去查找__index元方法 如果没有这个元方法 返回nil
Window.mt.__index = function(table, key)
    return Window.prototype[key]
end

w = Window.new{x=10,y=20}
print(w.width)
print(w.x)

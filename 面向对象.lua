--[[
    语法糖：使用v:name 可以v.name

    调用自身，所以采用冒号

    类似于第一个参数是self，所以可以直接省略进行调用

    使用方法时必须传入self，Lua可以使用冒号操作符隐藏改参数

    可以使用.来定义，使用:来使用

    两个对象A和B，可以把B看做是A的一类，如使用setmetatable(A, {__index=B}),A就会在B中查找不存在的方法


]]

-- t = {
--     a=0,
--     add = function ( tab, sum )
--         -- body
--         tab.a = tab.a + sum
--     end
-- }

-- t.add(t, 10) -- 等价与t:add(10)
-- t:add(10)

-- print(t["a"])


--[[
    类和对象
]]

A = {
    v = 0,
    add=function (self, v)
        self.v = self.v + v
    end, 
    get=function (self)
        print(self.v)
    end,
}

C = {
    clear=function (a)
        a.v = 0
    end
}

setmetatable(A, {__index=C})

local mt = {__index=A}

function A.new(o)
    o = o or {} -- 如果没有提供o则创建一个空的
    setmetatable(o, mt) -- 设置属于类A
    return o
end

a = A.new() -- 对象
a:add(1000)
a:clear()
a:get()


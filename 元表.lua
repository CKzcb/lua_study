--[[
    在 Lua table 中我们可以访问对应的 key 来得到 value 值，但是却无法对两个 table 进行操作(比如相加)。

    Lua 提供了元表(Metatable)，允许我们改变 table 的行为，每个行为关联了对应的元方法。

    例如，使用元表我们可以定义 Lua 如何计算两个 table 的相加操作 a+b。

    当 Lua 试图对两个表进行相加时，先检查两者之一是否有元表，之后检查是否有一个叫 __add 的字段，若找到，则调用对应的值。 __add 等即时字段，其对应的值（往往是一个函数或是 table）就是"元方法"。

    有两个很重要的函数来处理元表：

    setmetatable(table,metatable): 对指定 table 设置元表(metatable)，如果元表(metatable)中存在 __metatable 键值，setmetatable 会失败。
    getmetatable(table): 返回对象的元表(metatable)。4
]]

--[[
    每种算术运算符都有一个对应的元方法

    - __sub 减法
    - __div 除法
    - __mod 取模
    - __pod 幂运算
    - __concat 连接运算符
    - __index 查找下标的时候，可以用table也可以是函数
    - __newindex 根据下标赋值操作，如要赋值使用rawset(t, k, v)不触发元方法
    

]]

-- t = {1}
-- print(t+1) -- error

t = {a=1}
mt = {
    __add = function (a, b)
        return a.a + b
    end,
    __index = function (t, k)
        return "key 不存在"
    end
}

setmetatable(t, mt)

print(t+1)
print(t["aff"]) -- 不使用__index的时候返回nil
print(t["aff"]) -- 使用__index的时候返回自定义


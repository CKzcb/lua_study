-- 标识服

--[[
    通用标识的方法
]]


-- 全局变量

--[[
    默认变量都是全局变量
    访问一个没有初始化的变量不会出错，会返回nil
]]

-- print(b)

-- nil

-- 删除全局变量，直接使用nil赋值即可

-- a = 20
-- print(a)
-- a = nil
-- print(a)

-- 局部变量
--[[
    使用local定义局部变量，声明周期为语句块内部

    搜索局部变量会快一些，尽可能的使用局部变量
]]
-- function f ()
--     -- body
--     local a = 20
--     b = 30
-- end

-- f()

-- do
--     local a = 20
--     b = 1
--     print(a, b)
-- end

-- print(a , b)

--[[
    多变量同时赋值
]]

-- a, b = 10, 20

-- print(a, b)

-- a, b = b, a

-- print(a, b)




-- 数据类型

--[[

    - nil 空类型，所有没有定义的变量就为nil，无效值，相当于false

    - boolean 包含true和false

    - number 包含整型和浮点型

    - string 字符串，由双引号或者单引号表示

    - function 函数

    - userdata 任意结构，可以是字典等

    - thread 线程

    - table 数组

    用type查看类型

]]

-- print(type("hello"))    -- string
-- print(type(1))          -- number
-- print(type(2.4))        -- number
-- print(type(false))      -- boolean
-- print(type(nil))        -- nil
-- print(type(print))      -- function


--[[
    nil 给变量赋值nil时表示删除了该变量
]]

-- name = "xh"
-- print(name)
-- name = nil
-- print(name)

-- t = {a=20, b=30}
-- print(t)
-- t["a"] = nil
-- print(t)

--[[
    boolean lua把nil和false都当做false，其他都是true
    0也是true
]]

-- if true then
--     print("is true")
-- end

-- if 0 then
--     print("is true")
-- else
--     print("nil is false")
-- end


--[[
    number 整数和小数，双精度的，double
]]

-- print(2e10)

--[[
    string
    可以使用两个中括号变成多行字符串

    字符串拼接用 .. 或者 +，但是两个数字的话一定要用 ..

    数学运算，会先转换成整数试试能不能进行运算

    # 字符串  可以输出字符串长度
]]

-- print([[
--     hello,
--     i am ck
-- ]])

-- print("2" .. "6")   -- 26
-- print("2" + "6")    -- 8
-- print("2a" + "2")   -- error
-- print("2" + "2a")   -- error
-- print(2 + "6")      -- 8
-- print("2" + 6)      -- 8
-- print(2 .. 6)       -- 26

-- print(#"fad")   -- # 计算字符串长度
-- print(#"你号")  -- 中文计算的是字节数


--[[
    table
]]

-- t = {}  -- 构造表达式，空表
-- -- 构造的时候，如果是整数需要加上[]，如果key是字符串可以不使用双引号或者单引号
-- t = {key1=100, key2="v1",[4]=300}   -- 可以是字典，key：可以是字符串、可以是number，value也可以是字符串和整数等
-- print(t.key1)   -- 使用的时候可以直接.key
-- print(t[4])     -- 也可以使用中括号加key的值

-- 可以当做数组，lua索引都是从1开始的，数组只能用中括号
-- 当数组默认是kye为1...
-- t = {"a", "b", "c"}
-- print(t[1.1])

-- for key, value in pairs(t) do
--     print(key .. value)
-- end

-- table 不会固定长度大小，和python的dict一样
-- 直接赋值添加,使用中括号或者.key，修改数据直接覆盖替换就可以了

-- t["adf"] = 2033
-- t.av = 44

-- for key, value in pairs(t) do
--     print(key .. value)
-- end


--[[
    function：
        function_name 代表函数名字
        括号内填参数
        return 任意值
        end表示结束

    function function_name( ... )
        -- body
    end

]]
-- function func1( name )
--     -- body
--     print(name)
-- end

-- func1(20)

-- function func2(n)
--     if n==1 then
--         return n
--     end
--     return n + func2(n - 1)
-- end

-- print(func2(10))

--[[
    function 传递和匿名函数

        - 函数作为参数传递

]]

-- function test_f( t, func )
--     -- body
--     for k, v in pairs(t) do
--         func(k, v)
--     end
-- end

-- function func1( k, v )
--     -- body
--     print(k .. "=" .. v)
-- end

-- t = {"a", "b", "c"}

-- test_f(t, func1)

-- -- 匿名函数，function (参数) 执行的数据 end
-- test_f(t, function (k,v) print("k" .. k .. v) end)



--[[
    循环三种方式：
        - while

            while (condition) do
                statement
            end

        - for

            数值for
                step默认为1，可以随便指定
                for i=start,end,step do
                    print(i)
                end

            泛型for

        - repeat unitl (do while)
        
]]

-- a = 1
-- while a <= 20 do
--     print(a)
--     a = a + 1
-- end

-- for i=1,10, 2 do
--     print(i)
-- end

-- for a=20,1,-3 do
--     print(a)
-- end

-- t = {"a", "b"}

-- for k,v in pairs(t) do
--     print(k,v)
-- end

--[[

    支持goto

        用::name::定义标签

    repeat until

        repeat
            循环体
        until(condition) 直到满足这个条件就不再执行了
]]
-- a = 1
-- repeat
--     print(a)
--     a = a + 1
-- until(a>10)

-- local a = 1
-- ::label:: print("--- goto label ---")

-- a = a+1
-- if a < 3 then
--     goto label   -- a 小于 3 的时候跳转到标签 label
-- end


--[[
    流程控制
    if (condition) then
        statement
    end

    if (condition) then
        statement
    else
        statement
    end

    if (condition) then
        statement
    elseif a > 20 then
        statement
    else
        statement
    end
]]

-- a = 20

-- if a>30 then
--     print(">30")
-- elseif a > 20 then
--     print(">20")
-- else
--     print(a)
-- end


--[[
    function 特性

        修饰符 function，修饰符只能加local表示局部函数，不加local表示全局函数
    
    1、函数可以作为数据赋值
    2、可以作为参数传递
    3、可以返回多个值，返回的不是一个数组，
        需要多个变量接收，如果接收变量少于返回数量，则会丢弃，如果接收变量多余返回数量，则会变成nil
    4、可变参数用三个点，...处理
]]


-- function max()
--     return 1, 2, 3
-- end

-- a, b = max()
-- print(a, b)


--[[
    关系运算符

    用and、or、not
]]




-- arr = {}

-- for i=1,10 do
--     arr[i] = i * i
-- end

-- for i=1, 10 do
--     print(arr[i])
-- end

-- 这是因为当函数有且只有一个参数，这个参数的类型是 table 或者 字符串 形式，可以在调用的时候省略小括号


--[[
    lua迭代器：可以遍历集合中的所有元素
            每次遍历返回一个下一个位置
            使用闭包
    定义迭代器：
            无状态迭代器

    泛型for：
            判断返回的第一个数，e1为空才会退出for
        for e1, e2, ... in 迭代器 do
            statement
        end
]]

-- 简单迭代器
function values( t )
    -- body
    local i = 0
    return function () i = i + 1; return t[i] end
end

-- local iter = values({200, 44, 12, 5})
-- while true do
--     local e = iter()
--     if e == nil then break end
--     print(e)
-- end

-- 泛型for

t = {12, 33, 451, 13}

for e in values(t) do
    print(e)
end

for e in values(t) do
    print(e)
end

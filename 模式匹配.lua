--[[
    字符串的匹配

    find：在指定的目标字符串搜索指定模式，返回开始和结束下标
        - 参数1 目标字符串
        - 参数2 匹配模式
        - 参数3 下标，从目标字符串第几个开始
        - 参数4 boolean值，是否简单搜索
    
    gsub：将模板字符串中所有出现模式的地方替换成字符串
        - 参数1 目标字符串
        - 参数2 模式
        - 参数3 替换字符串
        - 返回1 替换后的
        - 返回2 替换的次数

    match：与find一样，只是返回值不一样，返回的为匹配到的字符串

    gmatch：返回一个函数
]]


-- s = "hello word"
-- print(string.find( s, "hello" )) -- 匹配返回开始和结束下标

-- print(string.find( s, "hi~" )) -- 不匹配返回nil

-- s = "hello word"

-- print(string.gsub( s,"l","o" )) -- heooo word 2


--[[
    模式
        对lua来说模式仅仅是普通字符串

    通配符
        .       任意字符
        %a      字母
        %c      控制字符
        %d      数字
        %g      空格之外的其他可打印字符
        %l      小写字母
        %p      标点符号
        %u      大写字母
        %w      字母和数字
        %x      十六进制数字

        +       重复一次或多次
        *       重复零次或多次
        -       重复零次或多次（最小匹配）
        ？      可选（出现零次或一次）
]]

-- print(string.match( "in 2022/06/12","%d+/%d+/%d+" )) -- 2022/06/12

--[[
    捕获：允许从match中获得匹配的数据
        可以把需要捕获的放到圆括号内来指定捕获

]]

-- a, b, c = string.match( "in 2022/06/12","(%d+)/(%d+)/%d+" )
-- print(a, b , c)
-- 2022	06	nil

-- 统计单词

-- do
--     local a = "hello, I am ck, i come from jining a beautiful city in shandong"
--     local counter = {}
--     for word in string.gmatch( a,"%w+" ) do
--         counter[word] = (counter[word] or 0) + 1
--     end
--     for word, count in pairs(counter) do
--         print(word, count)
--     end
-- end

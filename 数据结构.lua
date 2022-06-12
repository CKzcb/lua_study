--[[
    数组、列表、集合、记录、队列等
]]

--[[
    数组：整数去表进行索引，可以二维数组
        {{"a", "b"}, {"c", "d"}}

]]

-- a = {{"a", "b"}, {"c", "d"}}

-- print(#a)
-- print(#a[1])

--[[
    链表： 表示动态的，所以可以用表实现链表
        每个节点具有两个字段value和next
    list = {next=list, value=v}
    local l = list
    while l do
        visit l.value
        l = l.next
    end
]]

-- do
--     local l1 = {next=nil, value=100}
--     local l2 = {next=l1, value=200}
--     local l3 = {next=l2, value="daf"}
--     local l = l3
--     while l do
--         print(l.value)
--         l = l.next
--     end
-- end


--[[
    队列和双端队列
        使用table中的insert和remove
]]

--[[
    反向表，
    如 {"a", "b", "c"}
    对应的可以有{"a"=1,"b"=2, "c"=3}
]]

--[[
    字符串缓冲区
    可以使用table.concat(t)来将表合成字符串，类似于python的join
]]




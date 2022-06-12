--[[
    lua中的闭包和python中的闭包几乎一样
    
]]


-- function f1()
--     local count = 10
--     function wapper()
--         count = count + 1
--         return count
--     end
--     return wapper
-- end

-- a = f1()
-- print("+++++++++++++")
-- print(a())


a = {"a", "b", "c"}
print(#a)
table.insert( a,"d" )
print(#a)

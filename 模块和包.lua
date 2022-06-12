--[[
    模块和包就是封装好的代码
    - 可以通过require加载，然后创建一个表
        local m = require("math")
    - 可以只引入特定的函数
        local abs = require("math").abs
    这种方式导入和python一样，只是第一次加载，后续全部一样
    如果在package.path中找不到，会去找c语言中的模块
    如果成功，会加载到package.loaded中，为防止模块多次加载，可以先删除
        package.loaded.math = nil
    
    require搜索的是package.path中的值
]]

-- local m = require("math")
-- print(math.abs( -233 ))

-- local abs = require("math").abs
-- print(abs(-333))

--[[
    自定义模块
    local M = {}    -- 定义模块
    local function new(r, i)
        return {r=r, i=i}
    end
    M.new = new     -- 将new加入到M模块中

    可以return M也可以在package.loaded[...]=M
]]

local m = require("modle_test")
print(m.new(1,2))
m.p()
p1()


--[[
    文件操作：当前输入流和当前输出流
    io.input(filename)以只读的模式打开文件
    io.write可以读取任意数量的字符串写入当前输出流
]]

--[[
    日期和时间
    os模块
        os.time()   时间戳（默认参数是当时），参数可选{year=2022,month=6,day=12,hour=10,min=20,sec=1}
        os.date()   返回具体时间，可以指定格式 os.date("%Y-%d-%m")
    
]]

-- print(os.time())
-- print(os.time({year=2022,month=6,day=12,hour=10,min=20,sec=1}))

-- print(os.date())
-- print(os.date("%Y-%m-%d"))


--[[
    数据文件
]]


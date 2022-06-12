--[[
    协程是一系列的可执行的语句，拥有自己的栈、局部变量和指令指针，
    同时协程又与其他协程共享了全局变量和其他几乎一切资源

    线程和协程的主要区别在于，一个多线程程序可以并行运行多个线程，而协程一时间只能有一个

    lua中的协程都放在表coroutine中，
        - create 创建协程，返回一个thread类型，即新协程
            - 参数是一个匿名函数
            四种状态：
                - 挂起，呗创建时是挂起
                - 运行，
                - 正常
                - 死亡
        - status 可以查看协程状态
        - resume 重启, 
            - 参数1 co创建的协程
            - 参数2/3  函数需要的参数
            - 返回1 true和false
            - 返回2 函数return值
        - wrap 创建协同函数,返回的co可以直接调用函数
        - yield 暂停

]]

-- 定义协同函数

co = coroutine.create( function (a, b) print(a + b);return 1 end )

print(type(co))
print(coroutine.status( co ))

print(coroutine.resume( co, 20, 30 ))
print(coroutine.status( co ))

co = coroutine.wrap( function (a, b) print(a - b);print(a+b);return a*b end )
print(co(20, 3))
print("i am here ")






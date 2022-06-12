M = {}
-- package.loaded[...]=M

function new( r, i )
    -- body
    return {r=r, i=i}
end

M.new = new


function M.p( )
    -- body
    print("this is M.p")
end

function p1()
    print("this is p1 not m")
end

return M

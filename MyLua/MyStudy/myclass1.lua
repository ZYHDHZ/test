-- class1={a=3,b=7}
-- function class1:new(o)
-- 	o=o or {}
-- 	setmetatable(o,self)
-- 	self.__index=self
-- 	return o
-- end

-- function class1:Print(n)
-- 	print(n)
-- end


local function search(k,plist)
	for i=1,#plist do
		local v=plist[i][k]
		if v then return v end
	end
end


function createClass(...)
	local c={}
	local parents={...}
	setmetatable(c,{__index=function(t,k)
	return search(k,parents)
	end})
    c.__index=c

    function c:new(o)
    	o=o or {}
    	setmetatable(o,c)
    	return o
    end

    return c
end


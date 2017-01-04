package.path="E:/MyLuaProject/MyStudy/?.lua"
require("myclass1")
Named={}
function Named:getname()
	return self.Named
end

function Named:setname(n)
	self.name=n
end


--还有一句
Accout={}
function Accout:HaHa()
	print(self.name)
	print("hahhaahahahha")
end
-- 这里又加了一句注释
print("shfkjdskfjdsklfsdf")
NamedAccout=createClass(Named,Accout)
NamedObject=NamedAccout:new({name="zhongyuhan"})

-- 这里又加了一句
NamedObject:HaHa()

-- 这里加了一句注释

print("dksfhkdshafjkhsdfsdf")

package.path="E:/MyLuaProject/MyStudy/?.lua"
require("myclass1")
Named={}
function Named:getname()
	return self.Named
end

function Named:setname(n)
	self.name=n
end


Accout={}
function Accout:HaHa()
	print(self.name)
	print("hahhaa")
end
-- 这里又加了一句注释

NamedAccout=createClass(Named,Accout)
NamedObject=NamedAccout:new({name="zhongyuhan"})

NamedObject:HaHa()
-- 这里加了一句注释

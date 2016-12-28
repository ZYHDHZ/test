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
end

NamedAccout=createClass(Named,Accout)
NamedObject=NamedAccout:new({name="zhongyuhan"})

NamedObject:HaHa()

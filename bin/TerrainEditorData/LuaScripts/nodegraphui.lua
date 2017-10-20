-- Node-graph UI
-- Instance data
-- Consists of opcodes. 
-- If opcode=="Parameter" then get the specified input parameter.
-- If opcode=="Function" then instantiate the given ANL function, with the specified array indices

-- Testing
nodetypes=
{
	Constant=
	{
		inputs=
		{
		},
		instance={{op="Function", func="constant"}}
	},
	Seed=
	{
		inputs=
		{
		},
		instance={{op="Function", func="seed"}}
	},
	Add=
	{
		inputs=
		{
			{"value", "Value", 0.0},
			{"value", "Value", 0.0},
		},
		constants=
		{
			nil,
			nil
		},
		seeds=
		{
			nil,
			nil
		},
		instance={{op="Parameter", param=1}, {op="Parameter", param=2}, {op="Function", func="add", indices={1,2}}}
	},
	Subtract=
	{
		inputs=
		{
			{"value", "Value", 0.0},
			{"value", "Value", 0.0},
		},
		instance={{op="Parameter", param=1}, {op="Parameter", param=2}, {op="Function", func="subtract", indices={1,2}}}
	},
	Multiply=
	{
		inputs=
		{
			{"value", "Value", 1.0},
			{"value", "Value", 1.0},
		},
		instance={{op="Parameter", param=1}, {op="Parameter", param=2}, {op="Function", func="multiply", indices={1,2}}}
	},
	Divide=
	{
		inputs=
		{
			{"value", "Value", 0.0},
			{"value", "Value", 1.0},
		},
		instance={{op="Parameter", param=1}, {op="Parameter", param=2}, {op="Function", func="divide", indices={1,2}}}
	},
	Pow=
	{
		inputs=
		{
			{"value", "Value", 0.0},
			{"value", "Value", 1.0},
		},
		instance={{op="Parameter", param=1}, {op="Parameter", param=2}, {op="Function", func="pow", indices={1,2}}}
	},
	Minimum=
	{
		inputs=
		{
			{"value", "Value", 0.0},
			{"value", "Value", 0.0},
		},
		instance={{op="Parameter", param=1}, {op="Parameter", param=2}, {op="Function", func="minimum", indices={1,2}}}
	},
	Maximum=
	{
		inputs=
		{
			{"value", "Value", 0.0},
			{"value", "Value", 0.0},
		},
		instance={{op="Parameter", param=1}, {op="Parameter", param=2}, {op="Function", func="maximum", indices={1,2}}}
	},
	Bias=
	{
		inputs=
		{
			{"value", "Value", 0.0},
			{"value", "Bias", 0.5},
		},
		instance={{op="Parameter", param=1}, {op="Parameter", param=2}, {op="Function", func="bias", indices={1,2}}}
	},
	Gain=
	{
		inputs=
		{
			{"value", "Value", 0.0},
			{"value", "Gain", 0.5},
		},
		instance={{op="Parameter", param=1}, {op="Parameter", param=2}, {op="Function", func="gain", indices={1,2}}}
	},
	Step=
	{
		inputs=
		{
			{"value", "Value", 0.0},
			{"value", "Threshold", 0.0},
		},
		instance={{op="Parameter", param=1}, {op="Parameter", param=2}, {op="Function", func="step", indices={1,2}}}
	},
	LinearStep=
	{
		inputs=
		{
			{"value", "Low", 0.0},
			{"value", "High", 1.0},
			{"value", "Control", 0.0},
		},
		instance={{op="Parameter", param=1}, {op="Parameter", param=2}, {op="Parameter", param=3}, {op="Function", func="linearStep", indices={1,2,3}}}
	},
	SmoothStep=
	{
		inputs=
		{
			{"value", "Low", 0.0},
			{"value", "High", 1.0},
			{"value", "Control", 0.0},
		},
		instance={{op="Parameter", param=1}, {op="Parameter", param=2}, {op="Parameter", param=3}, {op="Function", func="smoothStep", indices={1,2,3}}}
	},
	SmootherStep=
	{
		inputs=
		{
			{"value", "Low", 0.0},
			{"value", "High", 1.0},
			{"value", "Control", 0.0},
		},
		instance={{op="Parameter", param=1}, {op="Parameter", param=2}, {op="Parameter", param=3}, {op="Function", func="smootherStep", indices={1,2,3}}}
	},
	Abs=
	{
		inputs=
		{
			{"value","Value",0.0}
		},
		instance={{op="Parameter", param=1}, {op="Function", func="abs", indices={1}}}
	},
	Sin=
	{
		inputs=
		{
			{"value","Value",0.0}
		},
		instance={{op="Parameter", param=1}, {op="Function", func="sin", indices={1}}}
	},
	Cos=
	{
		inputs=
		{
			{"value","Value",0.0}
		},
		instance={{op="Parameter", param=1}, {op="Function", func="cos", indices={1}}}
	},
	Tan=
	{
		inputs=
		{
			{"value","Value",0.0}
		},
		instance={{op="Parameter", param=1}, {op="Function", func="tan", indices={1}}}
	},
	ASin=
	{
		inputs=
		{
			{"value","Value",0.0}
		},
		instance={{op="Parameter", param=1}, {op="Function", func="asin", indices={1}}}
	},
	ACos=
	{
		inputs=
		{
			{"value","Value",0.0}
		},
		instance={{op="Parameter", param=1}, {op="Function", func="acos", indices={1}}}
	},
	ATan=
	{
		inputs=
		{
			{"value","Value",0.0}
		},
		instance={{op="Parameter", param=1}, {op="Function", func="atan", indices={1}}}
	},
	X=
	{
		inputs=
		{
		},
		instance={{op="Function", func="x", indices={}}}
	},
	Y=
	{
		inputs=
		{
		},
		instance={{op="Function", func="y", indices={}}}
	},
	dX=
	{
		inputs=
		{
			{"value", "Value", 0.0},
			{"value", "Spacing", 0.01},
		},
		instance={{op="Parameter", param=1}, {op="Parameter", param=2}, {op="Function", func="dX", indices={1,2}}}
	},
	dY=
	{
		inputs=
		{
			{"value", "Value", 0.0},
			{"value", "Spacing", 0.01},
		},
		instance={{op="Parameter", param=1}, {op="Parameter", param=2}, {op="Function", func="dY", indices={1,2}}}
	},
	Tiers=
	{
		inputs=
		{
			{"value", "Value", 0.0},
			{"value", "NumTiers", 1.0},
		},
		instance={{op="Parameter", param=1}, {op="Parameter", param=2}, {op="Function", func="tiers", indices={1,2}}}
	},
	SmoothTiers=
	{
		inputs=
		{
			{"value", "Value", 0.0},
			{"value", "NumTiers", 1.0},
		},
		instance={{op="Parameter", param=1}, {op="Parameter", param=2}, {op="Function", func="smoothTiers", indices={1,2}}}
	},
	TranslateDomain=
	{
		inputs=
		{
			{"value", "Value", 0.0},
			{"value", "Amount", 0.0},
		},
		instance={{op="Parameter", param=1}, {op="Parameter", param=2}, {op="Function", func="translateDomain", indices={1,2}}}
	},
	TranslateX=
	{
		inputs=
		{
			{"value", "Value", 0.0},
			{"value", "Amount", 0.0},
		},
		instance={{op="Parameter", param=1}, {op="Parameter", param=2}, {op="Function", func="translateX", indices={1,2}}}
	},
	TranslateY=
	{
		inputs=
		{
			{"value", "Value", 0.0},
			{"value", "Amount", 1.0},
		},
		instance={{op="Parameter", param=1}, {op="Parameter", param=2}, {op="Function", func="translateY", indices={1,2}}}
	},
	ScaleDomain=
	{
		inputs=
		{
			{"value", "Value", 0.0},
			{"value", "Amount", 1.0},
		},
		instance={{op="Parameter", param=1}, {op="Parameter", param=2}, {op="Function", func="scaleDomain", indices={1,2}}}
	},
	ScaleX=
	{
		inputs=
		{
			{"value", "Value", 0.0},
			{"value", "Amount", 1.0},
		},
		instance={{op="Parameter", param=1}, {op="Parameter", param=2}, {op="Function", func="scaleX", indices={1,2}}}
	},
	ScaleY=
	{
		inputs=
		{
			{"value", "Value", 0.0},
			{"value", "Amount", 1.0},
		},
		instance={{op="Parameter", param=1}, {op="Parameter", param=2}, {op="Function", func="scaleY", indices={1,2}}}
	},
	RotateDomain=
	{
		inputs=
		{
			{"value", "Value", 0.0},
			{"value", "Angle", 1.0},
			{"value", "AxisX", 0.0},
			{"value", "AxisY", 0.0},
			{"value", "Axisz", 1.0}
		},
		instance={{op="Parameter", param=1}, {op="Parameter", param=2}, {op="Parameter", param=3}, {op="Parameter", param=4}, {op="Parameter", param=5},
				{op="Function", func="rotateDomain", indices={1,2,3,4,5}}}
	},
	Mix=
	{
		inputs=
		{
			{"value", "Control", 0.5},
			{"value", "Low", 0.0},
			{"value", "High", 1.0}
		},
		instance={{op="Parameter", param=1}, {op="Parameter", param=2}, {op="Parameter", param=3}, {op="Function", func="mix", indices={1,2,3}}}
	},
	Seeder=
	{
		inputs=
		{
			{"value", "Input", 0.0},
			{"seed", "Seed", 45678},
		},
		instance={{op="Parameter", param=1}, {op="Parameter", param=2}, {op="Function", func="seeder", indices={1,2}}}
	},
	Sigmoid=
	{
		inputs=
		{
			{"value", "Value", 0.0},
			{"value", "Center", 0.0},
			{"value", "Ramp", 1.0}
		},
		instance={{op="Parameter", param=1}, {op="Parameter", param=2}, {op="Parameter", param=3}, {op="Function", func="sigmoid", indices={1,2,3}}}
	},
	Randomize=
	{
		inputs=
		{
			{"seed", "Seed", 17892},
			{"value", "Low", 0.0},
			{"value", "High", 1.0}
		},
		instance={{op="Parameter", param=1}, {op="Parameter", param=2}, {op="Parameter", param=3}, {op="Function", func="randomize", indices={1,2,3}}}
	},
	Fractal=
	{
		inputs=
		{
			{"seed", "Seed", 17892},
			{"value", "Layer", 0.0},
			{"value", "Persistence", 0.5},
			{"value", "Lacunarity", 2.0},
			{"value", "Octaves", 8},
			{"value", "Frequency", 1.0},
		},
		instance={{op="Parameter", param=1}, {op="Parameter", param=2}, {op="Parameter", param=3}, {op="Parameter", param=4}, {op="Parameter", param=5},
				{op="Parameter", param=6}, {op="Function", func="fractal", indices={1,2,3,4,5,6}}}
	},
	CellularBasis=
	{
		inputs=
		{
			{"value", "F1", -1.0},
			{"value", "F2", 1.0},
			{"value", "F3", 0.0},
			{"value", "F4", 0.0},
			{"value", "D1", 0.0},
			{"value", "D2", 0.0},
			{"value", "D3", 0.0},
			{"value", "D4", 0.0},
			{"value", "Distance Func", 0},
			{"seed", "Seed", 91234},
		},
		instance={{op="Parameter", param=1}, {op="Parameter", param=2}, {op="Parameter", param=3}, {op="Parameter", param=4}, {op="Parameter", param=5},
				{op="Parameter", param=6}, {op="Parameter", param=7}, {op="Parameter", param=8}, {op="Parameter", param=9}, {op="Parameter", param=10},
				{op="Function", func="cellularBasis", indices={1,2,3,4,5,6,7,8,9,10}}}
	},
	ValueBasis=
	{
		inputs=
		{
			{"value", "Interpolation", 3},
			{"seed", "Seed", 147234},
		},
		instance={{op="Parameter", param=1}, {op="Parameter", param=2}, {op="Function", func="valueBasis", indices={1,2}}}
	},
	GradientBasis=
	{
		inputs=
		{
			{"value", "Interpolation", 3},
			{"seed", "Seed", 147234},
		},
		instance={{op="Parameter", param=1}, {op="Parameter", param=2}, {op="Function", func="gradientBasis", indices={1,2}}}
	},
	SimplexBasis=
	{
		inputs=
		{
			{"seed", "Seed", 7120345}
		},
		instance={{op="Parameter", param=1}, {op="Function", func="simplexBasis", indices={1}}}
	},
	Radial=
	{
		inputs=
		{
		},
		instance={{op="Function", func="radial", indices={}}}
	}
	
}

function InstanceFunction(k, desc, params)
	local ins=desc.instance
	if not ins then return end
	
	local n={}
	local c
	for _,c in ipairs(ins) do
		if c.op=="Parameter" then
			table.insert(n, params[c.param])
		elseif c.op=="Function" then
			local indices=c.indices
			local constants=c.constants
			local seeds=c.seeds
			
			local inputs={}
			local d
			for d=1,#desc.inputs,1 do
				if indices[d] ~= nil then table.insert(inputs,n[indices[d]])
				elseif constants and constants[d] ~= nil then table.insert(inputs, k:constant(constants[d]))
				elseif seeds and seeds[d] ~= nil then table.insert(inputs, k:seed(seeds[d]))
				end
			end
			
			print("Function name: "..c.func)
			if c.func=="add" then
				table.insert(n, k:add(inputs[1],inputs[2]))
			elseif c.func=="subtract" then
				table.insert(n, k:subtract(inputs[1], inputs[2]))
			elseif c.func=="multiply" then
				table.insert(n, k:multiply(inputs[1], inputs[2]))
			elseif c.func=="divide" then
				table.insert(n, k:divide(inputs[1], inputs[2]))
			elseif c.func=="subtract" then
				table.insert(n, k:subtract(inputs[1], inputs[2]))
			elseif c.func=="minimum" then
				table.insert(n, k:minimum(inputs[1], inputs[2]))
			elseif c.func=="maximum" then
				table.insert(n, k:maximum(inputs[1], inputs[2]))
			elseif c.func=="bias" then
				table.insert(n, k:bias(inputs[1], inputs[2]))
			elseif c.func=="gain" then
				table.insert(n, k:gain(inputs[1], inputs[2]))
			elseif c.func=="step" then
				table.insert(n, k:step(inputs[1], inputs[2]))
			elseif c.func=="linearStep" then
				table.insert(n, k:linearStep(inputs[1], inputs[2], inputs[3]))
			elseif c.func=="smoothStep" then
				table.insert(n, k:smoothStep(inputs[1], inputs[2], inputs[3]))
			elseif c.func=="smootherStep" then
				table.insert(n, k:smootherStep(inputs[1], inputs[2], inputs[3]))
			elseif c.func=="abs" then
				table.insert(n, k:abs(inputs[1]))
			elseif c.func=="sin" then
				table.insert(n, k:sin(inputs[1]))
			elseif c.func=="cos" then
				table.insert(n, k:cos(inputs[1]))
			elseif c.func=="tan" then
				table.insert(n, k:tan(inputs[1]))
			elseif c.func=="asin" then
				table.insert(n, k:asin(inputs[1]))
			elseif c.func=="acos" then
				table.insert(n, k:acos(inputs[1]))
			elseif c.func=="atan" then
				table.insert(n, k:atan(inputs[1]))
			elseif c.func=="x" then
				table.insert(n, k:x())
			elseif c.func=="y" then
				table.insert(n, k:y())
			elseif c.func=="radial" then
				table.insert(n, k:radial())
			elseif c.func=="dX" then
				table.insert(n, k:dx(inputs[1], inputs[2]))
			elseif c.func=="dY" then
				table.insert(n, k:dy(inputs[1], inputs[2]))
			elseif c.func=="smoothTiers" then
				table.insert(n, k:smoothTiers(inputs[1], inputs[2]))
			elseif c.func=="tiers" then
				table.insert(n, k:tiers(inputs[1], inputs[2]))
			elseif c.func=="translateDomain" then
				table.insert(n, k:translateDomain(inputs[1], inputs[2]))
			elseif c.func=="translateX" then
				table.insert(n, k:translateX(inputs[1], inputs[2]))
			elseif c.func=="translateY" then
				table.insert(n, k:translateY(inputs[1], inputs[2]))
			elseif c.func=="scaleDomain" then
				table.insert(n, k:scaleDomain(inputs[1], inputs[2]))
			elseif c.func=="scaleX" then
				table.insert(n, k:scaleX(inputs[1], inputs[2]))
			elseif c.func=="scaleY" then
				table.insert(n, k:scaleY(inputs[1], inputs[2]))
			elseif c.func=="rotateDomain" then
				table.insert(n, k:rotateDomain(inputs[1], inputs[2], inputs[3], inputs[4], inputs[5]))
			elseif c.func=="mix" then
				table.insert(n, k:mix(inputs[1], inputs[2], inputs[3]))
			elseif c.func=="seeder" then
				table.insert(n, k:seeder(inputs[1], inputs[2]))
			elseif c.func=="sigmoid" then
				table.insert(n, k:sigmoid(inputs[1], inputs[2], inputs[3]))
			elseif c.func=="randomize" then
				table.insert(n, k:randomize(inputs[1], inputs[2], inputs[3]))
			elseif c.func=="fractal" then
				table.insert(n, k:fractal(inputs[1], inputs[2], inputs[3], inputs[4], inputs[5], inputs[6]))
			elseif c.func=="cellularBasis" then
				table.insert(n, k:cellularBasis(inputs[1], inputs[2], inputs[3], inputs[4], inputs[5], inputs[6], inputs[7], inputs[8], inputs[9], inputs[10]))
			elseif c.func=="valueBasis" then
				table.insert(n, k:valueBasis(inputs[1], inputs[2]))
			elseif c.func=="gradientBasis" then
				table.insert(n, k:gradientBasis(inputs[1], inputs[2]))
			elseif c.func=="simplexBasis" then
				table.insert(n, k:simplexBasis(inputs[1]))
			else
				print("wut")
			end
		end
	end
	print(k:lastIndex())
	return k:lastIndex()
end

function CreateLibraryDesc(n)
	local visited={}
	local recursing={}
	local parameters={}
	
	local isvisited=function(n)
		local c
		for _,c in ipairs(visited) do
			if c==n then return true end
		end
		return false
	end
	
	local nodeindex=function(n)
		local i,c
		for i,c in ipairs(visited) do
			if c==n then return i end
		end
		return nil
	end
	
	local parameterindex=function(n)
		local i,c
		for i,c in ipairs(parameters) do
			if c==n then return i end
		end
		return nil
	end
	
	local isrecursing=function(n)
		local c
		for _,c in ipairs(recursing) do
			if c==n then return true end
		end
		return false
	end
	
	local st=""
	
	function writenode(n)
		if n.name=="Seed" or n.name=="Constant" then
			local pi=parameterindex(n)
			if pi then st=st.." P"..pi
			else print("Parameter does not exist.")
			end
			return
		else
			st=st.." "..n.name
		end
		
		local c
		local inputs=n:GetChild("Inputs",true)
		local numparams=inputs:GetNumChildren()
		for c=1,numparams,1 do
			local src=GetSourceFromNode(n, "Input"..tostring(c-1))
			if src then st=st.." I"..nodeindex(src)
			else st=st.." C"..n:GetChild("Value"..tostring(c-1),true).text
			end
		end
	end
	
	local worker
	
	local visitnode=function(n)
		if n.name=="Constant" or n.name=="Seed" then return true end
		
		local inputs=n:GetChild("Inputs",true)
		local numparams=inputs:GetNumChildren()
		local c
		for c=1,numparams,1 do
			local s=GetSourceFromNode(n, "Input"..tostring(c-1))
			if s and isrecursing(s) then
				print("Cycle detected.")
				return false
			end
			
			if s and not isvisited(s) then
				if s.name=="Constant" or s.name=="Seed" then
					table.insert(parameters,s)
				end
				local ss=worker(s)
				if not ss then return false end
			end
			
		end
		return true
	end
	
	worker=function(n)
		table.insert(recursing,n)
		if not visitnode(n) then
			print("Bailing")
			table.remove(recursing)
			return false
		else
			table.remove(recursing)
			table.insert(visited,n)
			writenode(n)
			return true
		end
	end
	
	if not worker(n) then st=st.."Cycle detected" end
	print("Num params: "..#parameters)
	return st
end

function CreateMenuItem(title)
	local menu=Menu:new(title)
	menu:SetAutoStyle(cache:GetResource("XMLFile", "UI/DefaultStyle.xml"))
	menu:SetLayout(LM_HORIZONTAL, 0, IntRect(8,2,8,2))
	
	local text=menu:CreateChild("Text")
	text:SetStyle("EditorMenuText", cache:GetResource("XMLFile", "UI/DefaultStyle.xml"))
	text.text=title
	
	return menu
end

function CreatePopup(baseMenu)
	local popup=Window:new()
	popup:SetStyleAuto(cache:GetResource("XMLFile", "UI/DefaultStyle.xml"))
	popup:SetLayout(LM_VERTICAL, 1, IntRect(2,6,2,6))
	baseMenu.popup=popup
	baseMenu.popupOffset = IntBector2(0,baseMenu.height)
	return popup
end

function CreateMenu(title)
	local menu=CreateMenuItem(title)
	local text=menu.children[1]
	menu.maxWidth=text.width+20
	CreatePopup(menu)
	return menu
end


function CreateNodeCreateMenu(parent)
	local menu=ui:LoadLayout(cache:GetResource("XMLFile", "UI/CreateNodeMenu.xml"))
	
end

function CreateNodeType(parent, type)
	if type=="Seed" then
		local node=ui:LoadLayout(cache:GetResource("XMLFile", "UI/SeedNode.xml"))
		parent:AddChild(node)
		return node
	elseif type=="Constant" then
		local node=ui:LoadLayout(cache:GetResource("XMLFIle", "UI/ConstantNode.xml"))
		parent:AddChild(node)
		return node
	end
	
	local d=nodetypes[type]
	if not d then return end
	
	local node=ui:LoadLayout(cache:GetResource("XMLFile", "UI/NodeTemplate.xml"))
	node.name=type
	parent:AddChild(node)
	node:GetChild("Title",true).text=type
	
	local c
	local inputs=node:GetChild("Inputs", true)
	
	for c=1,#d.inputs,1 do
		local input=inputs:CreateChild("UIElement")
		input.name=d.inputs[c][1]
		input:SetLayout(LM_HORIZONTAL)
		local e=input:CreateChild("NodeGraphLinkDest")
		e.name="Input"..(c-1)
		e:SetMinSize(12,12)
		e:SetMaxSize(12,12)
		e:SetImageRect(IntRect(16,0,32,16))
		e.texture=cache:GetResource("Texture2D", "Textures/UI.png")
		
		e=input:CreateChild("LineEdit")
		e.name="Value"..(c-1)
		e:SetStyleAuto(cache:GetResource("XMLFile", "UI/DefaultStyle.xml"))
		e:GetTextElement().fontSize=9
		e:SetText(d.inputs[c][3])
		e:SetMinSize(40,12)
		e:SetMaxSize(40,12)
		
		e=input:CreateChild("Text")
		e:SetStyleAuto(cache:GetResource("XMLFile", "UI/DefaultStyle.xml"))
		e.fontSize=9
		e.text=tostring(d.inputs[c][2])
	end
	return node
	
end

function GetSourceFromNode(node, inputname)
	local c=node:GetChild(inputname,true)
	if c then
		local link=c:GetLink()
		if link then
			local src=link:GetSource()
			if src then
				return src:GetRoot()
			end
		end
	end
	return false
end


function PackNodeGraph(output)
	local nodes={}
	local kernelindices={}
	local isvisited=function(n)
		local c
		for _,c in ipairs(nodes) do
			if c==n then return true end
		end
		return false
	end
	
	local nodeindex=function(n)
		local i,c
		for i,c in ipairs(nodes) do
			if c==n then return i end
		end
		return false
	end
	
	function InstanceANLFunction(kernel, n)
		local GetValue=function(n,which)
			local s=GetSourceFromNode(n,"Input"..which)
			local s1
			if s then s1=kernelindices[nodeindex(s)]
			else local c=tonumber(n:GetChild("Value"..which,true).text) or 1.0 s1=kernel:constant(c) print("Value: "..c) end
			return s1
		end
		
		local GetSeed=function(n,which)
			local s=GetSourceFromNode(n,"Input"..which)
			local s1
			if s then s1=kernelindices[nodeindex(s)]
			else local c=tonumber(n:GetChild("Value"..which,true).text) or 12345 s1=kernel:seed(c) print("Seed: "..c) end
			return s1
		end
		
		local desc=nodetypes[n.name]
		if not desc then return end
		local numinputs=#desc.inputs
		local c
		local params={}
		for c=1,numinputs,1 do
			if desc.inputs[c][1]=="value" then
				table.insert(params, GetValue(n,c-1))
			else 
				table.insert(params, GetSeed(n,c-1))
			end
		end

		
		if n.name=="Output" then
			local s1
			local s1=GetValue(n,0)
			return s1
		elseif n.name=="Constant" then
			local v=tonumber(n:GetChild("Value", true).text)
			return kernel:constant(v)
		elseif n.name=="Seed" then
			local v=tonumber(n:GetChild("Value", true).text)
			return kernel:seed(v)
		else
			print("Instance function "..n.name)
			return InstanceFunction(kernel, desc, params)
		end
		
	end
	
	local kernel=CKernel()
	
	
	
	worker=function(n)
		local visitnode=function(n,numparms)
			local s,c
			for c=0,numparms-1,1 do
				s=GetSourceFromNode(n,"Input"..c)
				if s and not isvisited(s) then worker(s) end
			end
		end
		
		if n.name~="Output" then
			local desc=nodetypes[n.name]
			if not desc then print(n.name.." Doesn't exist") return false end
		
			local numinputs=#desc.inputs
			if numinputs>0 then
				visitnode(n, numinputs)
			end
		else
			visitnode(n,1)
		end
		
		table.insert(nodes,n)
		local ind=InstanceANLFunction(kernel, n)
		table.insert(kernelindices, ind)
	end
	print("Packing node graph.")
	
	worker(output)
	local c
	for _,c in ipairs(nodes) do print(c.name) end
	return kernel
end

NodeGraphUI=ScriptObject()

function NodeGraphUI:Start()
	self.createnodemenu=ui:LoadLayout(cache:GetResource("XMLFile", "UI/CreateNodeMenu.xml"))
	--self.pane:AddChild(self.createnodemenu)
	
	self.pane=ui.root:CreateChild("UIElement")
	self.pane:SetSize(graphics.width, graphics.height)
	
	local tp
	for tp,_ in pairs(nodetypes) do
		self:SubscribeToEvent(self.createnodemenu:GetChild(tp,true),"Pressed", "NodeGraphUI:HandleCreateNode")
	end
	
	self.createnodemenu.visible=false
	
	local cnmclose=self.createnodemenu:GetChild("Close", true)
	self:SubscribeToEvent(cnmclose, "Pressed", "NodeGraphUI:HandleCloseCreateNodeMenu")
	
	self.nodegroup=nil
	self.cursortarget=cursor:CreateChild("NodeGraphLinkDest")
	
end

function NodeGraphUI:CreateNodeGroup()
	local nodegroup=
	{
		nodes={}
	}
	nodegroup.pane=self.pane:CreateChild("Window")
	nodegroup.pane.size=IntVector2(graphics.width*2, graphics.height*2)
	nodegroup.pane.position=IntVector2(-graphics.width/2, -graphics.height/2)
	nodegroup.pane:SetImageRect(IntRect(208,0,223,15))
	nodegroup.pane:SetImageBorder(IntRect(4,4,4,4))
	nodegroup.pane:SetTexture(cache:GetResource("Texture2D", "Textures/UI.png"))
	nodegroup.pane.opacity=0.75
	nodegroup.pane.bringToFront=true
	nodegroup.pane.movable=true
	nodegroup.pane.clipChildren=false
	nodegroup.pane:SetDefaultStyle(cache:GetResource("XMLFile", "UI/NodeStyle.xml"))
	
	nodegroup.linkpane=nodegroup.pane:CreateChild("NodeGraphLinkPane")
	nodegroup.linkpane.size=IntVector2(graphics.width*2, graphics.height*2)
	nodegroup.linkpane.visible=true
	nodegroup.linkpane.texture=cache:GetResource("Texture2D", "Data/Textures/UI.png")
	
	nodegroup.previewtex=Texture2D:new()
	nodegroup.previewimg=Image()
	nodegroup.previewimg:SetSize(256,256,3)
	nodegroup.previewimg:Clear(Color(0,0,0))
	nodegroup.previewtex:SetData(nodegroup.previewimg,false)
	
	nodegroup.output=self:OutputNode(nodegroup)
	nodegroup.output.position=IntVector2(-nodegroup.pane.position.x + graphics.width-nodegroup.output.width, -nodegroup.pane.position.y + graphics.height/4)
	
	nodegroup.output:GetChild("Preview",true).texture=nodegroup.previewtex
	
	list=nodegroup.output:GetChild("TargetList",true)
	local smtypes=
	{
		"Terrain",
		"Layer 1",
		"Layer 2",
		"Layer 3",
		"Layer 4",
		"Layer 5",
		"Layer 6",
		"Layer 7",
		"Layer 8",
		"Mask 1",
		"Mask 2",
		"Mask 3"
	}
	
	local c
	for _,c in ipairs(smtypes) do
		local t=Text:new(context)
		t:SetFont(cache:GetResource("Font", "Fonts/Anonymous Pro.ttf"), 9)
		t.text=c
		t.color=Color(1,1,1)
		t.minSize=IntVector2(0,16)
		list:AddItem(t)
	end
	list.selection=0
	
	nodegroup.pane:AddChild(self.createnodemenu)
	
	self:SubscribeToEvent(nodegroup.output:GetChild("Generate",true),"Pressed","NodeGraphUI:HandleGenerate")
	self:SubscribeToEvent(nodegroup.output:GetChild("Execute",true),"Pressed","NodeGraphUI:HandleExecute")
	nodegroup.pane.visible=false
	return nodegroup
end

function NodeGraphUI:Activate(nodegroup)
	if self.nodegroup then
		nodegroup.pane.visible=false
		nodegroup.pane.focus=false
		
	end
	self.nodegroup=nodegroup
	nodegroup.pane.visible=true
	nodegroup.pane.focus=true
	nodegroup.pane:AddChild(self.createnodemenu)
	self.createnodemenu.visible=true
	self.createnodemenu.position=IntVector2(-self.nodegroup.pane.position.x,-self.nodegroup.pane.position.y+graphics.height-self.createnodemenu.height)
	
	self.closetext=self.pane:CreateChild("Text")
	self.closetext:SetStyle("Text", cache:GetResource("XMLFile","UI/DefaultStyle.xml"))
	self.closetext:SetFontSize(20)
	self.closetext.text="Press 'M' to close window."
end

function NodeGraphUI:Deactivate()
	if self.nodegroup then
		self.nodegroup.pane.visible=false
		self.nodegroup.pane.focus=false
		if self.closetext then self.closetext:Remove() self.closetext=nil end
	end
end


function NodeGraphUI:HandleCloseCreateNodeMenu(eventType, eventData)
	self.createnodemenu.visible=false
end

function NodeGraphUI:HandleCreateNode(eventType, eventData)
	if not self.nodegroup then return end
	local e=eventData["Element"]:GetPtr("UIElement")
	if not e then return end
	local n

	n=self:BuildNode(self.nodegroup, e.name)
	if not n then return end
	
	n.position=IntVector2(-self.nodegroup.pane.position.x + graphics.width/2, -self.nodegroup.pane.position.y + graphics.height/2)
	table.insert(self.nodegroup.nodes, n)
end

function NodeGraphUI:SubscribeLinkPoints(e,numinputs)
	local output=e:GetChild("Output0", true)
	if(output) then
		self:SubscribeToEvent(output, "DragBegin", "NodeGraphUI:HandleOutputDragBegin")
		self:SubscribeToEvent(output, "DragEnd", "NodeGraphUI:HandleDragEnd")
		output:SetRoot(e)
	end
	
	local c
	for c=0,numinputs-1,1 do
		local input=e:GetChild("Input"..c, true)
		if(input) then
			self:SubscribeToEvent(input, "DragBegin", "NodeGraphUI:HandleInputDragBegin")
			self:SubscribeToEvent(input, "DragEnd", "NodeGraphUI:HandleDragEnd")
		end
	end
end

function NodeGraphUI:OutputNode(nodegroup)
	local e=ui:LoadLayout(cache:GetResource("XMLFile", "UI/OutputNode.xml"))
	e.visible=true
	self:SubscribeLinkPoints(e,1)
	
	nodegroup.pane:AddChild(e)
	return e
end

function NodeGraphUI:BuildNode(nodegroup, type)
	local e=CreateNodeType(nodegroup.pane, type)
	local d=nodetypes[type]
	if not d then return end
	
	if e then
		self:SubscribeLinkPoints(e,#d.inputs)
	end
	
	return e
end



function NodeGraphUI:HandleOutputDragBegin(eventType, eventData)
	if not self.nodegroup then return end
	local element=eventData["Element"]:GetPtr("NodeGraphLinkSource")
	self.link=self.nodegroup.linkpane:CreateLink(element,self.cursortarget)
	self.link:SetImageRect(IntRect(193,81,207,95))
	
end

function NodeGraphUI:HandleDragEnd(eventType, eventData)
	if not self.link then return end
	if not self.nodegroup then return end
	
	local at=ui:GetElementAt(cursor.position)
	if at then
		if string.sub(at.name, 1, 5)=="Input" then
			local thislink=at:GetLink()
			if thislink then
				at:ClearLink()
				local src=thislink:GetSource()
				if src then src:RemoveLink(thislink) end
				self.nodegroup.linkpane:RemoveLink(thislink)
			end
			self.link:SetTarget(at)
			return
		end
	end
	
	-- Destroy the link if not dropped on a valid target
	print("Destroy the link")
	local source=self.link:GetSource()
	if(source) then source:RemoveLink(self.link) end
	self.nodegroup.linkpane:RemoveLink(self.link)
	self.link=nil
end

function NodeGraphUI:HandleInputDragBegin(eventType, eventData)
	local element=eventData["Element"]:GetPtr("NodeGraphLinkDest")
	if element then
		local link=element:GetLink()
		if link then
			self.link=link
			link:SetTarget(self.cursortarget)
			element:ClearLink()
		else
			self.link=nil
		end
	end
end

function NodeGraphUI:HandleGenerate(eventType, eventData)
	if not self.nodegroup then return end
	local kernel=PackNodeGraph(self.nodegroup.output)
	RenderANLKernelToImage(self.nodegroup.previewimg,kernel,0,1)
	self.nodegroup.previewtex:SetData(self.nodegroup.previewimg)
	print(CreateLibraryDesc(self.nodegroup.output))
end

function NodeGraphUI:HandleExecute(eventType, eventData)
	if not self.nodegroup then return end
	
	local target=self.nodegroup.output:GetChild("TargetList",true).selection
	
	local um1,im1=self.nodegroup.output:GetChild("UseMask1",true).checked,self.nodegroup.output:GetChild("InvertMask1",true).checked
	local um2,im2=self.nodegroup.output:GetChild("UseMask2",true).checked,self.nodegroup.output:GetChild("InvertMask2",true).checked
	local um3,im3=self.nodegroup.output:GetChild("UseMask3",true).checked,self.nodegroup.output:GetChild("InvertMask3",true).checked
	local ms=MaskSettings(um1,im1,um2,im2,um3,im3)
	
	local low=tonumber(self.nodegroup.output:GetChild("Low",true).text) or 0.0
	local high=tonumber(self.nodegroup.output:GetChild("High",true).text) or 1.0
	
	if target==0 then
		-- Map terrain
		if not self.nodegroup then return end
		local kernel=PackNodeGraph(self.nodegroup.output)
		local arr=CArray2Dd(TerrainState:GetTerrainWidth(), TerrainState:GetTerrainHeight())
		map2DNoZ(SEAMLESS_NONE,arr,kernel,SMappingRanges(0,1,0,1,0,1), kernel:lastIndex())
		arr:scaleToRange(low,high)
		TerrainState:SetHeightBuffer(arr,ms)
		--self.nodemapping.visible=false
		saveDoubleArray("map.png",arr)
		return
	elseif target>=1 and target<=8 then
		if not self.nodegroup then return end
		local kernel=PackNodeGraph(self.nodegroup.output)
		local arr=CArray2Dd(TerrainState:GetBlendWidth(), TerrainState:GetBlendHeight())
		map2DNoZ(SEAMLESS_NONE,arr,kernel,SMappingRanges(0,1,0,1,0,1), kernel:lastIndex())
		arr:scaleToRange(low,high)
		TerrainState:SetLayerBuffer(arr,target-1,ms)
		--self.nodemapping.visible=false
		return
	elseif target>=9 and target<=11 then
		if not self.nodegroup then return end
		local kernel=PackNodeGraph(self.nodegroup.output)
		local arr=CArray2Dd(TerrainState:GetTerrainWidth(), TerrainState:GetTerrainHeight())
		map2DNoZ(SEAMLESS_NONE,arr,kernel,SMappingRanges(0,1,0,1,0,1), kernel:lastIndex())
		arr:scaleToRange(low,high)
		print("Setting to mask "..target-9)
		TerrainState:SetMaskBuffer(arr,target-9)
		--self.nodemapping.visible=false
	end
end

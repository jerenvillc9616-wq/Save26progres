--[[ MARBEG DUMP #20
  origin: loadstring
  chunk:  
  size:   686 bytes
  hash:   42a35fca
  time:   37.07s
  caller: jcLEdImeFmfJNeoGbVBuOBzXr:206 ()
]]--
local TextBox = {}
TextBox.__index = TextBox

function TextBox.new(context: table)
	local self = setmetatable(context, TextBox)	
	return self
end

function TextBox:handleTextBox()
	self.autoSizeTextBox()
	
	self.TextBox:GetPropertyChangedSignal("Text"):Connect(function()
		task.defer(function()
			self.autoSizeTextBox()
		end)
	end)

	self.TextBox:GetPropertyChangedSignal("TextBounds"):Connect(function()
		self.autoSizeTextBox()
	end)

	self.TextBox.Focused:Connect(function()
		self.autoSizeTextBox()
	end)
	
	self.TextBox.FocusLost:Connect(function(enterPressed)
		if enterPressed then
			self.callback(self.TextBox.Text)
		end
		self.autoSizeTextBox()
	end)
end


return TextBox

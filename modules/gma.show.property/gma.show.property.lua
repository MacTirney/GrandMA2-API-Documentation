-- gma.show.property Module - GMA2 Lua Functions
-- Module: gma.show.property


--[[ 
Important Note:
    The example handle is a simple id number. 
    Your handle number will likely be a lot longer.
    It should be saved to a variable you can call on later in your codebase.
]]

-- .amount(handle)
-- param - handle: Number
-- returns: Number
-- usage:
    -- local targetHandle = gma.show.getobj.handle('Group 2')
    -- local amountOfProps = gma.show.property.amount(targetHandle)
function gma.show.property.amount(handle) end

-- .name(handle, index)
-- param - handle: Number
-- param - index: Number
-- returns: String
-- usage:
    -- local targetHandle = gma.show.getobj.handle('Group 2')
    -- local nameOfProp = gma.show.property.name(targetHandle, 1)
function gma.show.property.name(handle, index) end

-- .get(handle, index)
-- param - handle: Number
-- param - index: Number
-- returns: String
-- usage: 
    -- local targetHandle = gma.show.getobj.handle('Cue 3')
    -- local getProp = gma.show.property.get(targetHandle, 1)
function gma.show.property.get(handle, index) end

-- .get(handle, property_value)
-- param - handle: Number
-- param - property_value: String
-- returns: String
-- usage: gma.show.property.get(128, '100')
function gma.show.property.get(handle, property_value) end

-- .set(handle, index, value)
-- param - handle: Number
-- param - index: Number
-- param - value: String
-- returns: Boolean
-- usage: 
    -- local targetHandle = gma.show.getobj.set('Cue 5')
    -- local getProp = gma.show.property.get(targetHandle, 1, '72')
function gma.show.property.set(handle, index, value) end

-- .set(handle, property_name, value)
-- param - handle: Number
-- param - property_name: String
-- param - value: String
-- returns: Boolean
-- usage: gma.show.property.set(126, 'DImmer', '50')
function gma.show.property.set(handle, property_name, value) end
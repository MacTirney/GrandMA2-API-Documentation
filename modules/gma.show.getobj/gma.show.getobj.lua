-- gma.show.getobj Module - GMA2 Lua Functions
-- Module: gma.show.getobj


--[[ 
Important Note:
    The example handle is a simple id number. 
    Your handle number will likely be a lot longer.
    It should be saved to a variable you can call on later in your codebase.
]]

-- .handle(name)
-- param - name: String
-- returns: Number
-- usage: 
    -- gma.show.getobj.handle('Group 7')
function gma.show.getobj.handle(name) end

-- .handle(handle)
-- param - handle: Number
-- returns: Boolean
-- usage: gma.show.getobj.handle(129)
function gma.show.getobj.handle(handle) end

-- .class(handle)
-- param - handle: Number
-- returns: String
-- usage:
    -- local targetHandle = gma.show.getobj.handle('Cue 8')
    -- local classFinder = gma.show.getobj.class(targetHandle)
function gma.show.getobj.class(handle) end

-- .index(handle)
-- param - handle: Number
-- returns: Number
-- usage: gma.show.getobj.index(114)
function gma.show.getobj.index(handle) end

-- .number(handle)
-- param - handle: Number
-- returns: Number
-- usage: gma.show.getobj.number(116)
function gma.show.getobj.number(handle) end

-- .name(handle)
-- param - handle: Number
-- returns: String
-- usage: gma.show.getobj.name(106)
function gma.show.getobj.name(handle) end

-- .label(handle)
-- param - handle: Number
-- returns: String
-- usage: gma.show.getobj.label(110)
function gma.show.getobj.label(handle) end

-- .amount(handle)
-- param - handle: Number
-- returns: Number
-- usage: gma.show.getobj.amount(112)
function gma.show.getobj.amount(handle) end

-- .child(handle, index)
-- param - handle: Number
-- param - index: Number
-- returns: Number
-- usage: 
    -- local targetHandle = gma.show.getobj.handle('Preset 6');
    -- local amountofChildren = gma.show.getobj.child(targetHandle, 1);
function gma.show.getobj.child(handle, index) end

-- .parent(child_handle)
-- param - child_handle: Number
-- returns: Number
-- usage: 
    -- local targetHandle = gma.show.getobj.handle('Cue 6');
    -- local parentLocator = gma.show.getobj.child(handle);
function gma.show.getobj.parent(handle) end

-- .verify(handle)
-- param - handle: Number
-- returns: Boolean
-- usage: 
    -- local targetHandle = gma.show.getobj.handle('Cue 8')
    -- local verifyCues = gma.show.getobj.verify(targetHandle)
function gma.show.getobj.verify(handle) end

-- .compare(handle1, handle2)
-- param - handle1: Number
-- param - handle2: Number
-- returns: Boolean
-- usage: 
    -- local targetHandle1 = gma.show.getobj.handle('Group 4') 
    -- local targetHandle2 = gma.show.getobj.handle('Group 5') 
    -- local compareHandles = gma.show.getobj.compare(handle1, handle2)
function gma.show.getobj.compare(handle1,handle2) end
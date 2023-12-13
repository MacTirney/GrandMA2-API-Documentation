-- gma.user Module - GMA2 Lua Functions
-- Module: gma.user


-- .getvar(varname)
-- param - varname: String
-- returns: Mixed
-- usage: 
    -- local variableName = 'Variable 3'
    -- local variableValue = gma.user.getvar(variableName)
function gma.user.getvar(varname) end

-- .setvar(varname, value)
-- param - varname: String
-- param - value: Mixed
-- usage: 
    -- local variableName = 'Variable 6'
    -- local variableValue = 'This is the value of variable 6'
    -- local settingTheVariable = gma.user.setvar(variableName, variableValue)
function gma.user.setvar(varname, value) end

-- .getcmddest()
-- returns: Number
-- usage: gma.user.getcmddest()
function gma.user.getcmddest() end

-- .getselectedexec()
-- returns: Number
-- usage: gma.selectedexec()
function gma.user.getselectedexec() end
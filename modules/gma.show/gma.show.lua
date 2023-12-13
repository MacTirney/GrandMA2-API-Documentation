-- gma.show Module - GMA2 Lua Functions
-- Module: gma.show


-- .getdmx(dmx_addr)
-- param - dmx_addr: Number
-- returns: Number
-- usage: gma.show.getdmx(2)
function gma.show.getdmx(dmx_addr) end

-- .getdmx(recycle, dmx_addr, amount)
-- param - recycle: Table
-- param - dmx_addr: Number
-- param (optional) - amount: Number
-- returns: Table
-- usage: gma.show.getdmx((), 4, 12)
function gma.show.getdmx(recycle, dmx_addr, amount) end

-- .getvar(varname)
-- param - varname: String
-- returns: Mixed
-- usage: gma.show.getvar('PRESET')
function gma.show.getvar(varname) end

-- .setvar(varname, value)
-- param - varname: String
-- param - value: Mixed
-- usage: gma.show.setvar('FADERPAGE', 4)
function gma.show.setvar(varname, value) end
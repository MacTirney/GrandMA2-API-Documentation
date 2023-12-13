-- gma.network Module - GMA2 Lua Functions
-- Module: gma.network


-- .gethosttype()
-- returns: String
-- usage: gma.network.gethosttype()
function gma.network.gethosttype() end

-- .gethostsubtype()
-- returns: String
-- usage: gma.network.gethostsubtype()
function gma.network.gethostsubtype() end

-- .getprimaryip()
-- returns: String
-- usage: gma.network.getprimaryip()
function gma.network.getprimaryip() end

-- .getsecondaryip()
-- returns: String
-- usage: gma.network.getsecondaryip()
function gma.network.getsecondaryip() end

-- .getstatus()
-- returns: String
-- usage: gma.network.getstatus()
function gma.network.getstatus() end

-- .getsessionnumber()
-- returns: Number
-- usage: gma.network.getsessionnumber()
function gma.network.getsessionnumber() end

-- .getsessionname()
-- returns: String
-- usage: gma.network.getsessionname()
function gma.network.getsessionname() end

-- .getslot()
-- returns: Number
-- usage: gma.network.getslot()
function gma.network.getslot() end

-- .gethostdata(ip, recycle)
-- param - ip: String
-- param (optional) - recycle: Table
-- returns: Table
-- usage: gma.network.gethostdata('8.8.8.8')
function gma.network.gethostdata(ip, recycle) end

-- .getmanetslot(slot, recycle)
-- param - slot: Number
-- param (optional) - recycle: Table
-- returns: Table
-- usage: gma.network.getmanetslot(3)
function gma.network.getmanetslot(slot, recycle) end

-- .getperformance(slot, recycle)
-- param - slot: Number
-- param (optional) - recycle: Table
-- returns: Table
-- usage: gma.network.getperformance(4)
function gma.network.getperformance(slot,recycle) end
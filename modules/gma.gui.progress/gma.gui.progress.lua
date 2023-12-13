-- gma.gui.progress Module - GMA2 Lua Functions
-- Module: gma.gui.progress


--[[ 
Important Note:
    The example progress_handle is a simple id number. 
    Your progress_handle number will likely be a lot longer.
]]

-- .start(progress_name)
-- param - progress_name: String
-- returns: Number
-- usage: gma.gui.progress.start('FixtureOscillate')
function gma.gui.progress.start(progress_name) end

-- .stop(progress_handle)
-- param - progress_handle: Number
-- usage: gma.gui.progress.stop(124)
function gma.gui.progress.stop(progress_handle) end

-- .settext(progress_handle, text)
-- param - progress_handle: Number
-- param - text: String
-- usage: gma.gui.progress.settext(124, "This shows the progress between fixture oscillation.")
function gma.gui.progress.settext(progress_handle,text) end

-- .setrange(progress_handle, from, to)
-- param - progress_handle: Number
-- param - from: Number
-- param - to: Number
-- usage: gma.gui.progress.setrange(124. 0, 16)
function gma.gui.progress.setrange(progress_handle,from,to) end

-- .set(progress_handle, value)
-- param - progress_handle: Number
-- param - value: Number
-- usage: gma.gui.progress.set(124, 2)
function gma.gui.progress.set(progress_handle,value) end
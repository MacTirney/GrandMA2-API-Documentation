-- gma.canbus Module - GMA2 Lua Functions
-- Module: gma.canbus


-- .hardkey(code, pressed, hold)
-- param - code: Number
-- param - pressed: Boolean
-- param - hold: Boolean
-- returns: Boolean
-- usage: gma.canbus.encoder(82, true, false)
function gma.canbus.hardkey(code, pressed, hold) end

-- .encoder(encoder, steps, pressed)
-- param - encoder: Number
-- param - steps: Number
-- param - pressed: Boolean
-- returns: Boolean
-- usage: gma.canbus.encoder(0, -10, false)
function gma.canbus.encoder(encoder, steps, pressed) end

-- .wheel(steps)
-- param - steps: Number
-- returns: Boolean
-- usage: gma.canbus.wheel(23)
function gma.canbus.wheel(steps)end

-- .ball(x_axis, y_axis)
-- param -- x_axis: Number
-- param -- y_axis: Number
-- returns: Boolean
-- usage: gma.canbus.ball(22,18)
function gma.canbus.ball(x_axis, y_axis) end
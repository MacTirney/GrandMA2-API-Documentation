# GrandMA2 API Documentation for Lua Scripting

**Modules**
- gma.canbus
    - Canbus related GMA Lua functions   
- gma.gui
    - GUI Related GMA Lua functions
- gma.gui.progress
    - Progressbar related GMA Lua functions
- gma.
    - General GMA Lua functions
- gma.network
    - Network related GMA Lua functions
- gma.show
    - Functions pertaining to the live operation and interaction of the console
- gma.show.getobj
    - Functions to interface with stored items on the GMA
- gma.show.property
    - GMA LUA functions to get and adjust object properties
- gma.timestamp
    - Hidden & undocumented timestamp functions
    - Note! - These functions may be unstable and have odd side effects, I would not recommend using them in an active show file.
    - Note! - These functions should be tested in onPC.
- gma.user
    - Functions related to user defined variables

**Module - gma.canbus**
*Functions*
- .hardkey(code, pressed, hold)
    - Description:
        - Emulates keypresses on GMA2 hardware.
        - Warning! - This is a low level function and might have unpredictable and harmful consequences on your console and/or showfile.
    - Parameters:
        - code: (number) Numeric code corresponding to a hardkey on the GMA2 console (e.g - 54 = Esc)
        - pressed: (boolean) Indicates whether the hardkey is pressed (true) or released (false)
        - hold: (boolean) Indicates whether the hardkey is being held down
    - Returns:
        - (boolean) Success returns true except when a wrong parameter count is given.
    - Extra Info:
        - Look at Keycodes Doc

- .encoder(encoder, steps, pressed)
    - Description:
        - Emulates the encoder wheels on GMA2 hardware.
        - Warning! - This is a low level function and might have unpredictable and harmful consequences on your console and/or showfile.
    - Parameters:
        - encoder: (number) The index of the specific encoder you want to interact with
        - steps: (number) The number of steps to rotate the encoder
        - Note! - These values are can be both positive and negative depending on the direction you want the encoder wheel to rotate.
        - pressed: (boolean) Indicates whether the encoder is pressed or not
    - Returns:
        - (boolean) Indicates the success or failure of the operation

- .wheel(steps)
    - Description:
        - Emulates the wheel on GMA2 hardware.
        - Warning! - This is a low level function and might have unpredictable and harmful consequences on your console and/or showfile.
    - Parameters:
        - steps: (number) The number of steps to rotate the wheel on the GMA2 hardware
    - Returns:
        - (boolean) Indicates the success or failure of the operation

- .ball(x_axis, y_axis)
    - Description:
        - Emulates the track-pad ball on GMA2 hardware.
        - Warning! - This is a low level function and might have unpredictable and harmful consequences on your console and/or showfile.
    - Parameters:
        - x_axis: (number) A numeric value (position) along the x-axis of a ball on the GMA2 hardware.
        - y_axis: (number) A numeric value (position) along the y-axis of a ball on the GMA2 hardware.
    - Returns:
        - (boolean) Indicates the success or failure of the operation

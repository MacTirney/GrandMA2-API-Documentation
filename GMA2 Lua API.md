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

**Module - gma.gui**
*Functions*
- .confirm(title, message)
    - Description:
        - Displays a confirmation dialog box, prompting the user to confirm or cancel an action.
        - Warning! - Calling this function on version 3.1.25 may hang your console, this function was removed in version 3.1.25.
    - Parameters:
        - title: (string) The title or heading of the confirmation dialog box
        - message: (string) The message or content to be displayed in the confirmation dialog box
    - Returns:
        - (boolean) Indicates true when clicking ok and nil otherwise

- .msgbox(title, message)
    - Description:
        - Displays a message box for the user to see with a specified title and message.
        - This is generally used to display information or alert the user.
    - Parameters:
        - title: (string) The title or heading of the message box
        - message: (string) The message or content to be displayed in the message box
    - Returns:
        - (boolean) Indicates the user's response in a binary format
        - Note! - "OK" for true & "Cancel" for false

**Module - gma.gui.progress**
*Functions*
- .start(progress_name)
    - Description:
        - Starts a progress indicator with a specified title or label.
        - Note! - There is no way for the user to close an open progress bar, therefore .stop() must be called to close the progress bar.
    - Parameters:
        progress_name: (string) The title or label of the progress bar
        Main title of the progress bar
        - Note!
            - Respects \n, \f, \r escape sequences but treats them all identically
            - Respects \, ', \"
            - Doesn't respect [,]
    - Returns:
        - (number) Unique handle to reference the progress indicator

- .stop(progress_handle)
    - Description:
        - Stops a specific progress indicator.
        - Note! - Since there is no way for a user to close a progress bar, this must be called.
    - Parameters:
        - progress_handle: (number) A numeric value (unique handle) that is used to reference a specific progress indicator

- .settext(progress_handle, text)
    - Description:
        - Set the text / sub-title of a progress indicator.
    - Parameters:
        - progress_handle: (number) A numeric value (unique handle) that is used to reference a specific progress indicator
        - text: (string) The text you want to set for the progress indicator

- .setrange(progress_handle, from, to)
    - Description:
        - Set the min / max range of a progress indicator.
        - Note!
            - A value less than the minimum value will appear to have no progress. 
            - A value greater than the maximum value will appear beyond the end of the progress bar.
    - Parameters:
        - progress_handle: (number) A numeric value (unique handle) that is used to reference a specific progress indicator
        - from: (number) A numeric value representing the starting value of the progress range
        - to: (number) A numeric value representing the ending value of the progress range.

- .set(progress_handle, value)
    - Description:
        - Sets the position / progress of the progress indicator.
    - Parameters:
        - progress_handle: (number) A numeric value (unique handle) that is used to reference a specific progress indicator
        - value: (number) The position the progress bar will be set to, this numeric value will fall within the predefined .setrange()
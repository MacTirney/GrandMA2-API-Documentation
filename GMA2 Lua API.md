# GrandMA2 API Documentation for Lua Scripting

**Modules**
- gma.
    - General GMA Lua functions.
- gma.canbus
    - Canbus related GMA Lua functions   .
- gma.gui
    - GUI Related GMA Lua functions.
- gma.gui.progress
    - Progressbar related GMA Lua functions.
- gma.network
    - Network related GMA Lua functions.
- gma.show
    - Functions pertaining to the live operation and interaction of the console.
- gma.show.getobj
    - Functions to interface with stored items on the GMA.
- gma.show.property
    - GMA LUA functions to get and adjust object properties.
- gma.timestamp
    - Hidden & undocumented timestamp functions.
        - Note! - These functions may be unstable and have odd side effects, I would not recommend using them in an active show file.
        - Note! - These functions should be tested in onPC.
- gma.user
    - Functions related to user defined variables.

**Module - gma.**
*Functions*
- .sleep(seconds)
    - Description:
        - Pauses / delays the execution of the script for a specified duration.
    - Parameters:
        - seconds: (number) The duration (in seconds) for which the script execution should be paused or delayed.

- .echo(var)
    - Description:
        - Echoes (prints) a variable to the GMA System Monitor.
    - Parameters:
        - var: (mixed) Variable to echo to the GMA system monitor.

- .feedback(var)
    - Description:
        - Prints / displays feedback to the user through the GMA Command Line.
    - Parameters:
        - var: (mixed) Variable to echo to the GMA command line.

- .build_date()
    - Description:
        - Returns the build date of the current GMA2 software.
    - Returns:
        - (string) Build Date of GMA2 software.

- .build_time()
    - Description:
        - Returns the build time of the current GMA2 software.
    - Returns:
        - (string) Build Time of GMA2 software.

- .git_version()
    - Description:
        - Returns Git branch identifier of the current GMA2 software.
    - Returns:
        - (string) Git branch identifier.

- .export(filename, export_data)
    - Description:
        - Exports the provided data (table object) to the specified file.
    - Parameters:
        - filename: (string) The name of the file you want to export data to.
        - export_data: (table) The data that you want to export.

- .export_csv(filename, export_data)
    - Description:
        - Exports the provided data (table object) as a CSV file.
    - Parameters:
        - filename: (string) The name of the file you want to export data to.
        - export_data: (table) The data that you want to export.

- .export_json(filename, export_data)
    - Description:
        - Exports the provided data (table object) as a JSON file.
    - Parameters:
        - filename: (string) The name of the file you want to export data to.
        - export_data: (table) The data that you want to export.

- .import(filename)
    - Description:
        - Imports data from a specific file (as a table object).
    - Parameters:
        - filename: (string) The name of the file you want to import data from.
    - Returns:
        - (table) Imported data (displayed as a table object).

- .cmd(command)
    - Description:
        - Sends a command directly to the GMA2 console.
        - It allows the user to execute console commands as if they were entered manually.
    - Parameters:
        - command: (string) Command that you want to execute.

- .timer(name, dt, max_count, cleanup)
    - Description:
        - A function that runs another function (determined by the 'name' parameter) every x seconds (determined by the 'dt' parameter) an optional x amount of times (determined by the 'max_count' parameter).
        - The .timer() function then runs an optional function which will wrap up the initial .timer() function after the max_count has been reached or it has been stopped manually.
    - Parameters:
        - name: (function) A function that returns a unique identifier for the timer.
        - dt: (number) The time interval (in seconds) at which the timer function should be called or repeated.
        - max_count: (number) (optional) The maximum number of times the timer should be called.
        - cleanup: (function) (optional) A function that is called after the timer has completed its execution (reached max_count or was stopped manually).

- .gettime()
    - Description:
        - Provides the user with the current timestamp (Linux system time).
    - Returns:
        (number) Gets the current timestamp (Linux system time) and returns it.

- .textinput(title, old_text)
    - Description:
        - Prompts the user for a text input, it opens a dialog box in the GMA2 user interface where the user can enter text.
    - Parameters:
        - title: (string) Title or prompt for the text input dialog box.
        - old_text: (string) (optional) Placeholder text that is displayed in the input field.
            - Note! - If the old_text parameter is provided it can help provide context to the .textinput() dialog box or it can provide a default value to the user.
    - Returns:
        (string) The text entered by the user in response to the prompt.

- .gethardwaretype()
    - Description:
        - Returns the host hardware type that is in use.
    - Returns:
        (string) 'GMA2' or 'GMA3' depending on the host hardware type.

**Module - gma.canbus**
*Functions*
- .hardkey(code, pressed, hold)
    - Description:
        - Emulates keypresses on GMA2 hardware.
        - Warning! - This is a low level function and might have unpredictable and harmful consequences on your console and/or showfile.
    - Parameters:
        - code: (number) Numeric code corresponding to a hardkey on the GMA2 console (e.g - 54 = Esc).
        - pressed: (boolean) Indicates whether the hardkey is pressed (true) or released (false).
        - hold: (boolean) Indicates whether the hardkey is being held down.
    - Returns:
        - (boolean) Success returns true except when a wrong parameter count is given.
    - Extra Info:
        - Look at [Keycodes]() Doc

- .encoder(encoder, steps, pressed)
    - Description:
        - Emulates the encoder wheels on GMA2 hardware.
            - Warning! - This is a low level function and might have unpredictable and harmful consequences on your console and/or showfile.
    - Parameters:
        - encoder: (number) The index of the specific encoder you want to interact with.
        - steps: (number) The number of steps to rotate the encoder.
            - Note! - These values are can be both positive and negative depending on the direction you want the encoder wheel to rotate.
        - pressed: (boolean) Indicates whether the encoder is pressed or not.
    - Returns:
        - (boolean) Indicates the success or failure of the operation.

- .wheel(steps)
    - Description:
        - Emulates the wheel on GMA2 hardware.
            - Warning! - This is a low level function and might have unpredictable and harmful consequences on your console and/or showfile.
    - Parameters:
        - steps: (number) The number of steps to rotate the wheel on the GMA2 hardware.
    - Returns:
        - (boolean) Indicates the success or failure of the operation.

- .ball(x_axis, y_axis)
    - Description:
        - Emulates the track-pad ball on GMA2 hardware.
            - Warning! - This is a low level function and might have unpredictable and harmful consequences on your console and/or showfile.
    - Parameters:
        - x_axis: (number) A numeric value (position) along the x-axis of a ball on the GMA2 hardware.
        - y_axis: (number) A numeric value (position) along the y-axis of a ball on the GMA2 hardware.
    - Returns:
        - (boolean) Indicates the success or failure of the operation.

**Module - gma.gui**
*Functions*
- .confirm(title, message)
    - Description:
        - Displays a confirmation dialog box, prompting the user to confirm or cancel an action.
            - Warning! - Calling this function on version 3.1.25 may cause your console to stop freeze, this function was removed in version 3.1.25.
    - Parameters:
        - title: (string) The title or heading of the confirmation dialog box.
        - message: (string) The message or content to be displayed in the confirmation dialog box.
    - Returns:
        - (boolean) Indicates true when clicking ok and nil otherwise.

- .msgbox(title, message)
    - Description:
        - Displays a message box for the user to see with a specified title and message.
        - This is generally used to display information or alert the user.
    - Parameters:
        - title: (string) The title or heading of the message box.
        - message: (string) The message or content to be displayed in the message box.
    - Returns:
        - (boolean) Indicates the user's response in a binary format.
            - Note! - "OK" for true & "Cancel" for false

**Module - gma.gui.progress**
*Functions*
- .start(progress_name)
    - Description:
        - Starts a progress indicator with a specified title or label.
            - Note! - There is no way for the user to close an open progress bar, therefore .stop() must be called to close the progress bar.
    - Parameters:
        - progress_name: (string) The title or label of the progress bar
        Main title of the progress bar.
            - Note!
                - Respects \n, \f, \r escape sequences but treats them all identically.
                - Respects \, ', \"
                - Doesn't respect [,]
    - Returns:
        - (number) Unique handle to reference the progress indicator.

- .stop(progress_handle)
    - Description:
        - Stops a specific progress indicator.
            - Note! - Since there is no way for a user to close a progress bar, this must be called.
    - Parameters:
        - progress_handle: (number) A numeric value (unique handle) that is used to reference a specific progress indicator.

- .settext(progress_handle, text)
    - Description:
        - Set the text / sub-title of a progress indicator.
    - Parameters:
        - progress_handle: (number) A numeric value (unique handle) that is used to reference a specific progress indicator.
        - text: (string) The text you want to set for the progress indicator.

- .setrange(progress_handle, from, to)
    - Description:
        - Set the min / max range of a progress indicator.
            - Note!
                - A value less than the minimum value will appear to have no progress. 
                - A value greater than the maximum value will appear beyond the end of the progress bar.
    - Parameters:
        - progress_handle: (number) A numeric value (unique handle) that is used to reference a specific progress indicator.
        - from: (number) A numeric value representing the starting value of the progress range.
        - to: (number) A numeric value representing the ending value of the progress range.

- .set(progress_handle, value)
    - Description:
        - Sets the position / progress of the progress indicator.
    - Parameters:
        - progress_handle: (number) A numeric value (unique handle) that is used to reference a specific progress indicator.
        - value: (number) The position the progress bar will be set to, this numeric value will fall within the predefined .setrange().

**Module - gma.network**
*Functions*
- .gethosttype()
    - Description:
        - Provides the user with the MA-Net type of the device in use.
    - Returns:
        - (string) Type of device in use.

- .gethostsubtype()
    - Description:
        - Provides the user with the MA-Net sub-type of the device in use.
    - Returns:
        - (string) Subtype of device in use.

- .getprimaryip()
    - Description:
        - Provides the user with the primary MA-Net IP address of the console.
    - Returns:
        - (string) Primary / MA-Net IP.

- .getsecondaryip()
    - Description:
        - Provides the user with the secondary / Artnet IP address of the console.
    - Returns:
        - (string) Secondary / Artnet IP.

- .getstatus()
    - Description:
        - Provides the user with the MA-Net session status.
    - Returns:
        - (string) MA-Net Session Status.

- .getsessionnumber()
    - Description:
        - Provides the user with the MA-Net session number.
    - Returns:
        - (number) MA-Net session number, returns 255 if not in a session.

- .getsessionname()
    - Description:
        - Provides the user with the MA-Net session name.
    - Returns:
        - (string) MA-Net Session Name.

- .getslot()
    - Description:
        - Provides the user with the slot location of a device in the GMA2 Network.
    - Returns:
        - (number) The slot index of a device withing the GMA2 Network.

- .gethostdata(ip, recycle)
    - Description:
        - Obtains information about a specific host in the GMA2 network.
    - Parameters:
        - ip: (string) The IP address of the host.
        - recycle: (table) (optional) Additional configuration settings related to recycling the data.
    - Returns:
        - (table) A table object containing data about the specified host.

- .getmanetslot(slot, recycle)
    - Description:
        - Obtains information about a specific MA-Net slot in the GMA2 network.
    - Parameters:
        - slot: (number) The slot index within the MA-Net network.
        - recycle: (optional table) Additional configuration settings related to recycling the data.
    - Returns:
        - (table) A table object containing data about the specified MA-Net slot.

- .getperformance(slot, recycle)
    - Description:
        - Obtains performance-related data about a specified MA-Net slot in the GMA2 network.
    - Parameters:
        - slot: (number) The slot index within the MA-Net network.
        - recycle: (optional table) Additional configuration settings related to recycling the data.
    - Returns:
        - (table) A table object containing performance-related data for the specified MA-Net slot in the GMA2 network.

**Module - gma.show**
*Functions*
- .getdmx(dmx_addr)
    - Description:
        - Obtains the current DMX data or state for the specified DMX address in the GMA2 network.
    - Parameters:
        - dmx_addr: (number) DMX address.
    - Returns:
        - (number) The current DMX data or the current state for the specified DMX address.

- .getdmx(recycle, dmx_addr, amount)
    - Description:
        - Gets the value of many DMX addresses.
        - Obtains data for the specified DMX address(es) in the GMA2 show file.
    - Parameters:
        - recycle: (table) Options or configuration settings related to recycling data.
        - dmx_addr: (number) A numerical value representing the DMX address.
        - amount: (number) (optional) A numerical value indicating the range of DMX addresses to retrieve .
    - Returns:
        - (table) DMX data for the specified DMX address(es).

- .getvar(varname)
    - Description:
        - Retrieves the value of a show variable with a specified name.
    - Parameters:
        - varname: (string) The name of the show variable for which you want to retrieve the value.
    - Returns:
        - (mixed) Value of the variable (varname).
    - Extra Info:
        - Look at [Default Variables]() Doc

- .setvar(varname, value)
    - Description:
        - Sets the value of a show variable with a specified name.
    - Parameters:
        - varname: (string) The name of the show variable for which you want to set the value.
        - value: (mixed) The value to assign to the show variable.

**Module - gma.show.getobj**
*Functions*
- .handle(name)
    - Description:
        - Obtains the handle of a show object with a specified name.
            - Note! - The handle is a unique identifier that represents the object in the GMA2 show file.
    - Parameters:
        - name: (string) The name of the show object to return a handle of.
    - Returns:
        - (number) Unique handle ID referencing the specified show object (name).

- .handle(handle)
    - Description:
        - Does the show object / handle exist in the GMA2 show file.
    - Parameters:
        - handle: (number) Unique handle ID referencing a specific show object obtained from the .handle(name) function.
    - Returns:
        - (boolean) True if the show object exists or not.

- .class(handle)
    - Description:
        - Obtains the class of the show object associated with a specified handle.
    - Parameters:
        - handle: (number) A numeric reference to a show object.
    - Returns:
        - (string) The class name of the show object associated with the specified handle.

- .index(handle)
    - Description:
        - Obtains the index of the show object associated with the specified handle.
    - Parameters:
        - handle: (number) A numeric reference to a show object.
    - Returns:
        - (number) Index value of the show object associated with the specified handle.

- .number(handle)
    - Description:
        - Obtains the identification number (command line number) associated with the show object specified by the handle.
    - Parameters:
        - handle: (number) A numeric reference to a show object.
    - Returns:
        - (number) An identification number (command line number) associated with the show object specified by the handle.

- .name(handle)
    - Description:
        - Obtains the name associated with the show object specified by the handle.
    - Parameters:
        - handle: (number) A numeric reference to a show object.
    - Returns:
        - (string) The name associated with the show object specified by the handle.

- .label(handle)
    - Description:
        - Obtains the label associated with the show object specified by the handle.
            - Note! - Returns nil if object has no label set.
    - Parameters:
        - handle: (number) A numeric reference to a show object.
    - Returns:
        - (string) The label associated with the show object specified by the handle.

- .amount(handle)
    - Description:
        - Obtains the number of children owned by the show object associated with the specified handle.
    - Parameters:
        - handle: (number) A numeric reference to a show object.
    - Returns:
        - (number) The number of children owned by the show object associated with the specified handle.

- .child(handle, index)
    - Description:
        - Obtains the reference number (handle) of the child object associated with a specific index and the parent handle.
            - Note! - Returns the handle of the child with the given index, of the GMA object with the given handle (first child = 0).
    - Parameters:
        - handle: (number) A numeric reference to the parent show object.
        - index: (number) Index of the child object (handle) within the parent you want to retrieve.
    - Returns:
        - (number) A reference number (handle) of the child object associated with the specified index and the parent handle.

- .parent(child_handle)
    - Description:
        - Obtains the handle of the parent object associated with the specified child objects handle.
            - Note! - Returns the handle of the parent of the object with the given handle.
    - Parameters:
        - child_handle: (number) A numeric reference to a child show objects handle.
    - Returns:
        - (number) A reference number (handle) of the parent object associated with the specified child_handle.

- .verify(handle)
    - Description:
        - Checks whether the specified handle represents a valid show object in the show file.
    - Parameters:
        - handle: (number) A numeric reference to a show object.
    - Returns:
        - (bool) Indicates whether the specified handle represents an existing show object in the GMA2 system.

- .compare(handle1, handle2)
    - Description:
        - Compares two handles and checks to see if they correspond to the same show object.
            - Note! - Returns true if the objects with handle1 and handle2 are equal.
    - Parameters:
        - handle1: (number) A numeric reference to a show object.
        - handle2: (number) A numeric reference to a show object.
    - Returns:
        - (bool) Indicates whether the two specified handles correspond to the same show object, true if object1 = object2, false otherwise.

**Module - gma.show.property**
*Functions*
- .amount(handle)
    - Description:
        - Retrieves the amount of a specific properties associated with the specified show object.
    - Parameters:
        - handle: (number) A numeric reference to a show object.
    - Returns:
        - (number) Number of properties associated with the specified show object.

- .name(handle, index)
    - Description:
        - Retrieves the name of the specified property at a given index (by ID) associated with the show object.
    - Parameters:
        - handle: (number) A numeric reference to a show object.
        - index: (number) A numeric identifier specifying which property to retrieve the name for.
    - Returns:
        - (string) The name of the specified property associated with the show object.

- .get(handle, index)
    - Description:
        - Retrieves the value of the specified property at a given index (by ID) associated with the show object.
    - Parameters:
        - handle: (number) A numeric reference to a show object.
        - index: (number) A numeric identifier specifying which property to retrieve the value for.
    - Returns:
        - (string) The value of the specified property associated with the show object.

- .get(handle, property_value)
    - Description:
        - Retrieves the value of the specified property associated with the show object based on the provided 'property_value'.
    - Parameters:
        - handle: (number) A numeric reference to a show object.
        - property_name: (string) A value associated with a particular property of the show object.
    - Returns:
        - (string) The value of a specific property associated with the show object identified by the 'handle' and corresponding to the provided 'property_value'.

- .set(handle, index, value)
    - Description:
        - Sets the value of the specified property at a given index (by ID) associated with the show object.
    - Parameters:
        - handle: (number) A numeric reference to a show object.
        - index: (number) A numeric identifier specifying which property to set the value for.
        - value: (string) The new value to set for the specified property.
    - Returns:
        - (bool) Indicating the success or failure of setting the property value.

- .set(handle, property_name, value)
    - Description:
        - Sets the value of the specified property given index (by name) associated with the show object.
    - Parameters:
        - handle: (number) A numeric reference to a show object.
        - property_name: (string) The name of the property to set the value for.
        - value: (string) The new value to set for the specified property.
    - Returns:
        - (bool) Indicates the success or failure of setting the property value.
    
**Module - gma.timestamp**
*Functions*
- Warning - These functions may be unstable, explore these functions only in onPC not on a GMA2 showfile.

- .name(var)
    - Description:
        - Retrieves a timestamp associated with the specified variable in the GMA2 system.
        - Always returns "INITSEQU" when var is 0.
        - Always returns "CMDLINE0DO" when var is 1.
        - Vars above 1 and below 0, as well as floating numbers, return "None".
        - Strings return nil.
    - Parameters:
        - var: (number) A numeric identifier related to a specific timestamp operation.
            - Note! - 0 appears to output "INITSEQU" and 1 appears to output "CMDLINE0DO".
    - Returns:
        - (string) A formatted timestamp associated with the specified variable.

- .time(var)
    - Description:
        - Retrieves the time component of a timestamp associated with the specified variable in the GMA2 system.
    - Parameters:
        - var: (number) A numeric identifier related to a specific timestamp operation.
            - Note! - Integer values return "0.0", All other values return nil.
    - Returns:
        - (float) A time component of a timestamp associated with the specified variable.
            - Note! - A time component typically includes information about the hours, minutes, seconds, and possibly milliseconds when an event occurred.

- .amount()
    - Description:
        - Retrieves the total count of timestamps in the GMA2 system.
    - Returns:
        - (number) Returns the count of timestamps (returns a count of .name() items).

**Module - gma.user**
*Functions*
- .getvar(varname)
    - Description:
        - Retrieves the value associated with the specified user-defined variable.
    - Parameters:
        - varname: (string) The name of a user-defined variable.
    - Returns:
        - (mixed) The value associated with the specified user-defined variable
        Value of var.

- .setvar(varname, value)
    - Description:
        - Sets the value & name for a user variable in the GMA2 system.
    - Parameters:
        - varname: (string) The name to set the user variable to.
        - value: (mixed) The value to set the user variable to.

- .getcmddest()
    - Description:
        - Retrieves the current command destination in the GMA2 system.
    - Returns:
        - (number) A numeric identifier representing the current command destination (command destination number).
            - Note! - The command destination refers to the target location where commands are sent, such as a specific executor, group, or other element in the GMA2 system.

- .getselectedexec()
    - Description:
        - Retrieves the currently selected executor in the GMA2 system.
    - Returns:
        - (number) A numeric identifier representing the currently selected executor (executor number).
# Module - gma.show
### Functions

.getdmx(dmx_addr)
- Description:
    - Obtains the current DMX data or state for the specified DMX address in the GMA2 network.
- Parameters:
    - dmx_addr: (number) DMX address.
- Returns:
    - (number) The current DMX data or the current state for the specified DMX address.

.getdmx(recycle, dmx_addr, amount)
- Description:
    - Gets the value of many DMX addresses.
    - Obtains data for the specified DMX address(es) in the GMA2 show file.
- Parameters:
    - recycle: (table) Options or configuration settings related to recycling data.
    - dmx_addr: (number) A numerical value representing the DMX address.
    - amount: (number) (optional) A numerical value indicating the range of DMX addresses to retrieve.
- Returns:
    - (table) DMX data for the specified DMX address(es).

.getvar(varname)
- Description:
    - Retrieves the value of a show variable with a specified name.
- Parameters:
    - varname: (string) The name of the show variable for which you want to retrieve the value.
- Returns:
    - (mixed) Value of the variable (varname).
- Extra Info:
    - Look at [Default Variables]() Doc.

.setvar(varname, value)
- Description:
    - Sets the value of a show variable with a specified name.
- Parameters:
    - varname: (string) The name of the show variable for which you want to set the value.
    - value: (mixed) The value to assign to the show variable.
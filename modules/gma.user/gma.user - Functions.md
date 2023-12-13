# Module - gma.user
### Functions

.getvar(varname)
- Description:
    - Retrieves the value associated with the specified user-defined variable.
- Parameters:
    - varname: (string) The name of a user-defined variable.
- Returns:
    - (mixed) The value associated with the specified user-defined variable.

.setvar(varname, value)
- Description:
    - Sets the value & name for a user variable in the GMA2 system.
- Parameters:
    - varname: (string) The name to set the user variable to.
    - value: (mixed) The value to set the user variable to.

.getcmddest()
- Description:
    - Retrieves the current command destination in the GMA2 system.
- Returns:
    - (number) A numeric identifier representing the current command destination (command destination number).
        - Note! - The command destination refers to the target location where commands are sent, such as a specific executor, group, or other element in the GMA2 system.

.getselectedexec()
- Description:
    - Retrieves the currently selected executor in the GMA2 system.
- Returns:
    - (number) A numeric identifier representing the currently selected executor (executor number).
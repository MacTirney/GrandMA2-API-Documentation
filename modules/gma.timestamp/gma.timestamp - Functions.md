# Module - gma.timestamp
### Functions
**Warning**
- These functions may be unstable, explore these functions only in onPC not on a GMA2 showfile.

.name(var)
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

.time(var)
- Description:
    - Retrieves the time component of a timestamp associated with the specified variable in the GMA2 system.
- Parameters:
    - var: (number) A numeric identifier related to a specific timestamp operation.
        - Note! - Integer values return "0.0", All other values return nil.
- Returns:
    - (float) A time component of a timestamp associated with the specified variable.
        - Note! - A time component typically includes information about the hours, minutes, seconds, and possibly milliseconds when an event occurred.

.amount()
- Description:
    - Retrieves the total count of timestamps in the GMA2 system.
- Returns:
    - (number) Returns the count of timestamps (returns a count of .name() items).
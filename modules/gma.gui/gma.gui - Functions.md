# Module - gma.gui
### Functions

.confirm(title, message)
- Description:
    - Displays a confirmation dialog box, prompting the user to confirm or cancel an action.
        - Warning! - Calling this function on version 3.1.25 may hang your console, this function was removed in version 3.1.25.
- Parameters:
    - title: (string) The title or heading of the confirmation dialog box.
    - message: (string) The message or content to be displayed in the confirmation dialog box.
- Returns:
    - (boolean) Indicates true when clicking ok and nil otherwise.

.msgbox(title, message)
- Description:
    - Displays a message box for the user to see with a specified title and message.
    - This is generally used to display information or alert the user.
- Parameters:
    - title: (string) The title or heading of the message box.
    - message: (string) The message or content to be displayed in the message box.
- Returns:
    - (boolean) Indicates the user's response in a binary format.
        - Note! - "OK" for true & "Cancel" for false.
# Module - gma.gui.progress
### Functions

.start(progress_name)
- Description:
    - Starts a progress indicator with a specified title or label.
        - Note! - There is no way for the user to close an open progress bar, therefore .stop() must be called to close the progress bar.
- Parameters:
    - progress_name: (string) The title or label of the progress bar.
        - Note!
            - Respects \n, \f, \r escape sequences but treats them all identically.
            - Respects \, ', \".
            - Doesn't respect [,].
- Returns:
    - (number) Unique handle to reference the progress indicator.

.stop(progress_handle)
- Description:
    - Stops a specific progress indicator.
        - Note! - Since there is no way for a user to close a progress bar, this must be called.
- Parameters:
    - progress_handle: (number) A numeric value (unique handle) that is used to reference a specific progress indicator.

.settext(progress_handle, text)
- Description:
    - Set the text / sub-title of a progress indicator.
- Parameters:
    - progress_handle: (number) A numeric value (unique handle) that is used to reference a specific progress indicator.
    - text: (string) The text you want to set for the progress indicator.

.setrange(progress_handle, from, to)
- Description:
    - Set the min / max range of a progress indicator.
        - Note!
            - A value less than the minimum value will appear to have no progress. 
            - A value greater than the maximum value will appear beyond the end of the progress bar.
- Parameters:
    - progress_handle: (number) A numeric value (unique handle) that is used to reference a specific progress indicator.
    - from: (number) A numeric value representing the starting value of the progress range.
    - to: (number) A numeric value representing the ending value of the progress range.

.set(progress_handle, value)
- Description:
    - Sets the position / progress of the progress indicator.
- Parameters:
    - progress_handle: (number) A numeric value (unique handle) that is used to reference a specific progress indicator.
    - value: (number) The position the progress bar will be set to, this numeric value will fall within the predefined .setrange().
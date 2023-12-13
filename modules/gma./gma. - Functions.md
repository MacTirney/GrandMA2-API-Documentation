# Module - gma.
### Functions

.sleep(seconds)
- Description:
    - Pauses / delays the execution of the script for a specified duration.
- Parameters:
    - seconds: (number) The duration (in seconds) for which the script execution should be paused or delayed.

.echo(var)
- Description:
    - Echoes (prints) a variable to the GMA System Monitor.
- Parameters:
    - var: (mixed) Variable to echo to the GMA system monitor.

.feedback(var)
- Description:
    - Prints / displays feedback to the user through the GMA Command Line.
- Parameters:
    - var: (mixed) Variable to echo to the GMA command line.

.build_date()
- Description:
    - Returns the build date of the current GMA2 software.
- Returns:
    - (string) Build Date of GMA2 software.

.build_time()
- Description:
    - Returns the build time of the current GMA2 software.
- Returns:
    - (string) Build Time of GMA2 software.

.git_version()
- Description:
    - Returns Git branch identifier of the current GMA2 software.
- Returns:
    - (string) Git branch identifier.

.export(filename, export_data)
- Description:
    - Exports the provided data (table object) to the specified file.
- Parameters:
    - filename: (string) The name of the file you want to export data to.
    - export_data: (table) The data that you want to export.

.export_csv(filename, export_data)
- Description:
    - Exports the provided data (table object) as a CSV file.
- Parameters:
    - filename: (string) The name of the file you want to export data to.
    - export_data: (table) The data that you want to export.

.export_json(filename, export_data)
- Description:
    - Exports the provided data (table object) as a JSON file.
- Parameters:
    - filename: (string) The name of the file you want to export data to.
    - export_data: (table) The data that you want to export.

.import(filename)
- Description:
    - Imports data from a specific file (as a table object).
        - Import a file as a table.
- Parameters:
    - filename: (string) The name of the file you want to import data from.
- Returns:
    - (table) Imported data (displayed as a table object).

.cmd(command)
- Description:
    - Sends a command directly to the GMA2 console.
    - It allows the user to execute console commands as if they were entered manually.
- Parameters:
    - command: (string) Command that you want to execute.

.timer(name, dt, max_count, cleanup)
- Description:
    - A function that runs another function (determined by the 'name' parameter) every x seconds (determined by the 'dt' parameter) an optional x amount of times (determined by the 'max_count' parameter).
    - The .timer() function then runs an optional function which will wrap up the initial .timer() function after the max_count has been reached or it has been stopped manually.
- Parameters:
    - name: (function) A function that returns a unique identifier for the timer.
    - dt: (number) The time interval (in seconds) at which the timer function should be called or repeated.
    - max_count: (number) (optional) The maximum number of times the timer should be called.
    - cleanup: (function) (optional) A function that is called after the timer has completed its execution (reached max_count or was stopped manually).

.gettime()
- Description:
    - Provides the user with the current timestamp (Linux system time).
- Returns:
    (number) Gets the current timestamp (Linux system time) and returns it.

.textinput(title, old_text)
- Description:
    - Prompts the user for a text input, it opens a dialog box in the GMA2 user interface where the user can enter text.
- Parameters:
    - title: (string) Title or prompt for the text input dialog box.
    - old_text: (string) (optional) Placeholder text that is displayed in the input field.
        - Note! - If the old_text parameter is provided it can help provide context to the .textinput() dialog box or it can provide a default value to the user.
- Returns:
    - (string) The text entered by the user in response to the prompt.

.gethardwaretype()
- Description:
    - Returns the host hardware type that is in use.
- Returns:
    - (string) 'GMA2' or 'GMA3' depending on the host hardware type.
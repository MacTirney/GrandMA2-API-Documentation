-- gma. Module - GMA2 Lua Functions
-- Module: gma.


-- .sleep(seconds)
-- param - seconds: Number
-- usage: gma.sleep(5)
function gma.sleep(seconds) end

-- .echo(var)
-- param - var: Mixed
-- usage: gma.echo("Hello World")
function gma.echo(var) end

-- .feedback(var)
-- param - var: Mixed
-- usage: gma.feedback(1)
function gma.feedback(var) end

-- .build_date()
-- returns: String
-- usgae: gma.build_date()
function gma.build_date() end

-- .build_time()
-- returns: String
-- usage: gma.build_time()
function gma.build_time() end

-- .git_version()
-- returns: String
-- usage: gma.git_version()
function gma.git_version() end

-- .export(filename, export_data)
-- param - filename: String
-- param - export_data: Table
-- usage: 
    -- local data_to_export = {name = "John", age = 30, city = "Example City"}
    -- gma.export('exported_data.txt', data_to_export)
function gma.export(filename, export_data) end

-- .export_csv(filename, export_data)
-- param - filename: String
-- param - export_data: Table
-- usage: 
    -- local data_to_export = {name = "John", age = 30, city = "Example City"}
    -- gma.export_csv('exported_data.csv', data_to_export)
function gma.export_csv(filename, export_data) end

-- .export_json(filename, export_data)
-- param - filename: String
-- param - export_data: Table
-- usage: 
    -- local data_to_export = {name = "John", age = 30, city = "Example City"}
    -- gma.export_json('exported_data.json', data_to_export)
function gma.export_json(filename, export_data) end

-- .import(filename)
-- param - filename: String
-- returns: Table
-- usage: gma.import(imported_data.txt)
function gma.import(filename) end

-- .cmd(command)
-- param - command: String
function gma.cmd(command) end

-- .timer(name, dt, max_count, cleanup)
-- param - name: Function
-- param - dt: Number
-- param - max_count: Number
-- param - cleanup: Function
-- usage: 
    -- printMessage & cleanupFunction are functions
    -- gma.timer(printMessage, 1000, 5, cleanupFunction)
function gma.timer(name, dt, max_count, cleanup) end

-- .gettime()
-- returns: Number
-- usage: gma.gettime()
function gma.gettime() end

-- .textinput(title, old_text)
-- param - title: String
-- param (optional) - old_text: String
-- returns: String
-- usage: gma.textinput('Enter a number', '8')
function gma.textinput(title, old_text) end

-- .gethardwaretype()
-- returns: String
-- usage: gma.gethardwaretype()
function gma.gethardwaretype() end
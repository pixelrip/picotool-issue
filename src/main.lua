
--[[ 
In this example the guy module requires the logging 
utility. But unless the logging utility is ALSO required
in main.lua (this file) the build crashes.

Try uncommenting the line below and see.
]]--


--local log = require("utils/log")
local Guy = require("entities/guy")

function _init()
    music(0)
    guy_instance = Guy.new(56,58)
end

function _update()
    -- No update logic required
end

function _draw()
    cls(1)
    guy_instance:draw()
    print("hello, world!", 38, 76, 7)
end

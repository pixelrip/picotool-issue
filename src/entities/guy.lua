local log = require("utils/log")

-- Just a simple entity
local Guy = {}
Guy.__index = Guy

function Guy.new(x,y)
    log.print("Create instance of Guy")
    local self = setmetatable({}, Guy)

    self.x = x or 64
    self.y = y or 64
    self.sx = 8
    self.sy = 0
    self.w = 17
    self.h = 13

    return self
end

function Guy:update()
    -- nothing to update in this demo
end

function Guy:draw()
    palt(0,false)
    palt(11,true)
    sspr(self.sx,self.sy,self.w,self.h,self.x,self.y)
    palt()
end

return Guy


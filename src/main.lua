local log = require("utils/log")

-- Main entry point for the game
function _init()
    log.print("=== Game Started ===")

    -- Play music pattern from assets/music.p8
    music(0)
end

function _update()
    -- No update logic required
end

function _draw()
    -- Clear the screen
    cls(1)

    -- Draw the sprite from assets/sprites.p8
    palt(0,false)
    palt(11,true)
    sspr(8,0,17,13,56,58)
    palt()

    print("hello, world!", 38, 76, 7)
end

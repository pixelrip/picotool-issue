# Logging

Simple debug logging for PICO-8 games.

## Quick Reference

```lua
log(message)  -- Write message to log file
```

## Usage

```lua
-- Basic logging
log("Game started")
log("Player health: " .. player.health)
log("Position: " .. player.x .. "," .. player.y)

-- State transitions
function GameState:init()
    log("Entering game state")
end

-- Debug values
function Player:update()
    if DEBUG_MODE then
        log("Player speed: " .. self.speed)
    end
end
```

## Viewing Logs

**On macOS/Linux:**
```bash
tail -f log.p8l
```

**On Windows:**
```cmd
type log.p8l
```

**In PICO-8 console:**
```
> export log
```
Creates `log.txt` in current directory.

## Tips

- Log state changes and important events
- Include context in messages
- Clear logs between sessions if needed

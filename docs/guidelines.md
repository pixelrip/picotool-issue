# Development Guidelines

## PICO-8 Optimization

### Token Efficiency
- **Flat constants**: `PLAYER_SPEED = 2` not `PLAYER.SPEED = 2`
- **Combined declarations**: `local x,y = 0,0`
- **Methods in constructors**: Avoid prototype pollution

### Performance
- **Reverse iteration**: `for i=#list,1,-1 do` (safe removal)
- **Frame counters**: Use `frame += 1` not `time()`
- **Local variables**: Cache frequently accessed data
- **Integer math**: Prefer over floating point

### Memory
- **Minimize object creation** in update loops
- **Reuse tables** when possible
- **Clear unused references**: `obj = nil`

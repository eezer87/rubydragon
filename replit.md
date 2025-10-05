# DragonBall Saga MUD Server

## Overview
This is a DragonBall Saga Codebase (DBSC) - a Multi-User Dungeon (MUD) server written in C. It's a text-based multiplayer role-playing game based on the DragonBall universe, derived from the SMAUG/MERC/DIKU codebase family.

## Project Status
- **Current State**: Successfully compiled and running
- **Port**: 5000 (configurable in start_mud.sh)
- **Last Updated**: October 5, 2025

## Project Structure

### Core Directories
- `src/` - C source code and Makefile
- `area/` - Game world area files (.are format)
- `system/` - System configuration and data files
- `player/` - Player character save files (organized a-z)
- `gods/` - Administrator/immortal player files
- `log/` - Server log files
- `crash/` - Crash dumps and debug information
- `corpses/` - Player corpse save files
- `clans/`, `councils/`, `deity/`, `houses/` - Game feature data
- `classes/`, `races/` - Character class and race definitions
- `planets/`, `space/` - Space/planet system data
- `imc/` - Inter-MUD Communication (IMC2) configuration

### Key Files
- `start_mud.sh` - Main startup script for the MUD server
- `src/dbsaga` - Compiled MUD server binary
- `src/Makefile` - Build configuration (modified for Replit environment)
- `DBSC_LICENSE.README` - License and credits information

## How to Use

### Connecting to the MUD
Players connect to the MUD using a telnet client or MUD client on port 5000:
```
telnet <replit-host> 5000
```

### Server Management
- The server runs automatically via the "MUD Server" workflow
- To restart: Use the Replit workflows panel
- Logs are available in the workflow console output

### Building from Source
The server is already compiled, but to rebuild:
```bash
cd src
make clean
make
```

## Technical Details

### Dependencies
- **System Packages**: 
  - zlib (compression library)
  - libxcrypt (encryption library)
  - pkg-config (build tool)

### Build Modifications for Replit
The original Makefile was updated to work in the Replit/NixOS environment:
1. Added pkg-config for zlib and libxcrypt header/library paths
2. Added `-fcommon` flag for GCC 10+ compatibility (handles legacy global variable definitions)
3. Fixed tab vs. space issues in Makefile recipes
4. Fixed `socklen_t` type compatibility issue in `src/comm.c`

### Port Configuration
- Default port: 5000 (required for Replit)
- Can be changed in `start_mud.sh` by modifying the PORT variable
- Original startup script (`src/startup`) used csh and port 9000

## Features
- DragonBall-themed MUD with custom areas and gameplay
- Player classes and races based on DragonBall universe
- Space travel and planetary system
- Clan/organization system
- Housing system
- IMC2 (Inter-MUD Communication) support
- Player vs Player (PvP) and roleplaying features

## Known Issues
- Minor BUG messages on startup (non-fatal):
  - IMCMailVnum configuration mismatch
  - Missing alliance list file
  - Missing accessory files
- These do not affect core MUD functionality

## Credits
See `DBSC_LICENSE.README` for full credits and license information.

Key contributors to DragonBall Saga:
- Goku (Warren)
- Guava (Steven)
- Saiyr
- Ubuu
- And many others listed in WIZLIST

Based on SMAUG/MERC/DIKU codebases.

## Architecture Notes
- Language: C
- Build System: GNU Make
- Runtime: Standalone server process
- Protocol: Telnet-based text protocol
- Data Format: Custom text-based area and object files

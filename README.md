# DragonBall Saga MUD

Welcome to the DragonBall Saga MUD! This is a text-based multiplayer role-playing game set in the DragonBall universe.

## What is a MUD?

A MUD (Multi-User Dungeon) is a text-based multiplayer online game where players explore a virtual world, interact with other players, battle monsters, complete quests, and develop their characters.

## Getting Started

### How to Connect

The MUD server is running on port **5000**. To play, you'll need a telnet client or MUD client:

**Using Telnet (Simple):**
```bash
telnet <your-replit-url> 5000
```

**Recommended MUD Clients:**
- **Windows**: MUSHclient, zMUD, or Mudlet
- **Mac**: Mudlet or Atlantis
- **Linux**: TinTin++ or Mudlet
- **Web**: Use a web-based telnet client

### Creating a Character

1. Connect to the MUD
2. Choose to create a new character
3. Select your race (Saiyan, Human, Namek, Android, etc.)
4. Choose your starting class
5. Enter the DragonBall universe!

## Features

### Gameplay
- **Explore** the DragonBall universe with custom areas
- **Train** to increase your power level
- **Transform** into Super Saiyan and other powerful forms
- **Space Travel** between planets
- **PvP Combat** - test your skills against other players
- **Clans & Organizations** - join forces with other players
- **Housing System** - own your own home
- **Quests** - complete missions for rewards

### Game World
The MUD includes areas based on:
- Earth locations (Capsule Corp, Satan City, etc.)
- Planet Namek
- Other World / Afterlife
- Space stations and ships
- And many more!

## Server Status

The server is running and ready to accept connections!

To check if the server is running, look at the "MUD Server" workflow in the Replit interface.

## For Administrators

### Managing the Server

The server runs automatically. To restart it:
1. Go to the Workflows panel in Replit
2. Find "MUD Server"
3. Click restart

### Building

To recompile the server:
```bash
cd src
make clean
make
```

### Configuration Files

- `start_mud.sh` - Server startup script
- `area/*.are` - Game world files
- `system/` - Configuration files

## License & Credits

This is the DragonBall Saga Codebase (DBSC), derived from SMAUG/MERC/DIKU.

See `DBSC_LICENSE.README` for full license and credits.

## Troubleshooting

### Can't connect to the server
- Verify the "MUD Server" workflow is running
- Check that you're using the correct port (5000)
- Make sure your firewall allows the connection

### Server issues
- Check the workflow logs in Replit
- Logs are also available in the `log/` directory

## Support

For issues or questions about the codebase, refer to `DBSC_LICENSE.README` for contact information.

Enjoy your adventures in the DragonBall Saga!

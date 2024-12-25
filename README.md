# antiruins-docker-starter-kit
Docker files + folder structure for one-click (ish) setup of the AntiRuins dreamcast engine


### Structure
This starter kit is designed to be 1:1 with folder:project.
Placing this kit under a folder `/project` is equivalent to creating a solution in VisualStudio, CodeBlocks, etc.

/project
    - Readme.md
    - /src 
    - /release
    - /engine
    - /_emulator
    - run.bat
    - run.sh
    - config.lua

#### src
This folder contains all source code and assets for the project.  In this folder, `game.lua` is the entry point to the project.  Treat this as `main()`

Additional folder structure may be used inside of `src/`, e.g. `image/` `/sfx` `/music`, etc.

This folder should be used as the root directory for code repositories.

#### release
Output folder for build artifacts.  Directly inside, the built `.cdi`file and `Dreamcast` folder will be presently after a build.

Use an emulator to run the `.cdi` file.

#### config.lua
This is a necessary file that configures how AntiRuins loads your game.  See the file and comments for more information on configuration values.

### run.bat/run.sh
Convienience scripts to rebuild, then run the game

### Commands
To build and run a project, simply run `run.bat` or `run.sh`, depending on your terminal (both are intended for windows, however)

If issues occurr during build, rebuild the image and redirect to a log file to investigate.

```
docker compose build --no-cache --progress=plain > build.log
```
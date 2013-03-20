Getting Started
===============

Installation
------------

### Node.js

ZappaJS uses Node.js; you will need to download and install Node from http://nodejs.org/

Alternatively your Linux distribution might contain Node.js. Make sure it is a recent version (0.8.x or above) to avoid running into older bugs.

Recent distributions of Node.js should contain the `npm` package manager. You will use it to install ZappaJS.

### Coffee-Script

Although ZappaJS can be used as a regular Node.js module, the examples in this book will be written using [CoffeeScript](http://jashkenas.github.com/coffee-script/), "a little language that compiles into JavaScript".

You might install Coffee-Script globally using `npm`:

    sudo npm -g install coffee-script

The `coffee` executable will then be made available in your path by Node.js.

You might also (this contributor's preferred method) install Coffee-Script locally in your `$HOME` directory:

    cd && npm install coffee-script

and then add the proper location to your path (this example for Bash or similar shells):

    export PATH="$HOME/node_modules/.bin:$PATH"

Adding this line to your `.profile` login script will ensure that your local copy of `coffee` (and other executables you install locally the same way) will always be available to you for development.

#### Coffee-Script scripts

On Unix-compatible operating systems (Linux, MacOSX, ..) you can take advantage of the so-called 'she-bang' feature to turn Coffee-Script files (including your ZappaJS scripts) into programs.
To this end, add the following line at the top of your `.coffee` file:

    #!/usr/bin/env coffee
    
This line assumes that the program `/usr/bin/env` is available on your platform, and that the `coffee` executable is available in the `$PATH` variable at the time of execution. This should be the case if you followed the instructions in the previous section.
To turn you `.coffee` script into a program, finally do:

    chmod +x file.coffee
    
Obviously you'll need to replace `file.coffee` with the actual name of your program file.

### ZappaJS

Install ZappaJS with

    npm install zappajs

If you are writing an application or module that depends on ZappaJS, add

    "zappajs": "*"

to your `package.json` description file. Consult `npm help json` for more information on the format of the `package.json` file.

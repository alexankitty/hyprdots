<img width="2557" height="1440" alt="image" src="https://github.com/user-attachments/assets/78964158-16fa-4e94-b55f-a229457cb1a2" />

# Alexankitty's hyprland dot files
Vaxry gave me entirely too much power over what the compositor may do, and so I have taken to abusing it because I have problems.

# Installation
```sh
git clone --recurse-submodules https://github.com/alexankitty/hyprdots
```
My dots use a separate [library project](https://github.com/alexankitty/hyprlibs), so be sure to clone and recurse submodules, else it won't work.

Copy out the configs you want.

## Dependencies
### Hotkeys
* satty
* grimblast
* kitty (change it for whatever terminal you prefer)
* walker (change it for whatever runner you prefer)
* dolphin (change it for whatever file manager you prefer)
* wlogout
* hyprpicker
* wireplumber
* playerctl
* brightnessctl

 ### Compositor / Shell / Styling
* wl-clipboard
* gammastep
* wayle
* fcitx5 (requires additional config, I excluded my stuff because I don't want to pigeonhole the user into my IME of choice)
* matugen
* awww

### Qt
* qt5ct-kde / qt6ct-kde (Needs to be the KDE version as my matugen is setup to create a kcolorscheme which also fixes theming for KDE apps like dolphin)
* breeze
* breeze-icons

### GTK
* breeze-gtk-git

### OCR
* tesseract
* imagemagick

### Hyprland Plugins
* hypr-darkwindow
* pyprland
* hyprgrass (if you have touchscreen)

## Features
* Loads everything in the config folder automagically.

* High granularity so it's easy to find what piece of config is handling what.

* app-mgmt library for handling uwsm, delays, runonce, and replace.

* Command builder to make it easier to expand the functionality of the command manager.

* Dispatch wrapper for compatibility with hl.bind and hl.dispatch such that they'll receive the requisite function as a closure that can be fully ran.

* Dynamically assigns 5 workspaces per monitor. There are two wolves in me, one that wants chaos, and another that wants order.

* My never-ending insanity, pls send help.
 
* Some customizations are deliberately excluded and is left as an exercise for the user to implement

* Uses patterns to stop loading configs related to plugins if they're not currently loaded in hyprland.

* Assumes primary monitor is at 0,0

* Utilizes auto-left, auto-right for my monitor setup (adjust yours accordingly)

## Additional Customizations
* I use zsh with starship using a customized version of the catppuccin theme.
  
* For Zed I used a Catppuccin Blur theme

* The hypr-darkwindow ruleset includes a table of classes to disable the chromakey on. Additionally, the chromakey may be toggled with SUPER+SHIFT+O

* For browser transparency, I use waterfox with [natsumi-browser](https://github.com/greeeen-dev/natsumi-browser) and some additional tweaks from my [transparency-fox](https://github.com/alexankitty/transparency-fox/) repo.

## Contribution
If I screwed up somewhere, please either A. slap me upside the head, or B. fix it and put in a pull request.

Thank you and have a nice day. Or not. I'm not gonnna tell you what to do.

## Why are you like this?
I might clinically insane, iunno.

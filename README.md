# Development Environment

These are the tools and configs I'm currently using. Follow the steps in each section
to recreate the environment.

### Outstanding bugs / issues:
 - use icons for errors instead of E / H / I etc.
 - running one test (nvim-test) shows coverage for all files instead of just the changed files -> filterout the rest of the files? (jest config?)
 - project specific scripts
 - finish tool config instructions / links
 - update hotkeys / make cheatsheet

## Tools

Clone this repo to a dev dir
```
mkdir ~/Dev && git clone https://github.com/RCopeland/dev-env
```

### Homebrew

Run the following command to install homebrew on macOS
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
Then run
```
brew doctor
```
and fix any issues.

### iterm2

```
brew install iterm2
```
Settings > Profiles > Import Profiles from JSON > Select config:
```
~/Dev/dev-env/config/iterm2/iterm2-profiles.json
```
Set copexrob as the default.

### git
Installed by default with macOS
```
cp ./config/git/.gitconfig ~/.gitconfig
```

### amethyst

```
brew install amethyst
```

### zsh

Installed by default with macOS

### nvim

Install, then symlink the config
```
brew install nvim
ln -s ~/Dev/dev-env/config/nvim ~/.config
```

### browsers 

```
brew install google-chrome
brew install firefox
```
Sign in to sync bookmarks and extensions

### Misc 
- globally installed packages
  - 1password (1Password CLI)
  - macos-trash
  - ggrep
  - node

## Hotkeys

1. Quick Context Switching between Web Browser and Terminal 

  - switch between fullscreened windows (cmd + h)
  - switch to split view and back (ctrl + option + shift + space)

2. Editing Code or Text
  
    supported languages: [javascript / typescript, html, css / scss, markdown, json, text, python, bash, lua]

  - vim bindings
  - syntax highlighting (auto)
  - format on save (auto)
  - lint code (auto)
  - code actions (<leader>ca)
    - import assistance
  - go to definition (<leader>D)
  - last file (<leader>,f)

3. Writing Tests
  - execute the test nearest the cursor (<leader>r)

4. Viewing a Project Directory
  - File and folder structure (:NERDTree)

5. Reviewing Changes and Committing
  - git difftool

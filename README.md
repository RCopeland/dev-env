# Development Environment

These are the tools and configs I'm currently using. Follow the steps in each section
to recreate the environment.

### Outstanding bugs / issues:
 - nvim-cmp purpose? it has missing config options?
 - git review and commit step (set difftool to nvim?)
 - code actions not all that useful? 
 - use icons for errors instead of E / H / I etc.
 - running one test shows coverage for all files instead of just the changed files -> filterout the rest of the files? (jest config?)

## Tools

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

### amethyst

```
brew install amethyst
```

### zsh

Installed by default with macOS

### nvim

```
brew install nvim
```

### chrome

```
brew install google-chrome
```
Sign in to sync bookmarks and extensions

### Misc 
- git
- globally installed packages
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

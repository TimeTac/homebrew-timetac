# TimeTac's homebrew Formulae and Casks

## Installation
Enable the repository:

```
brew tap timetac/timetac
```

## Usage
Install a formula from the repository:

```
brew install PACKAGE_NAME
````

Install a cask from the repository:

```
brew install --casks PACKAGE_NAME
```

## Reasons for inclusion
### Formulae
- ansible < 5
  - Ansible higher 5.0 requires Python 3.5 on the host executing it, excluding Debian Stretch
- sshpass
  - unavailable via homebrew and used for some extremely specific tasks via Ansible

### casks
- navicat-for-mysql < 13
  - https://github.com/Homebrew/brew/issues/8131
  - licenses are issued per major version
- ttvpn
  - no official easy macOS distribution channel

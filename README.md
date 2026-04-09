# Vim Config

Personal Vim configuration repository.

## Overview

This repository centralizes a custom Vim setup focused on productivity, readability, and efficient editing workflows. It is intended as a reproducible dotfiles-style configuration that can be installed quickly on new environments.

## Features

- Custom `.vimrc` with editing improvements
- Opinionated defaults for navigation and editing
- Version-controlled configuration for portability
- Screenshot/media folder for visual references (`img/`)

## Contents

- `.vimrc`: core Vim configuration
- `img/`: optional visual documentation

## Installation

1. Backup existing Vim config:

```bash
cp ~/.vimrc ~/.vimrc.backup
```

2. Clone this repository:

```bash
git clone https://github.com/mateushenriquedasilva/vim-config.git
cd vim-config
```

3. Apply configuration:

```bash
cp .vimrc ~/.vimrc
```

On Windows (PowerShell):

```powershell
Copy-Item .vimrc $HOME\_vimrc -Force
```

## Customization

- Adjust key mappings to your preferences
- Add plugin manager sections if needed
- Split machine-specific options into local override files

## Recommended Next Steps

- Add plugin manager documentation (if used)
- Add startup performance notes
- Add separate Neovim configuration (if applicable)

## License

This project is available under the repository license terms.

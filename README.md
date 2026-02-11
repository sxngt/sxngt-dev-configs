# sxngt-dev-configs

macOS 포맷 후 개발 환경을 빠르게 복원하기 위한 설정 파일 모음.

## 구조

```
.
├── Brewfile          # Homebrew 패키지 및 Cask 목록
├── ideavimrc         # JetBrains IdeaVim 설정
├── .tmux.conf        # tmux 설정
└── lazyvim/          # LazyVim (Neovim) 설정
    ├── init.lua
    ├── lazy-lock.json
    ├── lazyvim.json
    ├── stylua.toml
    ├── .neoconf.json
    └── lua/
        ├── config/
        │   ├── autocmds.lua
        │   ├── keymaps.lua
        │   ├── lazy.lua
        │   └── options.lua
        └── plugins/
            ├── colorscheme.lua
            ├── dashboard.lua
            ├── disable-animate.lua
            ├── example.lua
            ├── im-select.lua
            ├── keymaps.lua
            ├── options.lua
            └── python.lua
```

## 복원 방법

### 1. 이 저장소 클론

```bash
git clone https://github.com/sxngt/sxngt-dev-configs.git
cd sxngt-dev-configs
```

### 2. Homebrew 패키지 설치

```bash
brew bundle --file=Brewfile
```

### 3. tmux 설정

```bash
cp .tmux.conf ~/.tmux.conf
```

### 4. LazyVim 설정

```bash
# 기존 nvim 설정이 있다면 백업
# mv ~/.config/nvim ~/.config/nvim.bak

mkdir -p ~/.config/nvim
cp -r lazyvim/* ~/.config/nvim/
cp lazyvim/.neoconf.json ~/.config/nvim/
```

### 5. IdeaVim 설정

```bash
cp ideavimrc ~/.ideavimrc
```

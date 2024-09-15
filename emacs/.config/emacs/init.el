(add-to-list 'load-path "~/.dotfiles/emacs/.config/emacs/ftplugin/")
(add-to-list 'load-path "~/.dotfiles/emacs/.config/emacs/lisp/ximon/")
(add-to-list 'load-path "~/.dotfiles/emacs/.config/emacs/lisp/ximon/core/")
(add-to-list 'load-path "~/.dotfiles/emacs/.config/emacs/lisp/ximon/packages/")
(add-to-list 'load-path "~/.dotfiles/emacs/.config/emacs/lisp/ximon/packages/lsp/")

;; (require 'straight)
(require 'elpaca)
(require 'org-config)
(require 'lang-modes)

(require 'settings) 
(require 'options)
(require 'colorscheme)

(require 'helpful)
(require 'evil-terminal-cursor)
(require 'doom-modeline)
(require 'good-scroll)
(require 'evil)
(require 'neotree)
(require 'magit)
(require 'wakatime)
(require 'lsp-mode-config)
(require 'grammarly)
(require 'org-superstar)
(require 'git-gutter)
(require 'smart-parens)
(require 'doom-dashboard)

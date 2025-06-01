(use-package which-key
  :ensure nil 
  :init (which-key-mode 1)
  :diminish
 
  :custom
  (which-key-side-window-location 'bottom)
  (which-key-sort-uppercase-first nil)
  (which-key-sort-order #'which-key-key-order-alpha)     ;; Same as default, except single characters are sorted alphabetically
  (which-key-add-column-padding 5)                       ;; Number of spaces to add to the left of each column
  (which-key-min-display-lines 4)                        ;; Increase the minimum lines to display, because the default is only 1
  (which-key-idle-delay 0.5)                             ;; Set the time delay (in seconds) for the which-key popup to appear
  (which-key-allow-imprecise-window-fit nil))            ;; Fixes which-key window slipping out in Emacs Daemon

;; Use the inbuilt project management plugin
(use-package project
  :ensure nil)

(use-package wakatime-mode
  :ensure t
  :config (global-wakatime-mode))

;; Version Control Plugin 
(use-package transient
  :ensure t)

(use-package magit
  :ensure t
  :after transient)

(use-package diff-hl
  :ensure t
  :hook ((dired-mode         . diff-hl-dired-mode-unless-remote)
         (magit-pre-refresh  . diff-hl-magit-pre-refresh)
         (magit-post-refresh . diff-hl-magit-post-refresh))
  :init (global-diff-hl-mode))

;; Useful Plugins for Corfu and Vertigo
(use-package orderless
  :ensure t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles basic partial-completion)))))

(use-package savehist      ;; Persist history over Emacs restarts. 
  :init
  (savehist-mode))

(use-package marginalia
  :ensure t
  :after vertico
  :init
  (marginalia-mode))

;; Terminal Configuration
(use-package vterm
  :ensure t)

;; Auto Dark Mode Configuration
(use-package auto-dark
  :ensure t
  :init (auto-dark-mode)
  :custom 
  (auto-dark-themes '((doom-acario-dark) (doom-acario-light))))

;; Nerd Icons Configuration
(use-package nerd-icons
  :ensure t
  :if (display-graphic-p))

(use-package nerd-icons-dired
  :ensure t
  :hook (dired-mode . (lambda () (nerd-icons-dired-mode t))))

(use-package nerd-icons-ibuffer
  :ensure t
  :hook (ibuffer-mode . nerd-icons-ibuffer-mode))

(use-package nerd-icons-corfu
  :ensure t
  :after corfu
  :init (add-to-list 'corfu-margin-formatters #'nerd-icons-corfu-formatter))

(use-package nerd-icons-completion
  :ensure t
  :after marginalia
  :config
  (nerd-icons-completion-mode)
  :hook
  ('marginalia-mode-hook . 'nerd-icons-completion-marginalia-setup))

(provide 'init-general)

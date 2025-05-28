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

(provide 'init-general)
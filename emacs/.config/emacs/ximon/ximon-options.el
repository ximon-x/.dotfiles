(setq user-full-name "Simon Samuel")

(use-package emacs
  :custom
    (menu-bar-mode nil)                         ;; Disable the menu bar
    (tool-bar-mode nil)                         ;; Disable the tool bar
    (scroll-bar-mode nil)                       ;; Disable the scroll bar
    (blink-cursor-mode nil)                     ;; Don't blink cursor
    (inhibit-startup-screen t)                  ;; Disable welcome screen

    (make-backup-files nil)                     ;; Stop creating ~ backup files
    (auto-save-default nil)                     ;; Stop creating # auto save files
    (create-lockfiles nil)                      ;; Stop creating .# lock files
    (electric-pair-mode t)                      ;; Turns on automatic parens pairing
    (electric-indent-mode nil)                  ;; Turn off the weird indenting that Emacs does by default.

    (tab-width 4)                               ;; Set tab width to 4 spaces
    (scroll-margin 10)                          ;; Keep some space at the top and bottom of the window when scrolling
    (scroll-conservatively 10)                  ;; Smooth scrolling
    (global-auto-revert-mode t)                 ;; Automatically reload file and show changes if the file has changed
    (mouse-wheel-progressive-speed nil)         ;; Disable progressive speed when scrolling

    (global-display-line-numbers-mode t)                    ;; Display line numbers
    (display-line-numbers-type 'relative)                   ;; Relative line numbers
    (dired-kill-when-opening-new-dired-buffer t)            ;; Dired don't create new buffer
    (initial-frame-alist '((fullscreen . maximized)))       ;; Start Emacs in maximized mode
  
  :hook
    (dired-mode . dired-hide-details-mode)                  ;; Hide details in Dired mode

  :config
    (setq custom-safe-themes t)                             ;; Allow all themes to be loaded safely

    (setq custom-file 
      (expand-file-name "custom.el" user-emacs-directory))  ;; Custom file location

    (when (file-exists-p custom-file)
      (load custom-file))                                   ;; Load custom file if it exists

    (set-face-attribute 'default nil                        ;; Set default face attributes   
      :font "Iosevka Nerd Font"
      :height 140)
  
  :bind
    ([escape] . keyboard-escape-quit)                       ;; Use Escape to quit
)

(provide 'ximon-options)
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

  (ring-bell-function 'ignore)                ;; Disable the bell sound
  (visible-bell nil)                          ;; Disable visible bell
  (truncate-lines t)                          ;; Enable line truncate by default
  (org-startup-indented t)                    ;; Activate org-indent-mode in all org files 

  (global-display-line-numbers-mode t)                    ;; Display line numbers
  (display-line-numbers-type 'relative)                   ;; Relative line numbers
  (dired-kill-when-opening-new-dired-buffer t)            ;; Dired don't create new buffer
  (initial-frame-alist '((fullscreen . maximized)))       ;; Start Emacs in maximized mode

  :hook
  (dired-mode . dired-hide-details-mode)                  ;; Hide details in Dired mode
  (text-mode . visual-line-mode)                          ;; Enable visual line mode in text modes

  :config
  (setq custom-safe-themes t)                             ;; Allow all themes to be loaded safely

  (setq custom-file                                       ;; Custom file location
		(expand-file-name "custom.el" user-emacs-directory))  

  (when (file-exists-p custom-file) (load custom-file))   ;; Load custom file if it exists

  (setq initial-buffer-choice 
		(lambda () (get-buffer-create dashboard-buffer-name)))
  
  (set-face-attribute 'default nil                        ;; Set default face attributes   
					  :font "Iosevka Nerd Font"
					  :height 140)

  (add-to-list 'default-frame-alist '(fullscreen . maximized)) ;; Ensure new frames are maximized

  :bind
  ([escape] . keyboard-escape-quit))                      ;; Use Escape to quit

(provide 'ximon-options)

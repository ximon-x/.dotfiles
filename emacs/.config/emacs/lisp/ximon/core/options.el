(setq 
 user-full-name      "Simon Samuel"
 user-mail-address   "salviensky@gmail.com")

(add-to-list 'default-frame-alist '(fullscreen . maximized)) 

(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode t)
(setq inhibit-startup-message t)  

(column-number-mode)
(scroll-bar-mode -1)
(menu-bar-mode -1) 
(tool-bar-mode -1)

(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) 
(setq mouse-wheel-progressive-speed nil) 
(setq mouse-wheel-follow-mouse 't) 
(setq scroll-step 1) 

(setq auto-save-default nil)
(setq make-backup-files nil)
(setq create-lockfiles nil)
(setq warning-minimum-level :emergency)

(dolist 
    (mode 
     '(
       neotree-mode-hook
       term-mode-hook
       eshell-mode-hook))

  (add-hook 
   mode (
         lambda () (
                    display-line-numbers-mode 0))))


(provide 'options)

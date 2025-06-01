(use-package evil
  :init (evil-mode)
  :ensure t
  :config (evil-set-initial-state 'eat-mode 'insert) 
  
  :custom 
  (evil-want-keybinding nil)    ;; Disable evil bindings in other modes (It's not consistent and not good)
  (evil-want-C-u-scroll t)      ;; Set C-u to scroll up
  (evil-want-C-i-jump nil)      ;; Disables C-i jump
  (evil-undo-system 'undo-redo) ;; C-r to redo
  (org-return-follows-link t)   ;; Sets RETURN key in org-mode to follow links

  ;; Unmap keys in 'evil-maps. If not done, org-return-follows-link will not work
  :bind (:map evil-motion-state-map
              ("SPC" . nil)
              ("RET" . nil)
              ("TAB" . nil)))

(use-package evil-escape
  :after evil
  :ensure t
  :config
  (evil-escape-mode 1)                    ;; Enable evil-escape mode
  (setq evil-escape-delay 0.2)            ;; Set the delay for the escape key sequence
  (setq evil-escape-key-sequence "jj")    ;; Set the key sequence to escape from insert mode
  (setq evil-escape-excluded-states '(normal visual multiedit emacs motion)))   

(use-package evil-collection
  :after evil
  :ensure t
  :config
  (setq evil-collection-mode-list '(dired ibuffer magit corfu vertico consult)) ;; Setting where to use evil-collection
  (evil-collection-init))

(provide 'init-evil)

(use-package general
  :ensure t
  :config
  (general-evil-setup)

  ;; General Keybindings
  (general-def 'normal 
    "-" 'dired-jump
    "U" 'evil-redo)

  (general-def 'normal 'override
    "H" 'evil-beginning-of-line
    "L" 'evil-end-of-line
    "J" 'evil-forward-paragraph
    "K" 'evil-backward-paragraph)

  ;; Set up 'SPC' as the leader key
  (general-create-definer ximon/leader
    :states 'normal
    :keymaps 'override
    :prefix "SPC") 

  ;; Set up ";" as the local leader key
  (general-create-definer ximon/local-leader
    :states 'normal 
    :keymaps 'local
    :prefix ";")

  ;; Quick Keymaps
  (ximon/leader
    "u" '(evil-update :wk "Quick Update") 
    "x" '(evil-quit :wk "Quick Exit"))

  (ximon/leader
	"SPC" '(project-find-file :wk "Find File")
	"/"   '(consult-grep :wk "Grep")
	"."   '(vterm-other-window :wk "Terminal")
	"%"   '(magit :wk "Magit")
	"e"   '(elpaca-manager :wk "Elpaca")
	"d"   '(dashboard-open :wk "Dashboard"))

  ;; Window Keymaps
  (ximon/leader
    "_" '(evil-window-split :wk "Split Window Below")
    "|" '(evil-window-vsplit :wk "Split Window Right"))

  (general-def 'normal
    "C-h" '(windmove-left 1 :wk "Move to window left")
    "C-l" '(windmove-right 1 :wk "Move to window right")
    "C-j" '(windmove-down 1 :wk "Move to window below")
    "C-k" '(windmove-up 1 :wk "Move to window above"))

  (general-def 'normal
    "C-S-h" '(evil-window-move-far-left :wk "Move window to far left")
    "C-S-l" '(evil-window-move-far-right :wk "Move window to far right")
    "C-S-j" '(evil-window-move-very-bottom :wk "Move window to very bottom")
    "C-S-k" '(evil-window-move-very-top :wk "Move window to very top"))

  (general-def 'normal
    "C-<left>" '(evil-window-decrease-width :wk "Decrease window width")
    "C-<right>" '(evil-window-increase-width :wk "Increase window width")
    "C-<down>" '(evil-window-decrease-height :wk "Decrease window height")
    "C-<up>" '(evil-window-increase-height :wk "Increase window height"))
  
  ;; Buffer Keymaps
  (general-def 'normal
    "[b" '(previous-buffer :wk "Previous buffer")
    "]b" '(next-buffer :wk "Next buffer"))

  (ximon/leader
    "b" '(:ignore t :wk "Buffer")
    "b x" '(kill-current-buffer :wk "Exit current buffer")
    "b s" '(scratch-buffer :wk "Select scratch buffer")
    "b l" '(list-buffers :wk "List buffers"))

  ;; Tab Keymaps
  (general-def 'normal 
    "[t" '(tab-bar-switch-to-prev-tab :wk "Previous tab")
    "]t" '(tab-bar-switch-to-next-tab :wk "Next tab"))

  (ximon/leader
    "t" '(:ignore t :wk "Tab")
    "t n" '(tab-new :wk "New tab")
    "t x" '(tab-close :wk "Close current tab"))
  
  ;; LSP Keymaps
  (ximon/leader eglot-mode-map
	"c a" '(eglot-code-actions :wk "Code Actions")
	"c f" '(eglot-format :wk "Code Format")
	"c r" '(eglot-rename :wk "Code Rename")))

(provide 'ximon-keymaps)

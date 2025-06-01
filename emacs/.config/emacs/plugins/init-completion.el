(use-package cape
  :ensure t
  :after corfu
  :init
  (add-to-list 'completion-at-point-functions #'cape-dabbrev) ;; Complete word from current buffers
  (add-to-list 'completion-at-point-functions #'cape-dict) ;; Dictionary completion
  (add-to-list 'completion-at-point-functions #'cape-file) ;; Path completion
  (add-to-list 'completion-at-point-functions #'cape-elisp-block) ;; Complete elisp in Org or Markdown mode
  (add-to-list 'completion-at-point-functions #'cape-keyword)) ;; Keyword/Snipet completion

(use-package corfu
  :ensure t
  :init 
  (global-corfu-mode)

  :custom
  (corfu-cycle t)                ;; Enable cycling for 'corfu-next/previous'
  (corfu-auto t)                 ;; Enable auto completion
  (corfu-auto-prefix 2)          ;; Minimum length of prefix for auto completion.
  (corfu-popupinfo-mode t)       ;; Enable popup information
  (corfu-popupinfo-delay 0.5)    ;; Lower popupinfo delay to 0.5 seconds from 2 seconds
  (corfu-separator ?\s)          ;; Orderless field separator, Use M-SPC to enter separator
  
  (corfu-preview-current nil)    ;; Don't insert completion without confirmation
  (completion-ignore-case t)
  (tab-always-indent 'complete))

(use-package vertico
  :ensure t
  :custom
  (vertico-resize t) ;; Grow and shrink the Vertico minibuffer
  (vertico-cycle t) ;; Enable cycling for `vertico-next/previous'

  :init
  (vertico-mode))

(use-package consult
  :ensure t
  :hook (completion-list-mode . consult-preview-at-point-mode))

(provide 'init-completion)

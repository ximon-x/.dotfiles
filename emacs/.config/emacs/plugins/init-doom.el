(use-package doom-themes
  :ensure t
  :config
    (setq doom-themes-enable-bold t)        ;; if nil, bold is universally disabled
    (setq doom-themes-enable-italic t)      ;; if nil, italics is universally disabled
    (doom-themes-org-config))               ;; Corrects (and improves) org-mode's native fontification.


(provide 'init-doom)
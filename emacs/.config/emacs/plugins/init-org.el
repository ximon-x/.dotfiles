(use-package org
  :ensure nil
  :custom
  (org-edit-src-content-indentation 4))  ;; Set src block automatic indent to 4 instead of 2.

(use-package toc-org
  :ensure t
  :commands toc-org-enable
  :hook (org-mode . toc-org-mode))

(use-package org-modern
  :ensure t
  :after org

  :custom
  (org-hide-emphasis-markers t)
  (org-pretty-entities t)
  (org-modern-star 'replace)

  :hook (org-mode . org-modern-mode))	

(use-package org-modern-indent
  :ensure (:host github :repo "jdtsmith/org-modern-indent")
  :after org

  :config 
  (add-hook 'org-mode-hook #'org-modern-indent-mode 90))

(use-package org-tempo
  :ensure nil
  :after org)

(provide 'init-org)

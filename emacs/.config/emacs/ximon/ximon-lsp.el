(use-package go-mode
  :ensure t)

(use-package rust-mode
  :ensure t)

(use-package zig-mode
  :ensure t)

(use-package eglot
  :ensure nil
  :hook
  ((c-mode c++-mode go-mode rust-mode zig-mode) . eglot-ensure)

  :custom
  (eglot-events-buffer-size 0)      ;; No event buffers (Lsp server logs)
  (eglot-autoshutdown t)            ;; Shutdown unused servers.
  (eglot-report-progress nil)       ;; Disable lsp server logs (Don't show lsp messages at the bottom, java)

  :config
  (add-to-list 'eglot-server-programs
               '(c-mode . ("~/.local/share/nvim/mason/bin/clangd")))
  (add-to-list 'eglot-server-programs
               '(c++-mode . ("~/.local/share/nvim/mason/bin/clangd")))
  (add-to-list 'eglot-server-programs
               '(go-mode . ("~/.local/share/nvim/mason/bin/gopls")))
  (add-to-list 'eglot-server-programs
               '(rust-mode . ("~/.local/share/nvim/mason/bin/rust-analyzer")))
  (add-to-list 'eglot-server-programs
               '(zig-mode . ("~/.local/share/nvim/mason/bin/zls"))))

(provide 'ximon-lsp)

(add-to-list 'load-path 
    (expand-file-name "ximon" user-emacs-directory))

(require 'ximon-core)
(require 'ximon-options)
(require 'ximon-keymaps)
(require 'ximon-plugins)
(require 'ximon-lsp)
(add-to-list 'load-path 
    (expand-file-name "plugins" user-emacs-directory))

(require 'init-doom)
(require 'init-evil)
(require 'init-general)

(provide 'ximon-plugins)
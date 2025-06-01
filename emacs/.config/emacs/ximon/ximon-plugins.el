(add-to-list 'load-path 
			 (expand-file-name "plugins" user-emacs-directory))

(require 'init-general)
(require 'init-doom)
(require 'init-evil)
(require 'init-org)
(require 'init-completion)

(provide 'ximon-plugins)

(require 'init-elpa)

(require-package 'monokai-theme)

(setq monokai-height-plus-1 0.9
      monokai-height-plus-2 1.0
      monokai-height-plus-3 1.0
      monokai-height-plus-4 1.0
      monokai-height-minus-1 1.0)

(load-theme 'monokai t)

(set-face-attribute 'default nil :height 107 :font "Monaco")

(provide 'init-monokai-theme)
(provide 'init-theme)

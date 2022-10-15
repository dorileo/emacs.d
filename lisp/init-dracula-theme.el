(require 'init-elpa)

(require-package 'dracula-theme)

(load-theme 'dracula t)
(set-face-attribute 'default nil :height 107 :font "Source Code Pro SemiBold")

(provide 'init-dracula-theme)

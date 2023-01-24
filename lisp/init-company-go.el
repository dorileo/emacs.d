(require 'init-elpa)
(require 'init-company-mode)
(require-package 'company-go)

; bigger popup window
(setq company-tooltip-limit 20)

; decrease delay before autocompletion popup shows
(setq company-idle-delay .3)

; remove annoying blinking
(setq company-echo-delay 0)

; start autocompletion only after typing
(setq company-begin-commands '(self-insert-command))

(provide 'init-company-go)

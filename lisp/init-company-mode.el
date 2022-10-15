(require 'init-elpa)

(require-package 'company)

(require 'company)

(add-hook 'after-init-hook 'global-company-mode)

(setq company-tooltip-align-annotations t)

;; Disable automatic popup for completion
(setq company-idle-delay nil)

;; Reduce the number of characters before company kicks in
(setq company-minimum-prefix-length 1)

(provide 'init-company-mode)

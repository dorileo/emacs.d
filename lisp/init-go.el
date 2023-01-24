(require 'init-elpa)
(require 'init-company-go)

(require-package 'go-mode)

(add-hook 'go-mode-hook
          (lambda ()
            (add-hook 'before-save-hook 'gofmt-before-save)
            (setq tab-width 2)
            (setq indent-tabs-mode 1)))

(provide 'init-go)

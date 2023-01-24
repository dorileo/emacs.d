(require 'init-elpa)

(require-package 'magit)

(setq magit-display-buffer-function
      (lambda (buffer)
        (display-buffer buffer '(display-buffer-same-window))))

(provide 'init-magit)

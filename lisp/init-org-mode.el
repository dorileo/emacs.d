(require 'init-elpa)

(require-package 'org)
(require-package 'org-bullets)

;; auto-save org-mode buffers
(add-hook 'auto-save-hook 'org-save-all-org-buffers)
(setq org-capture-is-refiling t)

(provide 'init-org-mode)

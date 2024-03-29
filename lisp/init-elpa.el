(require 'package)
(package-initialize)

;; older Emacs <= 26.2 will require this
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

(defun require-package (package)
  "Install given PACKAGE if it was not installed before."
  (if (package-installed-p package)
      t
    (progn
      (unless (assoc package package-archive-contents)
        (package-refresh-contents))
      (package-install package))))

(add-to-list 'package-archives
'("melpa-stable" . "http://stable.melpa.org/packages/") t)

(add-to-list 'package-archives
'("melpa" . "http://melpa.org/packages/") t)

(provide 'init-elpa)

(require 'init-elpa)
(require 'ido)
(require-package 'idomenu)

(setq ido-save-directory-list-file (locate-user-emacs-file "data/ido.last"))
(setq ido-max-work-directory-list 500)
(setq ido-use-filename-at-point 'guess)
(setq ido-enable-flex-matching t)
(setq ido-everywhere 1)
(ido-mode 1)

(defadvice ido-find-file (after find-file-sudo activate)
  "Find file as root if necessary."
  (unless (and buffer-file-name
               (file-writable-p buffer-file-name))
    (find-alternate-file (concat "/sudo:root@localhost:" buffer-file-name))))

(provide 'init-ido)

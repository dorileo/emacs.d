;; Don't show initial logo
(setq inhibit-startup-message t)

;; Don't display tool-bar
(if (functionp 'tool-bar-mode) (tool-bar-mode -1))

;; Don't display menu bar
(menu-bar-mode -1)

;; Don't display the scroll-bar
(if (functionp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Show me the column I am
(column-number-mode)

;; No backups
(setq make-backup-files nil)

;; Direct all the auto-saved files to /tmp
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; got from: https://www.emacswiki.org/emacs/DisplayTime#toc1
(defface egoge-display-time
  '((((type x w32 mac))
     ;; #060525 is the background colour of my default face.
     (:foreground "#acdd0b" :inherit bold))
    (((type tty))
     (:foreground "green")))
  "Face used to display the time in the mode line.")

;; This causes the current time in the mode line to be displayed in
;; `egoge-display-time-face' to make it stand out visually.
(setq display-time-string-forms
      '((propertize (concat " " 24-hours ":" minutes " ")
 		    'face 'egoge-display-time)))

(display-time-mode 1)

(provide 'init-ui)

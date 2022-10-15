;; disable ctrl-z
(global-unset-key "\C-z")

(global-unset-key (kbd "\C-q"))

;; get rid of arrows
(global-unset-key (kbd "<left>"))
(global-unset-key (kbd "<right>"))
(global-unset-key (kbd "<up>"))
(global-unset-key (kbd "<down>"))
(global-unset-key (kbd "<C-left>"))
(global-unset-key (kbd "<C-right>"))
(global-unset-key (kbd "<C-up>"))
(global-unset-key (kbd "<C-down>"))
(global-unset-key (kbd "<M-left>"))
(global-unset-key (kbd "<M-right>"))
(global-unset-key (kbd "<M-up>"))
(global-unset-key (kbd "<M-down>"))

;; A tipical copy
(global-set-key "\C-xc" 'copy-region-as-kill)

;; Open compile mini buffer
(global-set-key "\C-cc" 'compile)

;; Goto-line short-cut key
(global-set-key "\C-j" 'goto-line)

;; kill all buffers except the ones listed on not-to-kill-buffer-list
;; ===============================
(setq not-to-kill-buffer-list '("*scratch*"))
(defun kill-all-buffers ()
  (interactive)
  (save-excursion
    (let ((count 0))
      (dolist (buffer (buffer-list))
	(set-buffer buffer)
	(if (member (buffer-name) not-to-kill-buffer-list)
	    (setq count (1+ count))
	  (kill-buffer buffer)))
      (message "Killed %i dired buffer(s)." count))))

(global-set-key "\C-ck" 'kill-all-buffers)
;; ===============================

(provide 'init-key-bindings)

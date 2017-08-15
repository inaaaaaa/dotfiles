;; indent
(setq-default indent-tabs-mode t)
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

;; backup-file
(setq make-backup-files nil)
(setq auto-save-default nil)

;; startup-message
(setq inhibit-startup-message t)

;; others
(setq scroll-conservatively 1)
(show-paren-mode t)
(line-number-mode t)
(column-number-mode t)

(setq mode-line-position
      (let ((show-command-name '(:eval (format "[%s]" (prin1-to-string last-command)))))
        (reverse (cons show-command-name (reverse mode-line-position)))))

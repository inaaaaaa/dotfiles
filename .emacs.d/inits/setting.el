;; indent
(setq-default indent-tabs-mode t)
(setq-default tab-width 4)

;; do not use tab
(setq-default indent-tabs-mode nil)

;; backup-file
(setq make-backup-files nil)
(setq auto-save-default nil)

;; startup-message
(setq inhibit-startup-message t)

;; other
(setq scroll-conservatively 1)
(show-paren-mode)
(setq transient-mark-mode t)
(setq hl-line-face 'underline)
(global-hl-line-mode)
(line-number-mode t)
(column-number-mode t)

(setq mode-line-position
      (let ((show-command-name '(:eval (format "[%s]" (prin1-to-string last-command)))))
        (reverse (cons show-command-name (reverse mode-line-position)))))

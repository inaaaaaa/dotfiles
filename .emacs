(require 'package)
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
	("org" . "https://orgmode.org/elpa/")
	("gnu" . "https://elpa.gnu.org/packages/")))
(package-initialize)

(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "C-t") 'other-window)
(global-set-key (kbd "C-u") (kbd "C-@ C-a C-w"))
(global-set-key (kbd "C-x C-b") 'buffer-menu)
(global-set-key (kbd "M-d") 'downcase-region)
(global-set-key (kbd "M-g") 'goto-line)
(global-set-key (kbd "M-i") 'whitespace-mode)
(global-set-key (kbd "M-j") 'eval-print-last-sexp)
(global-set-key (kbd "M-l") 'linum-mode)
(global-set-key (kbd "M-u") 'upcase-region)

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(setq indent-tabs-mode nil)
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message t)
(setq require-final-newline t)
(setq scroll-step 1)

(show-paren-mode t)
(line-number-mode t)
(column-number-mode t)

(server-start)

(global-linum-mode)
(setq linum-format "%4d ")

(load-theme 'tango-dark)
(buffer-menu)

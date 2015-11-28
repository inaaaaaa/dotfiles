(global-set-key (kbd "M-g") 'goto-line)

(global-set-key (kbd "C-t") 'other-window)

(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "C-u") (kbd "C-@ C-a C-w"))

(global-set-key (kbd "M-?") 'describe-mode)

(global-set-key (kbd "C-x f")   'find-file)
(global-set-key (kbd "C-x C-f") 'find-file)
(global-set-key (kbd "C-x d")   'list-directory)
(global-set-key (kbd "C-x C-d") 'list-directory)
(global-set-key (kbd "C-x b")   'helm-buffers-list)
(global-set-key (kbd "C-x C-b") 'buffer-menu)

(global-set-key (kbd "M-j") 'eval-print-last-sexp)

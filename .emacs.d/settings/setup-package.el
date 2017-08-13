;; server
(require 'server)
(unless (server-running-p)
  (server-start))

;; linum
(require 'linum)
(global-linum-mode)
(setq linum-format "%4d ")

;; view
(require 'view)
(global-set-key (kbd "C-z") 'view-mode)
(define-key view-mode-map (kbd "q") 'view-mode) ; quit from view-mode
(define-key view-mode-map (kbd "e") 'View-scroll-line-forward)
(define-key view-mode-map (kbd "j") 'View-scroll-line-forward)
(define-key view-mode-map (kbd "k") 'View-scroll-line-backward)
(define-key view-mode-map (kbd "g") 'beginning-of-buffer)
(define-key view-mode-map (kbd "G") 'end-of-buffer)
(define-key view-mode-map (kbd "f") 'scroll-up-command)
(define-key view-mode-map (kbd "b") 'scroll-down-command)

;; haskell
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)

;; auto-complete
(ac-config-default)
(add-to-list 'ac-modes 'haskell-mode)
(add-to-list 'ac-modes 'ruby-mode)
(add-to-list 'ac-modes 'css-mode)
(add-to-list 'ac-modes 'c-mode)
(add-to-list 'ac-modes 'c++-mode)
(add-to-list 'ac-modes 'java-mode)
(add-to-list 'ac-modes 'javascript-mode)
(add-to-list 'ac-modes 'python-mode)
(add-to-list 'ac-modes 'scheme-mode)
(add-to-list 'ac-modes 'sh-mode)
(setq ac-use-menu-map t)

;; markdown
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.txt\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; others
(require 'f)
(require 's)

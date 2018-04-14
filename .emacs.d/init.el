;;
;; packages
;;

(require 'cl)
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(defvar packages-to-install
  '(auto-complete
    beacon
    csv-mode
    cyberpunk-theme
    f
    flycheck
    go-mode
    helm
    hydra
    jinja2-mode
    js3-mode
    json-mode
    markdown-mode
    package-lint
    php-mode
    python-mode
    quelpa
    ruby-mode
    rust-mode
    s
    yaml-mode
    yasnippet))

(dolist (package packages-to-install)
  (unless (package-installed-p package)
    (package-refresh-contents)
    (package-install package)))

(quelpa '(window-resizer :repo "inat/window-resizer" :fetcher github))

;;
;; load files
;;

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
(load "~/.emacs.d/settings/keybinds.el")
(load "~/.emacs.d/settings/misc.el")
(load "~/.emacs.d/settings/setup-packages.el")

;;
;; init actions
;;

(load-theme 'cyberpunk t)
(buffer-menu)

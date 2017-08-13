;; Package
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)
(defvar packages-to-install
  '(ac-haskell-process
    ac-helm
    ac-html
    ac-html-bootstrap
    ac-python
    auto-complete
    auto-install
    clojure-mode
    cmake-mode
    csv-mode
    erlang
    f
    flycheck
    gitignore-mode
    gnuplot-mode
    go-mode
    graphviz-dot-mode
    haskell-mode
    helm
    jinja2-mode
    js3-mode
    json-mode
    llvm-mode
    markdown-mode
    nginx-mode
    package-lint
    php-mode
    python-mode
    racket-mode
    ruby-mode
    s
    scala-mode
    ssh-config-mode
    vimrc-mode
    w3m
    yaml-mode))

(dolist (package packages-to-install)
  (unless (package-installed-p package)
    (package-refresh-contents)
    (package-install package)))

;; pwd
(defconst pwd (file-name-directory load-file-name))

;; Submodules(self-package)
(load (concat pwd "submodules/window-resizer/window-resizer.el"))

;; Settings
(load (concat pwd "settings/setup-package.el"))
(load (concat pwd "settings/setting.el"))
(load (concat pwd "settings/keybind.el"))

;; Init actions
(load-theme 'tsdh-dark)
(buffer-menu)




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (yaml-mode w3m vimrc-mode ssh-config-mode scala-mode racket-mode python-mode php-mode package-lint nginx-mode markdown-mode llvm-mode json-mode js3-mode jinja2-mode graphviz-dot-mode go-mode gnuplot-mode gitignore-mode flycheck erlang csv-mode cmake-mode clojure-mode auto-install ac-python ac-html-bootstrap ac-html ac-helm ac-haskell-process))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

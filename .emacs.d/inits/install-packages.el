;; Initialize package.el
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)

;; Install packages
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

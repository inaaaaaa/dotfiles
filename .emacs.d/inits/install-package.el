(require 'cl)
(defun install-not-installed-packages (packages)
  (let ((not-installed (loop for x in packages
                             when (not (package-installed-p x))
                             collect x)))
    (when not-installed
      (package-refresh-contents)
      (dolist (pkg not-installed)
        (package-install pkg)))))

(package-initialize)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

(install-not-installed-packages '(auto-install))
(require 'auto-install)
(auto-install-compatibility-setup)

(defvar installing-package-list
  '(ac-haskell-process
    ac-helm
    ac-html
    ac-html-bootstrap
    ac-python
    auto-complete
    auto-install
    cmake-mode
    csv-mode
    gitignore-mode
    gnuplot-mode
    graphviz-dot-mode
    haskell-mode
    helm
    jinja2-mode
    js3-mode
    json-mode
    llvm-mode
    markdown-mode
    nginx-mode
    php-mode
    python-mode
    racket-mode
    ruby-mode
    scala-mode2
    ssh-config-mode
    vimrc-mode
    w3m
    yaml-mode
    yascroll))

(install-not-installed-packages installing-package-list)

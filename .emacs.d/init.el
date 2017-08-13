;; Import build-in requirements
(require 'cl)

;; Load init-files
;; (package-initialize)
(load "${HOME}/.emacs.d/inits/install-packages.el")
(load "${HOME}/.emacs.d/inits/setup-package.el")
(load "${HOME}/.emacs.d/inits/setting.el")
(load "${HOME}/.emacs.d/inits/keybind.el")
(load "${HOME}/.emacs.d/inits/init-action.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (yaml-mode w3m vimrc-mode ssh-config-mode racket-mode python-mode php-mode nginx-mode markdown-mode llvm-mode json-mode js3-mode jinja2-mode graphviz-dot-mode go-mode gnuplot-mode gitignore-mode csv-mode cmake-mode clojure-mode auto-install ac-python ac-html-bootstrap ac-html ac-helm ac-haskell-process))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

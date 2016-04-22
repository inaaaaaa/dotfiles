;; main
(mapcar (lambda (file-name) (load (concat "${HOME}/.emacs.d/inits/" file-name)))
        '("install-package.el"
          "setup-package.el"
          "setting.el"
          "keybind.el"
          "window-resizer.el"
          "init-action.el"))

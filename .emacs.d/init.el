; main
(mapcar (lambda (file-name) (load (concat "${HOME}/.emacs.d/init-files/" file-name)))
        '("install-package.el"
          "setup-package.el"
          "setting.el"
          "keybind.el"
          "util/window-resizer.el"
          "init-action.el"))

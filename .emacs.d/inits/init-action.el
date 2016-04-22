;; theme
(defun make-counter ()
  (lexical-let ((x 0))
    (lambda () (setq x (1+ x)))))

(fset 'counter (make-counter))

(defun toggle-theme ()
  (interactive)
  (let ((x (counter)))
    (cond ((eq (% x 2) 0) (load-theme 'tsdh-light t))
          ((eq (% x 2) 1) (load-theme 'tsdh-dark t))
          (t "error"))))

(toggle-theme)

;; other
(buffer-menu)

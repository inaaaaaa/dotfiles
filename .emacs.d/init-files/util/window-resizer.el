;;;; copy from http://d.hatena.ne.jp/khiker/20100119/window_resize and some modify

(defun window-resizer ()
  "Control window size and position."
  (interactive)
  (let ((window-obj (selected-window))
        (current-width (window-width))
        (current-height (window-height))
        (dx (if (= (nth 0 (window-edges)) 0) 1
              -1))
        (dy (if (= (nth 1 (window-edges)) 0) 1
              -1))
        action c)
    (catch 'end-flag
      (while t
        (setq action
              (read-key-sequence-vector (format "size[%dx%d]"
                                                (window-width)
                                                (window-height))))
        (setq c (aref action 0))
        (cond ((= c ?l)
               (enlarge-window-horizontally dx))
              ((= c ?h)
               (shrink-window-horizontally dx))
              ((= c ?k)
               (enlarge-window dy))
              ((= c ?j)
               (shrink-window dy))
              ;; otherwise
              (t
               (let ((last-command-char (aref action 0))
                     (command (key-binding action)))
                 (when command
                   (call-interactively command)))
               (message "Quit")
               (throw 'end-flag t)))))))

(global-set-key (kbd "C-x w") 'window-resizer)

;;;

(defun window-resize-num4 ()
  (interactive)
  (delete-other-windows)
  (split-window-right)
  (shrink-window 60 t)
  )

(global-set-key (kbd "C-x 4") 'window-resize-num4)

(defun window-resize-num5 ()
  (interactive)
  (delete-other-windows)
  (split-window-right)
  (shrink-window 60 t)
  (other-window 1)
  (split-window-below)
  (other-window 2)
  )

(global-set-key (kbd "C-x 5") 'window-resize-num5)

(defun window-resize-num6 ()
  (interactive)
  (delete-other-windows)
  (split-window-right)
  (split-window-right)
  (split-window-below)
  (other-window 2)
  (split-window-below)
  (other-window 2)
  (split-window-right)
  (split-window-below)
  (other-window 2)
  (split-window-below)
  (other-window 2)
  )

(global-set-key (kbd "C-x 6") 'window-resize-num6)

(defun window-resize-num7 ()
  (interactive)
  (delete-other-windows)
  (split-window-right)
  (other-window 1)
  (split-window-below)
  (other-window 1)
  (split-window-right)
  (split-window-below)
  (split-window-right)
  (split-window-below)
  (split-window-right)
  )

(global-set-key (kbd "C-x 7") 'window-resize-num7)

;; core-evil.el --- evil mode!  -*- lexical-binding: t; -*-

;; EVIL!
(evil-mode 1)

;; Don't close emacs on vim :q command
(evil-ex-define-cmd "q" 'kill-this-buffer)

(defun save-and-kill-buffer ()
  "Saves and kills the buffer"
  (interactive)
  (save-buffer)
  (kill-this-buffer)
)

(evil-ex-define-cmd "wq" 'save-and-kill-buffer)

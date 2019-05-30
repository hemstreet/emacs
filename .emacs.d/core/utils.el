;; utils.el --- utility functions -*- lexical-binding; t; -*-

;; reload emacs configuration
(defun reload-init-file ()
  (interactive)
  (load-file (concat user-emacs-directory "init.el")))

(global-set-key (kbd "C-c r") 'reload-init-file)

;; Load all files in directory
(defun load-directory (dir)
  (let ((load-it (lambda (f)
		   (load-file (concat (file-name-as-directory dir) f)))
		 ))
    (mapc load-it (directory-files dir nil "\\.el$"))))

(provide 'utils)

;;; editor.el --- everything relating to generic edits -*- lexical-binding: t; -*-
;
;; Disable the toolbar completely
(tool-bar-mode -1)

;; Disable menu bar ( file, edit, options, buffers, ...)
(menu-bar-mode -1)

;; Enable line numbers
(global-linum-mode t)

;; Disable line numbers in eshell mode
(add-hook 'eshell-mode-hook #'(lambda () (linum-mode -1)))
;; Set tab width
;; (setq default-tab-width 4)

;; Setup prompts to be "y" or "n" as well as "yes" or "no"
(defalias 'yes-or-no-p 'y-or-n-p)

;; Maximize window on load
(add-to-list 'default-frame-alist '(fullscreen . maximized))


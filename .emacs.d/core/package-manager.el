;;; package-manager.el --- setup package managers -*- lexical-binding: t; -*-

;; Set package intall directory
(setq package-user-dir (concat user-emacs-directory "packages/"))

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Load newer compiled packages ( this avoids .elc packages from getting installed over newer .el packages / files )
(setq load-prefer-newer noninteractive)

(provide 'package-manager)


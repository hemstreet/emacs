;;; init.el -*- lexical-binding: t -*-

(package-initialize)
(setq package-enable-at-startup nil)

;; Ensure we are running out of this file's directory
(setq user-emacs-directory (file-name-directory load-file-name))

;; make sure we always have a root dir config value ( could change from the user-emacs-directory in the future )
(setq root-directory user-emacs-directory)

;; baseline of where the core directory is
(setq core-directory (concat user-emacs-directory "core/"))

(require 'core (concat core-directory "core"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (magit dashboard neotree evil dracula-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

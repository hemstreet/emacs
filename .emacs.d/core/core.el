;;; core.el --- bootstrap -*- lexical-binding: t; -*-

;;; Define global variables
(add-to-list 'load-path core-directory)
(require 'variables)

(require 'themes)

;; Require in package manager support 
(require 'package-manager)

;; Utilities helper functions and others
(require 'utils)

;; Load UI specific code
(load-directory (concat core-directory "ui/"))

;; Require backups
(require 'backups)

;; Require third party modules
(require 'modules)

;; Require Evil Mode / Bindings
(load-directory (concat core-directory "evil/"))

(provide 'core)

;; modules.el --- third party modules load -*- lexical-binding: t; -*-

(setq modules-directory (concat root-directory "modules/"))

;; TODO make this more efficient load / load all subdirectories. For now, let's load manually
(add-to-list 'load-path (concat modules-directory "neotree/"))

(message "modules directory: %s" modules-directory)
(message "neotree module directory: %s" (concat modules-directory "neotree/"))

(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

(provide 'modules)


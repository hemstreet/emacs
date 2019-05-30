;; themes.el --- custom theme / ui configuring -*- lexical-binding: t; -*-

(setq theme-directory (concat root-directory "themes/"))

(add-to-list 'custom-theme-load-path theme-directory)

;; load up our currently configured theme
(load-theme 'dracula t)

(provide 'themes)

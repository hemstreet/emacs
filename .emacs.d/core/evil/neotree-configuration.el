;;; neotree-configuration.el --- evil mode keybindings for neotree -*- lexical-binding: t; -*-

; https://github.com/emacs-evil/evil-collection/blob/master/evil-collection-neotree.el

(evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "H") 'neotree-hidden-file-toggle)

(provide 'neotree-configuration)

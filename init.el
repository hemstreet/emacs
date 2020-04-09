(setq inhibit-startup-message t)

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package try
  :ensure t)

(use-package which-key
  :ensure t
  :config (which-key-mode))

;; Org-mode config
(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

;; Flexible matching for commands
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; list buffers w/ C-c C-b
(defalias 'list-buffers 'ibuffer)


;; C-c left & right to move
(winner-mode 1)
(windmove-default-keybindings)

;; Or we can use ibuffer with a new window
;; (defalias 'list-buffers 'ibuffer-other -window)

(use-package ace-window
  :ensure t
  :init
  (progn
    (global-set-key [remap other-window] 'ace-window)
  ))

;; Add Theme
(use-package gruvbox-theme
  :ensure t)

(load-theme 'gruvbox-dark-medium t)

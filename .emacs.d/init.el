(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(use-package treesit-auto
  :ensure t
  :config
  (global-treesit-auto-mode))

(use-package corfu
  :ensure t
  :custom
  (corfu-cycle t)
  (corfu-auto t)
  :init
  (global-corfu-mode))

(use-package vertico
  :ensure t
  :custom
  (vertico-resize t)
  :init
  (vertico-mode))

(use-package magit
  :ensure t)

(use-package markdown-mode
  :ensure t)

(use-package deft

  :ensure t
  :config
  (progn
    (setq deft-default-extension "md")
    (setq deft-extensions '("md"))
    (setq deft-use-filename-as-title t)
    (setq deft-use-filter-string-for-filename t)
    (setq deft-markdown-mode-title-level 1)
    ))

(use-package writegood-mode
  :ensure t)

(use-package emacs
  :custom
  (tab-always-indent 'complete))

(require 'project)

(use-package go-ts-mode
  :ensure t)

(add-hook 'go-ts-mode-hook 'eglot-ensure)

(add-hook 'text-mode-hook 'visual-line-mode)
(add-hook 'prog-mode-hook #'display-line-numbers-mode)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(set-frame-font "Iosevka Nerd Font Mono 14" nil t)

(load-theme 'modus-operandi t)

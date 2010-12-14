(add-to-list 'load-path (concat dotfiles-dir "/vendor"))
(require 'mhorbul/meta)

(require 'whitespace)

(add-to-list 'load-path (concat dotfiles-dir "/vendor/ruby-complexity"))
(add-to-list 'auto-mode-alist '("\\.sake\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Isolate\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile\\'" . ruby-mode))

(require 'linum)
;;(require 'ruby-complexity)
;; (add-hook 'ruby-mode-hook
;;   (function (lambda ()
;;            (flymake-mode)
;;            (linum-mode)
;;            (ruby-complexity-mode)
;; )))

(require 'gist)

(add-to-list 'load-path (concat dotfiles-dir "/vendor/color-theme"))
(require 'color-theme)
(color-theme-initialize)

;; Activate theme
(load (concat dotfiles-dir "mhorbul/theme.el"))
(color-theme-zenburn)

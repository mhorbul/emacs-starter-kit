;;; elisp libraries I run from source checkouts:
;; (add-to-list 'load-path "~/.emacs.d/vendor")
;; (add-to-list 'load-path "~/.emacs.d/vendor/rspec-mode")
;; (require 'rspec-mode)

;; unfortunately some codebases use tabs. =(
(set-default 'tab-width 2)
(set-default 'c-basic-offset 2)

(defun eshell/rm (&rest args)
  "Eshell's built-in rm is ridiculously slow."
  (shell-command (format "rm %s" (mapconcat 'identity args " "))))

;;; broken ido
(defun ido-directory-too-big-p (arg) nil)

;; remove trailing whitespace before saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(global-set-key "\M-g" 'goto-line)

;;ruby-electric
(add-hook 'ruby-mode-hook
          (lambda ()
            (require 'ruby-electric)
            (ruby-electric-mode t)
            ))

;; (require 'linum)
;; (global-linum-mode)
(setq whitespace-line-column 80)
(set-variable 'whitespace-style '(trailing lines-tail))
(global-whitespace-mode)


;; Put autosave files (ie #foo#) in one place, *not*
;; scattered all over the file system!
(defvar autosave-dir
  (concat "/tmp/emacs_autosaves/" (user-login-name) "/"))

(make-directory autosave-dir t)

(defun auto-save-file-name-p (filename)
  (string-match "^#.*#$" (file-name-nondirectory filename)))

(defun make-auto-save-file-name ()
  (concat autosave-dir
          (if buffer-file-name
              (concat "#" (file-name-nondirectory buffer-file-name) "#")
            (expand-file-name
             (concat "#%" (buffer-name) "#")))))


;; Put autosave files (ie #foo#) in one place, *not*
;; scattered all over the file system!
(defvar autosave-dir
  (concat "/tmp/emacs_autosaves/" (user-login-name) "/"))

(make-directory autosave-dir t)

(defun auto-save-file-name-p (filename)
  (string-match "^#.*#$" (file-name-nondirectory filename)))

(defun make-auto-save-file-name ()
  (concat autosave-dir
          (if buffer-file-name
              (concat "#" (file-name-nondirectory buffer-file-name) "#")
            (expand-file-name
             (concat "#%" (buffer-name) "#")))))


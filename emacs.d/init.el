(require 'cask "~/.cask/cask.el")
(cask-initialize)

(require 'pallet)

;; Setup some common paths for things
(setq custom-emacs-directory (expand-file-name "custom" user-emacs-directory)
      backup-emacs-directory (expand-file-name "backup" user-emacs-directory)
      cache-emacs-directory (expand-file-name "cache" user-emacs-directory))

;; Get rid of the bonus shit that happens at the start of emacs.
;; I don't want a welcome screen.
;; I don't want a startup screen.
;; I do want to start on a scratch buffer.
(setq inhibit-splash-screen t
      inhibit-startup-screen t)

;; Load some settings from my custom directory
;; Should really think about refactoring this to be a loop that autoloads my goodies.
(add-to-list 'load-path custom-emacs-directory)

(load "keymap-setup.el")
(load "common-setup.el")
(load "ac-setup.el")
(load "flyspell-setup.el")
(load "projectile-setup.el")

;; Backup customizations
;; I'd like for my backup files to live in my emacs directory so I don't have to think about it
;; I'd also like for my emacs to version my backups and the newest 5 and oldest 2 copies
;; Delete the really old ones automatically
(setq backup-directory-alist `(("." . ,backup-emacs-directory)))

(setq delete-old-versions t
      kept-new-versions 5
      kept-old-versions 2
      version-control t)

(custom-set-variables
 '(custom-safe-themes
   (quote
    ("51bea7765ddaee2aac2983fac8099ec7d62dff47b708aa3595ad29899e9e9e44" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default))))
(custom-set-faces)

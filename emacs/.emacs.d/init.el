;;;; Bradford Barr
;;;; 12/2/14

;;; Look and Feel
;; Remove the ugly toolbar, and the ugly scroll bar
(when (window-system)
  (tool-bar-mode -1)
  (scroll-bar-mode -1))
;; Kill the startup screen
(setq inhibit-startup-screen +1)
;; Fix the scrolling behavior for text based screen scrolling
(setq scroll-margin 1
      scroll-step 1
      scroll-conservatively 10000
      scroll-preserve-screen-position 1)
;; Fix the scrolling behavior for the trackpad
(setq mouse-wheel-follow-mouse t
      mouse-wheel-scroll-amount '(1 ((shift) . 1)) ; shift refers to the modifier
      mouse-wheel-progressive-speed nil)
;; Get the custom cruft out of this file
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;;; Packages
;; Setup the package repositories
(require 'package)
(package-initialize)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
;; Install my own custom packages (if they haven't been installed already)
(mapc
 (lambda (package)
   (unless (package-installed-p package)
     (package-install package)))
 '(base16-theme evil evil-tabs git-gutter))

;;; Evil Mode
;; Start up Evil mode
(evil-mode 1)
;; I rely on tabs every day.
(global-evil-tabs-mode t)

;;; Git Gutter
;; Start up the git gutter
(global-git-gutter-mode +1)

;; Color Scheme
;; Set my favorite theme base16-tomorrow
(load-theme 'base16-tomorrow)
;; Default elscreen tabs are hideous
(custom-theme-set-faces 'base16-tomorrow
 '(elscreen-tab-background-face ((t (:background "#282a2e"))))
 '(elscreen-tab-control-face ((t (:background "#282a2e" :foreground "#b4b7b4"))))
 '(elscreen-tab-current-screen-face ((t (:background "#e0e0e0" :foreground "#282a2e"))))
 '(elscreen-tab-other-screen-face ((t (:background "#282a2e" :foreground "#b4b7b4" :underline nil)))))

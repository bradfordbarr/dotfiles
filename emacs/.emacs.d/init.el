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
 '(base16-theme evil evil-tabs git-gutter nyan-mode))

;;; Evil Mode
;; Start up Evil mode
(evil-mode t)
;; I rely on tabs every day.
(global-evil-tabs-mode t)

;;; Nyan Mode
;; Start up Nyan mode
(nyan-mode t)

;;; Git Gutter
;; Start up the git gutter
(global-git-gutter-mode t)

;; Color Scheme
;; Set my favorite theme base16-tomorrow
(load-theme 'base16-tomorrow)
;; Setup custom colors
(let ((base00 "#1d1f21")  ; black
      (base01 "#282a2e")  ; (background)
      (base02 "#373b41")  ; unused
      (base03 "#969896")  ; (current-line)
      (base04 "#b4b7b4")  ; (selection, comment)
      (base05 "#c5c8c6")  ; unused
      (base06 "#e0e0e0")  ; (foreground, cursor)
      (base07 "#ffffff")  ; white
      (base08 "#cc6666")  ; red
      (base09 "#de935f")  ; orange
      (base0A "#f0c674")  ; yellow
      (base0B "#b5bd68")  ; green
      (base0C "#8abeb7")  ; aqua
      (base0D "#81a2be")  ; blue
      (base0E "#b294bb")  ; purple
      (base0F "#a3685a")) ; brown
  ;; Default elscreen tabs are hideous
  (custom-theme-set-faces 'base16-tomorrow
			  `(elscreen-tab-background-face ((t (:background ,base01))))
			  `(elscreen-tab-control-face ((t (:background ,base01 :foreground ,base04))))
			  `(elscreen-tab-current-screen-face ((t (:background ,base06 :foreground ,base01))))
			  `(elscreen-tab-other-screen-face ((t (:background ,base01 :foreground ,base04 :underline nil)))))
  ;; Git gutter colors don't match base16 tomorrow
  (custom-theme-set-faces 'base16-tomorrow
			  `(git-gutter:modified ((t (:background ,base01 :foreground ,base0E))))
			  `(git-gutter:added ((t (:foreground ,base0B))))
			  `(git-gutter:deleted ((t (:foreground ,base08)))))
  ;; Get my current line color to be nicer
  (custom-theme-set-faces 'base16-tomorrow
			  `(hl-line ((t (:background ,base02))))))

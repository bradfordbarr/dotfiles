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
			  `(hl-line ((t (:background ,base02)))))

  ;; Get better color themeing for auto-complete
  (custom-theme-set-faces 'base16-tomorrow
			  `(ac-candidate-face ((t (:background ,base04 :foreground ,base01))))
			  `(ac-candidate-mouse-face ((t (:background ,base0C :foreground ,base04 :bold nil)))))

  ;; Pop-up-tips don't match anything either.
  (custom-theme-set-faces 'base16-tomorrow
			  `(popup-tip-face ((t (:background ,base05 :foreground ,base01))))
			  `(popup-scroll-bar-background-face ((t (:background ,base03))))
			  `(popup-scroll-bar-foreground-face ((t (:background ,base01))))))
(setq ispell-program-name "aspell")
(add-to-list 'exec-path "/opt/boxen/homebrew/bin/")

(setq tab-width 4
      indent-tabs-mode t)

(prelude-require-packages '(solarized-theme))

(load-theme 'solarized-dark t)

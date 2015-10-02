;; Helper function to load config files
(defun load-config (file)
  (load-file (expand-file-name file "~/.emacs.d/config")))

;; Generic 
(mapc 'load-config '("bootstrap.el"
                     "general.el"
                     "theme.el"
                     "keys.el"
                     "evil.el"
                     "ac.el"
		     "elscreen.el"
		     "smex.el"
		     "ag.el"))

(when (window-system)
  (message "Loading window stuff")
  (mapc 'load-config '("window.el"
                       "scroll.el"))
  (nyan-mode t))

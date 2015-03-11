;; Get the custom cruft out of this file
(setq custom-file "~/.emacs.d/config/custom.el")
(load custom-file)

;; Place Autosave and Backup files in a single folder under the temp directory
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Kill the startup screen
(setq inhibit-startup-screen +1)

;; Set up the dictionary properly
(setq ispell-program-name "/usr/local/bin/aspell")

;; Start up the git gutter
(global-git-gutter-mode t)

;; Start global projectile mode
(projectile-global-mode)

;; Get rid of newline at end of file
(setq require-final-newline nil)
(setq mode-require-final-newline nil)
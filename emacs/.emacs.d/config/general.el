;; Disable some prompts
(defalias 'yes-or-no-p 'y-or-n-p)
(setq confirm-nonexistent-file-or-buffer nil)
(setq ido-create-new-buffer 'always)
(setq vc-follow-symlinks t)

;; Make sure we finish drawing before handling input (should speed things up)
(setq redisplay-dont-pause t)

;; Get the custom cruft out of this file
(setq custom-file "~/.emacs.d/config/custom.el")
(load custom-file)

;; Place Autosave and Backup files in a single folder under the temp directory
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Kill the startup screen
(setq inhibit-startup-screen t
      inhibit-startup-echo-area-message t)

;; Set up the dictionary properly
(setq ispell-program-name "/usr/local/bin/aspell")

;; Start up the git gutter
(global-git-gutter-mode t)

;; Start global projectile mode
(projectile-global-mode)

;; Get rid of newline at end of file
(setq require-final-newline nil)
(setq mode-require-final-newline nil)

;; Deal with stupid parameter indentation
(defun my-indent-setup ()
  (c-set-offset 'arglist-intro '+)
  (c-set-offset 'arglist-close 0))
(add-hook 'js-mode-hook 'my-indent-setup)

;; Forth mode
(autoload 'forth-mode "gforth.el")
(autoload 'forth-block-mode "gforth.el")
(add-to-list 'auto-mode-alist '("\\.fs$" . forth-mode))
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories
	     "~/.emacs.d/.cask/24.3.50.1/elpa/auto-complete-20130724.1750/dict")
(ac-config-default)
(setq ac-ignore-case nil)
(add-to-list 'ac-modes 'enh-ruby-mode)
(add-to-list 'ac-modes 'web-mode)

(let ((ac-cache-directory (expand-file-name "autocomplete" cache-emacs-directory)))
  (unless (file-directory-p ac-cache-directory)
    (make-directory ac-cache-directory))
  (setq ac-comphist-file (expand-file-name "ac-comphist.dat" ac-cache-directory)))

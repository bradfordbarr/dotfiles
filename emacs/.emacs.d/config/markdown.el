;; Make sure that .md files are setup with gfm-mode instead of markdown-mode
(add-to-list 'auto-mode-alist '("\\.md\\'" . gfm-mode))

;; Start up flyspell-mode for markdown files
(add-hook 'gfm-mode-hook
	  (lambda ()
	    (flyspell-mode t)))
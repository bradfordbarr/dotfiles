;; Swap the meta and super keys for my mac
(when (eq system-type 'darwin)
  (setq mac-option-modifier 'super)
  (setq mac-command-modifier 'meta))

(global-set-key (kbd "C-o") 'other-window)
(global-set-key (kbd "M-s") 'save-some-buffers)
(global-set-key (kbd "C-+") '(lambda () (interactive) (text-scale-adjust 1)))
(global-set-key (kbd "C--") '(lambda () (interactive) (text-scale-adjust -1)))
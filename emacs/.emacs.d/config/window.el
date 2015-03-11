;; Remove the ugly toolbar, and the ugly scroll bar
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; I don't need my system to announce what file I'm on. I got that in my tabs
(setq frame-title-format nil)

;; Make the screen big when working on my mac!
(when (eq system-type 'darwin)
  (add-to-list 'default-frame-alist '(left . 0))
  (add-to-list 'default-frame-alist '(top . 0))
  (add-to-list 'default-frame-alist '(height . 50))
  (add-to-list 'default-frame-alist '(width . 200))
  (exec-path-from-shell-initialize))
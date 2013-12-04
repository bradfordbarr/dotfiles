(projectile-global-mode)
(setq projectile-enable-caching t)
(setq projectile-completion-system 'default)

(let ((projectile-cache-directory (expand-file-name "projectile" cache-emacs-directory)))
  (unless (file-directory-p projectile-cache-directory)
    (make-directory projectile-cache-directory))
  (setq projectile-cache-file (expand-file-name "projectile.cache" projectile-cache-directory)
	projectile-known-projects-file (expand-file-name "projectile-bookmarks.eld" projectile-cache-directory)))

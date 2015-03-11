;; Start up Evil mode
(evil-mode t)

;; I rely on tabs every day.
(global-evil-tabs-mode t)

;; Leader for shortcuts
(global-evil-leader-mode t)
(setq evil-leader/leader "SPC")
(evil-leader/set-key
  "f" 'projectile-find-file
  "s" 'projectile-switch-project
  "a" 'projectile-ag)
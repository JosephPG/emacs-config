(use-package ivy
  :straight t
  :ensure t
  :init
  (ivy-mode)
  :config
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d/%d) ")

  ;;(global-set-key (kbd "M-x") 'counsel-M-x)
  (global-set-key (kbd "M-m b") 'ivy-switch-buffer)
  (global-set-key (kbd "M-m s") 'swiper)
  (global-set-key (kbd "M-m r") 'counsel-recentf)
  (global-set-key (kbd "M-m w") 'counsel-yank-pop)    ;; History of clipboard
  (global-set-key (kbd "M-m x") 'counsel-git-grep))   ;; Search in all files in project

(use-package counsel
  :straight t
  :after (ivy)
  :ensure t)

(use-package swiper
  :straight t
  :after (ivy)
  :ensure t)

(use-package projectile
  :straight t
  :ensure t
  :init
  (projectile-mode +1)
  :config
  (global-set-key (kbd "M-m f") 'projectile-find-file)
  (global-set-key (kbd "M-m d") 'projectile-find-file-other-window))


(provide 'core_conf)

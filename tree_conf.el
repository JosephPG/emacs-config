(use-package treemacs
  :straight t
  :ensure t
  :defer t
  :init
  (with-eval-after-load 'winum
    (define-key winum-keymap (kbd "M-0") 'treemacs-select-window))
  
  :config
  (treemacs-follow-mode -1)

  (use-package treemacs-all-the-icons
    :straight t
    :after (treemacs all-the-icons)
    :ensure t)

  (custom-set-faces
   '(treemacs-all-the-icons-root-face ((t (:foreground "#a3a3a3"))))
   '(treemacs-all-the-icons-file-face ((t (:foreground "#a3a3a3"))))
   '(treemacs-directory-face          ((t (:foreground "#a3a3a3"))))
   '(treemacs-root-face               ((t (:foreground "#a3a3a3"))))
   '(treemacs-file-face               ((t (:foreground "#a3a3a3"))))
   '(treemacs-git-modified-face       ((t (:foreground "#009d8d")))))

  (treemacs-load-theme "all-the-icons"))


(provide 'tree_conf)

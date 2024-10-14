;;; Master key completetion
(use-package which-key
  :straight t
  :ensure t
  :config
  (which-key-mode))

;;; Modeline
(use-package doom-modeline
  :straight t
  :ensure t
  :init
  (doom-modeline-mode 1))


(provide 'modeline_conf)

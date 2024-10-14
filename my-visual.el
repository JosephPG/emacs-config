;;; Disabled visual default
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

;;; Line numbers
(setq column-number-mode t)

;;; Scroll style
(use-package good-scroll
  :straight t
  :ensure t
  :config
  (good-scroll-mode 1))

;;; Theme
(use-package atom-one-dark-theme
  :straight t
  :ensure t
  :config
  (load-theme 'atom-one-dark t))

;;; Icons base
(use-package all-the-icons
  :straight t
  :ensure t) ;; IMPORTANT: After install all-the-icons -> M-x RET all-the-icons-install-fonts

(set-face-attribute 'default nil
                    :family "Iosevka"
                    :height 103
                    :weight 'normal
                    :width 'normal)

(provide 'my-visual)

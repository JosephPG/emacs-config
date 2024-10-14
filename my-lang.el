;;; Parent symbol highlight
(show-paren-mode)

;;; Compress function to hide and show
(global-set-key (kbd "M-b h h") 'hs-hide-block)
(global-set-key (kbd "M-b h s") 'hs-show-block)
(global-set-key (kbd "M-b h t") 'hs-toggle-hiding)
(global-set-key (kbd "M-b h a") 'hs-hide-all)
(global-set-key (kbd "M-b h s") 'hs-hide-level)

;;; Complete ( ' " ...
(use-package autopair
  :straight t
  :ensure t
  :config
  (autopair-global-mode))


(provide 'my-lang)

(use-package typescript-mode
  :straight t
  :ensure t)

(require 'typescript-mode)

(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-mode))

(provide 'my-typescript)
